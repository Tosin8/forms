import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/constants_foody.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ShaderMask(
            shaderCallback: (rect) => const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [Colors.black, Colors.transparent]).createShader(rect),
            blendMode: BlendMode.darken,
            child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/login.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black54, BlendMode.darken))))),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: kWhite,
                  )),
              title: const Text(
                'Forgot Password',
                style: kBodyText,
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(children: [
                Center(
                    child: SizedBox(
                  width: size.width * 0.8,
                  child: const Text(
                    'Enter your email to receive reset password instructions',
                    style: kBodyText,
                  ),
                )),
                const SizedBox(height: 20),
                Container(
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
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16), color: kBlue),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Send me Password',
                          style:
                              kBodyText.copyWith(fontWeight: FontWeight.bold))),
                ),
              ]),
            )),
      ],
    );
  }
}
