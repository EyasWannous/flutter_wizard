import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wizard/bloc/profile_wizard_bloc.dart';

import 'profile_wizard_flow.dart';

class ProfileWizard extends StatelessWidget {
  const ProfileWizard({super.key});

  static Route<Profile> route() {
    return MaterialPageRoute(builder: (_) => const ProfileWizard());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileWizardBloc(),
      child: ProfileWizardFlow(
        onComplete: (profile) => Navigator.of(context).pop(profile),
      ),
    );
  }
}
