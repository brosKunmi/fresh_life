import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/market/views/pages/store_prods_page.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';

class StoreTile extends StatelessWidget {
  const StoreTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const StoreProdsPage(),
          ),
        );
      },
      child: SizedBox(
        width: SizeConfig.width(context) * 0.7,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: kBRadius,
              child: Image.asset(
                'shop3'.png,
                width: SizeConfig.width(context) * 0.7,
                fit: BoxFit.cover,
                height: SizeConfig.height(context) * 0.2,
              ),
            ),
            const SizedBox(height: kHalfSpace),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Eleyele Store",
                  style: AppConfig.boldTitle().copyWith(fontSize: 14),
                ),
                FaIcon(
                  FontAwesomeIcons.solidHeart,
                  size: 16,
                  color: AppConfig.secColor,
                ),
              ],
            ),
            const SizedBox(height: kHalfSpace / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "20-25 mins",
                  style: AppConfig.hint(),
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidStar,
                      size: 14,
                      color: AppConfig.secColor,
                    ),
                    Text(
                      "4.3 (1000)",
                      style: AppConfig.hint(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
