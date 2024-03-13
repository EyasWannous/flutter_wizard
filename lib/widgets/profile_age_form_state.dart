import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wizard/bloc/profile_wizard_bloc.dart';
import 'package:flutter_wizard/widgets/profile_age_form.dart';

class ProfileAgeFormState extends State<ProfileAgeForm> {
  int? _age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Age')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (value) => setState(() => _age = int.parse(value)),
                decoration: const InputDecoration(
                  labelText: 'Age',
                  hintText: '42',
                ),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: _age != null
                    ? () => context
                        .read<ProfileWizardBloc>()
                        .add(ProfileWizardAgeSubmitted(_age))
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
