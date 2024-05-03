import 'package:flutter/material.dart';

import '../constants/colors.dart';

class HeroMobile extends StatelessWidget {
  const HeroMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    return Container(
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 550),
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: <Color>[
                  SrpColors.scaffoldBg.withOpacity(0.2),
                  SrpColors.scaffoldBg.withOpacity(0.2),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/srp.png",
              width: screenWidth,
              height: 300,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Hi, I am Shafiqur Rahman. \nA Full Stack Developer."
            "\nI am a passionate developer "
            "\nwho loves to code and solve problems. ",
            style: TextStyle(
              fontSize: 20,
              height: 1.5,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: screenWidth - 60,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: SrpColors.yellowSecondary,
              ),
              onPressed: () {},
              child: const Text(
                "Contact",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
