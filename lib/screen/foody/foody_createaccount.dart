import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/foody/constants_foody.dart';
import 'foody_login.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
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
                        image: AssetImage('assets/images/register.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black54, BlendMode.darken))))),
        Column(children: [
          SizedBox(height: size.width * 0.1),
          Stack(children: [
            Center(
              child: ClipOval(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                  child: CircleAvatar(
                      radius: size.width * 0.14,
                      backgroundColor: Colors.grey[400]?.withOpacity(0.5),
                      child: Icon(
                        FontAwesomeIcons.user,
                        color: kWhite,
                        size: size.width * 0.1,
                      )),
                ),
              ),
            ),
            Positioned(
              top: size.width * 0.08,
              left: size.width * .56,
              child: Container(
                width: size.width * 0.12,
                height: size.width * 0.12,
                decoration: BoxDecoration(
                    border: Border.all(color: kWhite, width: 2),
                    shape: BoxShape.circle),
                child: const Icon(FontAwesomeIcons.arrowUp),
              ),
            ),
          ]),
          SizedBox(height: size.width * 0.1),
          Column(
            children: [
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
                            FontAwesomeIcons.user,
                            size: 30,
                            color: kWhite,
                          ),
                        ),
                        labelText: 'User',
                        hintStyle: kBodyText,
                      ),
                      style: kBodyText,
                      keyboardType: TextInputType.name,
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
                            FontAwesomeIcons.envelope,
                            size: 30,
                            color: kWhite,
                          ),
                        ),
                        labelText: 'Email',
                        hintStyle: kBodyText,
                      ),
                      obscureText: true,
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
                      style: kBodyText,
                      keyboardType: TextInputType.name,
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
                        labelText: 'Confirm Password',
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
              Container(
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16), color: kBlue),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Register'),
                ),
              ),
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text('Already have an account?', style: kBodyText),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const foody_login()));
                  },
                  child: Text(
                    'Login',
                    style: kBodyText.copyWith(color: kBlue),
                  ),
                )
              ]),
              const SizedBox(height: 20),
            ],
          )
        ]),
      ],
    );
  }
}
