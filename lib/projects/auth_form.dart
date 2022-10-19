import 'package:flutter/material.dart';

import '../screen/auth_form/aut_screen_form.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: const AuthScreen(),
    );
  }
}
