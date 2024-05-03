import 'dart:js' as js;

import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/size.dart';
import '../widgets/contact_section.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/footer_section.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/hero_desktop.dart';
import '../widgets/hero_mobile.dart';
import '../widgets/projects_section.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController scrollCtl = ScrollController();
  final List<GlobalKey> navKeys = List.generate(4, (index) => GlobalKey());
  final TextEditingController nameCtl = TextEditingController();
  final TextEditingController emailCtl = TextEditingController();
  final TextEditingController messageCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    return LayoutBuilder(builder: (context, constrains) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: SrpColors.scaffoldBg,
        endDrawer: constrains.maxWidth > srpMinDesktopWidth
            ? null
            : DrawerMobile(
                onNavTap: (int navIndex) {
                  scrollToSection(navIndex);
                },
              ),
        body: SingleChildScrollView(
          controller: scrollCtl,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navKeys.first),
              navBarSection(constrains),
              if (constrains.maxWidth > srpMinDesktopWidth)
                const HeroDesktop()
              else
                const HeroMobile(),
              skillsSection(screenWidth, constrains, navKeys),
              const SizedBox(height: 50),
              ProjectsSection(key: navKeys[2]),
              const SizedBox(height: 50),
              ContactSection(
                key: navKeys[3],
                nameCtl: nameCtl,
                emailCtl: emailCtl,
                messageCtl: messageCtl,
              ),
              const FooterSection()
            ],
          ),
        ),
      );
    });
  }

  Container skillsSection(
    double screenWidth,
    BoxConstraints constrains,
    List<GlobalKey> navKeys,
  ) {
    return Container(
      key: navKeys[1],
      width: screenWidth,
      color: SrpColors.bgLightOne,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// Skills Title
          const Text(
            "What I Do",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: SrpColors.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          if (constrains.maxWidth > srpMedDesktopWidth)
            const SkillsDesktop()
          else
            const SkillsMobile(),
        ],
      ),
    );
  }

  Widget navBarSection(BoxConstraints constrains) {
    if (constrains.maxWidth > srpMinDesktopWidth) {
      return HeaderDesktop(onNavMenuTap: (int navIndex) {
        scrollToSection(navIndex);
      });
    } else {
      return HeaderMobile(
        onLogoTap: () {},
        onMenuTap: () {
          scaffoldKey.currentState!.openEndDrawer();
        },
      );
    }
  }

  void scrollToSection(int index) {
    if (index == 4) {
      js.context.callMethod('open', ['https://github.com/srpallab']);
      return;
    }
    final GlobalKey<State<StatefulWidget>> key = navKeys[index];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
