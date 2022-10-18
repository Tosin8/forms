import 'package:flutter/material.dart';

class foody_login extends StatefulWidget {
  const foody_login({super.key});

  @override
  State<foody_login> createState() => _foody_loginState();
}

class _foody_loginState extends State<foody_login> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          ),
        ),
      )
    ]);
  }
}
