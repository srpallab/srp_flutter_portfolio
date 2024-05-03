import 'package:flutter/material.dart';
import 'package:srp_portfolio/constants/size.dart';

import '../constants/colors.dart';
import '../generated/assets.dart';
import 'srp_text_field.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
    required this.nameCtl,
    required this.emailCtl,
    required this.messageCtl,
  });

  final TextEditingController nameCtl;
  final TextEditingController emailCtl;
  final TextEditingController messageCtl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: SrpColors.bgLightOne,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// Contact Title
          const Text(
            "Get In Touch",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: SrpColors.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),

          /// Contact Form
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 850),
            child: LayoutBuilder(builder: (context, constrains) {
              if (constrains.maxWidth > srpMinDesktopWidth) {
                return buildRowForDesktop();
              } else {
                return buildColumnForMobile();
              }
            }),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 850),
            child: SrpTextField(
              controller: messageCtl,
              hintText: "Your Message",
              maxLine: 16,
            ),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 850),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: SrpColors.yellowPrimary,
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 30,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Send Message",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(color: SrpColors.whitePrimary),
          ),
          Wrap(
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(Assets.assetsGit, width: 30),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(Assets.assetsAndroid, width: 30),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(Assets.assetsAndroid, width: 30),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(Assets.assetsAndroid, width: 30),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(Assets.assetsAndroid, width: 30),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(Assets.assetsAndroid, width: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildRowForDesktop() {
    return Row(
      children: [
        Flexible(
          child: SrpTextField(
            controller: nameCtl,
            hintText: "Your Full Name",
          ),
        ),
        const SizedBox(width: 20),
        Flexible(
          child: SrpTextField(
            controller: emailCtl,
            hintText: "Your Email",
          ),
        ),
      ],
    );
  }

  Column buildColumnForMobile() {
    return Column(
      children: [
        SrpTextField(controller: nameCtl, hintText: "Your Full Name"),
        const SizedBox(height: 20),
        SrpTextField(controller: emailCtl, hintText: "Your Email"),
      ],
    );
  }
}
