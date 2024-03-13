// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wizard/bloc/profile_wizard_bloc.dart';
import 'package:flutter_wizard/widgets/profile_name_form.dart';

class ProfileNameFormState extends State<ProfileNameForm> {
  var _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Name')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (value) => setState(() => _name = value),
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'John Doe',
                ),
              ),
              ElevatedButton(
                onPressed: _name.isNotEmpty
                    ? () => context
                        .read<ProfileWizardBloc>()
                        .add(ProfileWizardNameSubmitted(_name))
                    : null,
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
