import 'package:flutter/material.dart';

import '../screen/auth_form/aut_screen_form.dart';

class FormPage1 extends StatelessWidget {
  const FormPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthScreen(),
    );
  }
}
