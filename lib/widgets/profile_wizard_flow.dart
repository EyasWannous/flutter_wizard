// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wizard/bloc/profile_wizard_bloc.dart';

import 'profile_age_form.dart';
import 'profile_name_form.dart';

class ProfileWizardFlow extends StatelessWidget {
  const ProfileWizardFlow({
    Key? key,
    required this.onComplete,
  }) : super(key: key);

  final ValueSetter<Profile> onComplete;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileWizardBloc, ProfileWizardState>(
      listenWhen: (_, state) => state.profile.isComplete,
      listener: (context, state) => onComplete(state.profile),
      child: FlowBuilder<ProfileWizardState>(
        state: context.watch<ProfileWizardBloc>().state,
        onGeneratePages: (state, pages) {
          return [
            ProfileNameForm.page(),
            if (state.profile.name != null) ProfileAgeForm.page(),
          ];
        },
      ),
    );
  }
}

extension on Profile {
  bool get isComplete => name != null && age != null;
}
