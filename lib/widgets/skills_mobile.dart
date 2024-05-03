import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';
import 'skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 500),
      child: Column(
        children: [
          for (int i = 0; i < platformItems.length; i++)
            Container(
              width: screenWidth,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: SrpColors.bgLightTwo,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                leading: Image.asset(
                  platformItems[i]["img"],
                  width: 50,
                  height: 50,
                ),
                title: Text(platformItems[i]["title"]),
              ),
            ),
          const SizedBox(height: 20),
          const SkillItems(),
        ],
      ),
    );
  }
}
