import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillItems extends StatelessWidget {
  const SkillItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        for (int i = 0; i < skillItems.length; i++)
          Chip(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            backgroundColor: SrpColors.bgLightTwo,
            label: Text(skillItems[i]['title']),
            avatar: Image.asset(skillItems[i]['img']),
          ),
      ],
    );
  }
}
