import 'dart:js' as js;

import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../generated/assets.dart';
import '../utils/project_utils.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.projectUtils});
  final ProjectUtils projectUtils;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 300,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: SrpColors.bgLightTwo,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            projectUtils.image,
            height: 140,
            width: 300,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              projectUtils.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: SrpColors.whitePrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              projectUtils.subTitle,
              style: const TextStyle(
                fontSize: 10,
                color: SrpColors.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          Container(
            color: SrpColors.bgLightOne,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  "Available on: ",
                  style:
                      TextStyle(color: SrpColors.yellowSecondary, fontSize: 10),
                ),
                const Spacer(),
                if (projectUtils.iosLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod('open', [projectUtils.iosLink]);
                      },
                      child: Image.asset(
                        Assets.assetsApple,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                if (projectUtils.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context
                            .callMethod('open', [projectUtils.androidLink]);
                      },
                      child: Image.asset(
                        Assets.assetsAndroid,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                if (projectUtils.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod('open', [projectUtils.webLink]);
                      },
                      child: Image.asset(
                        Assets.assetsWeb,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
