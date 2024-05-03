import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavTap});
  final Function(int) onNavTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: SrpColors.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: SrpColors.whitePrimary,
              ),
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
              onTap: () {
                onNavTap(i);
                Navigator.of(context).pop();
              },
            ),
        ],
      ),
    );
  }
}
