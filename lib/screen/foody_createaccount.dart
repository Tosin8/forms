import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/constants.dart';

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
              child: CircleAvatar(
                  radius: size.width * 0.14,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  child: Icon(
                    FontAwesomeIcons.user,
                    color: kWhite,
                    size: size.width * 0.1,
                  )),
            ),
            Container(
              width: size.width * 0.12,
              height: size.width * 0.12,
              decoration: BoxDecoration(
                  border: Border.all(color: kWhite, width: 1),
                  shape: BoxShape.circle),
            ),
          ]),
          SizedBox(height: size.width * 0.1),
        ]),
      ],
    );
  }
}
