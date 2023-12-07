import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/user/views/widgets/profile_boxes.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            padding: kPadding,
            color: AppConfig.appGrey,
            child: SafeArea(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: SizeConfig.width(context) / 8,
                    backgroundImage: AssetImage("man5".png),
                  ),
                  const SizedBox(height: kHalfSpace),
                  Text(
                    "Godwin Bada",
                    style: AppConfig.boldTitle().copyWith(fontSize: 18),
                  ),
                  const SizedBox(height: kHalfSpace / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.personBooth,
                        size: 12,
                        color: AppConfig.primaryColor,
                      ),
                      const SizedBox(width: kHalfSpace),
                      Text(
                        "Software Engineer",
                        style: AppConfig.sub().copyWith(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: kSpacing),
          ProfBox(
            profTitle: "ACCOUNT",
            children: [
              ProfRow(
                icon: FontAwesomeIcons.user,
                text: "Personal Information",
                onTap: () {},
                isLast: false,
              ),
              ProfRow(
                icon: FontAwesomeIcons.userShield,
                text: "Subcriptions",
                onTap: () {},
                isLast: false,
              ),
              ProfRow(
                icon: FontAwesomeIcons.heart,
                text: "Likes and Bookmarks",
                onTap: () {},
                isLast: true,
              ),
            ],
          ),
          ProfBox(
            profTitle: "TRANSACTIONS",
            children: [
              ProfRow(
                icon: FontAwesomeIcons.wallet,
                text: "Wallet",
                onTap: () {},
                isLast: false,
              ),
              ProfRow(
                icon: FontAwesomeIcons.gift,
                text: "Redeem Gift Cards",
                onTap: () {},
                isLast: false,
              ),
              ProfRow(
                icon: FontAwesomeIcons.users,
                text: "Refer a Friend",
                onTap: () {},
                isLast: true,
              ),
            ],
          ),
          ProfBox(
            profTitle: "SUPPORT & LEGAL",
            children: [
              ProfRow(
                icon: FontAwesomeIcons.question,
                text: "FAQs",
                onTap: () {},
                isLast: false,
              ),
              ProfRow(
                icon: FontAwesomeIcons.phoneFlip,
                text: "Contact Us",
                onTap: () {},
                isLast: false,
              ),
              ProfRow(
                icon: FontAwesomeIcons.file,
                text: "Terms & Conditions",
                onTap: () {},
                isLast: false,
              ),
              ProfRow(
                icon: FontAwesomeIcons.fileContract,
                text: "Privacy Policy",
                onTap: () {},
                isLast: true,
              ),
            ],
          ),
          ProfBox(
            profTitle: "",
            children: [
              ProfRow(
                icon: FontAwesomeIcons.userXmark,
                text: "SIGN OUT",
                onTap: () {},
                color: Colors.redAccent,
                isLast: true,
              ),
            ],
          ),
          const SizedBox(height: kHalfSpace),
        ],
      ),
    );
  }
}
