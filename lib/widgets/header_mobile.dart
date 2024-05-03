import 'package:flutter/material.dart';
import 'package:srp_portfolio/widgets/site_logo.dart';

import '../constants/styles.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
    required this.onLogoTap,
    required this.onMenuTap,
  });
  final VoidCallback onLogoTap;
  final VoidCallback onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: srpHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: onLogoTap),
          const Spacer(),
          IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu)),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
