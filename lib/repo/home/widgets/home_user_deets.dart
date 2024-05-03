import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
// import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';

class HomeUserDeets extends StatelessWidget {
  const HomeUserDeets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding.copyWith(top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: AppConfig.lightPrimary,
                radius: 16,
                backgroundImage: AssetImage('man5'.png),
              ),
              const SizedBox(width: kHalfSpace),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Godwin!',
                    style: AppConfig.boldTitle().copyWith(fontSize: 16),
                  ),
                  const SizedBox(height: kHalfSpace / 2),
                  Text(
                    'How may we serve you today?',
                    style: AppConfig.sub().copyWith(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          // const SizedBox(height: kSpacing),
          // Row(
          //   children: [
          //     FaIcon(
          //       FontAwesomeIcons.locationPinLock,
          //       size: 14,
          //       color: AppConfig.primaryColor,
          //     ),
          //     const SizedBox(width: kHalfSpace),
          //     Text(
          //       "12, Oluwo Nla, Basorun",
          //       style: AppConfig.sub().copyWith(fontSize: 12),
          //     ),
          //     const SizedBox(width: kHalfSpace / 2),
          //     FaIcon(
          //       FontAwesomeIcons.chevronDown,
          //       size: 12,
          //       color: AppConfig.secBlack,
          //     ),
          //   ],
          // ),
          // SizedBox(height: SizeConfig.gap(4, context)),
        ],
      ),
    );
  }
}
