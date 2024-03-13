import 'package:flutter/material.dart';
import 'package:flutter_wizard/widgets/profile_age_form_state.dart';

class ProfileAgeForm extends StatefulWidget {
  const ProfileAgeForm({super.key});

  static Page<void> page() => const MaterialPage<void>(child: ProfileAgeForm());

  @override
  State<ProfileAgeForm> createState() => ProfileAgeFormState();
}
