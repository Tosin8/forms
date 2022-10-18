// ignore_for_file: import_of_legacy_library_into_null_safe

import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:flutter/material.dart';

import '../widgets/constants.dart';

class foody_login extends StatefulWidget {
  const foody_login({super.key});

  @override
  State<foody_login> createState() => _foody_loginState();
}

// ignore: camel_case_types
class _foody_loginState extends State<foody_login> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ShaderMask(
        shaderCallback: (rect) => const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.center,
          colors: [Colors.black, Colors.transparent],
        ).createShader(rect),
        blendMode: BlendMode.darken,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/login.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            ),
          ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Column(children: [
          const Flexible(
            child: Center(
              child: Text('Foodybite',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 70,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[500]?.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Icon(
                          FontAwesomeIcons.envelope,
                          size: 30,
                          color: kWhite,
                        ),
                      ),
                      labelText: 'Email Address',
                      hintStyle: kBodyText,
                    ),
                    style: kBodyText,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 70,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[500]?.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Icon(
                          FontAwesomeIcons.lock,
                          size: 30,
                          color: kWhite,
                        ),
                      ),
                      labelText: 'Password',
                      hintStyle: kBodyText,
                    ),
                    obscureText: true,
                    style: kBodyText,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ),
            ),
            const Text('Forgot Password', style: kBodyText),
            const SizedBox(height: 70),
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kBlue,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(' Login ',
                    style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      border:
                          Border(bottom: BorderSide(width: 1, color: kWhite))),
                  child: const Text('Create New Account', style: kBodyText),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ]),
        ]),
      )
    ]);
  }
}
