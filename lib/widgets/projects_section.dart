import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/project_utils.dart';
import 'project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          /// Work Projects Title
          const Text(
            "My Professional Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: SrpColors.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),

          /// Work Projects Cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 950),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (final professionalUtils in professionalProjectsUtils)
                  ProjectCard(projectUtils: professionalUtils),
              ],
            ),
          ),
          const SizedBox(height: 50),

          /// Hobby Projects Title
          const Text(
            "My Hobby Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: SrpColors.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),

          /// Hobby Projects Cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 950),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (final professionalUtils in professionalProjectsUtils)
                  ProjectCard(projectUtils: professionalUtils),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
