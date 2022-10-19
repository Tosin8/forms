import 'package:flutter/material.dart';

import '../../widgets/auth_form/bkg_painter.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:  [
          SizedBox.expand(
            child: CustomPaint(
              painter: BackgroundPainter(),
            ),
          )
        ],
      ),
    );
  }
}
