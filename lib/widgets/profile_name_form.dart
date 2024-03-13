import 'package:flutter/material.dart';
import 'package:flutter_wizard/widgets/profile_name_form_state.dart';

class ProfileNameForm extends StatefulWidget {
  const ProfileNameForm({super.key});

  static Page<void> page() {
    return const MaterialPage<void>(child: ProfileNameForm());
  }

  @override
  State<ProfileNameForm> createState() => ProfileNameFormState();
}
