import 'package:flutter/material.dart';
import 'package:srp_portfolio/widgets/skill_items.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [platformSection(), const SizedBox(width: 50), skillsSection()],
    );
  }

  ConstrainedBox platformSection() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450),
      child: Wrap(
        spacing: 5,
        runSpacing: 5,
        children: [
          for (int i = 0; i < platformItems.length; i++)
            Container(
              width: 200,
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
        ],
      ),
    );
  }

  ConstrainedBox skillsSection() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 650),
      child: const SkillItems(),
    );
  }
}
