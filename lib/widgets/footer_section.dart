import 'package:flutter/material.dart';

import '../constants/colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: const Wrap(
        children: [
          Text(
            "Designed & Built by Shafiqur Rahman",
            style: TextStyle(
              color: SrpColors.whitePrimary,
              fontSize: 16,
            ),
          ),
          SizedBox(width: 10),
          Text(
            "© 2024",
            style: TextStyle(
              color: SrpColors.whitePrimary,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
