import 'package:flutter/material.dart';

import 'widgets/profile_wizard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(home: Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Builder(
          builder: (context) {
            return ElevatedButton(
              onPressed: () async {
                final profile = await Navigator.of(context).push(
                  ProfileWizard.route(),
                );
                if (!context.mounted) return;
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text('$profile')));
              },
              child: const Text('Start Profile Wizard'),
            );
          },
        ),
      ),
    );
  }
}
