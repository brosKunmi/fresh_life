import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/market/views/widgets/product_tile.dart';
import 'package:fresh_life/repo/market/views/widgets/store_deets_widgets.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';

class StoreProdsPage extends StatelessWidget {
  const StoreProdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StoreImageStack(),
            Padding(
              padding: kPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Eleyele Store",
                            style: AppConfig.boldTitle().copyWith(fontSize: 18),
                          ),
                          const SizedBox(width: 12),
                          FaIcon(
                            FontAwesomeIcons.circleInfo,
                            color: AppConfig.primaryColor,
                            size: 16,
                          ),
                        ],
                      ),
                      FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: AppConfig.secColor,
                        size: 20,
                      ),
                    ],
                  ),
                  const SizedBox(height: kSpacing),
                  Text(
                    "We are the best for your everyday needs",
                    style: AppConfig.sub().copyWith(fontSize: 12),
                  ),
                  const SizedBox(height: kHalfSpace),
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
                  const SizedBox(height: kHalfSpace),
                  Row(
                    children: [
                      Text(
                        'Open',
                        style: AppConfig.sub().copyWith(
                          fontSize: 12,
                          color: AppConfig.primaryColor,
                        ),
                      ),
                      const SizedBox(width: kHalfSpace),
                      Text(
                        'Opens at 6:00 AM'.dotted,
                        style: AppConfig.sub().copyWith(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: kHalfSpace),
                      Text(
                        'Closes at 7:30 PM'.dotted,
                        style: AppConfig.sub().copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: kSpacing),
                  const StoreDeliveryInfoTile(),
                  const SizedBox(height: kSpacing),
                  // StoreSubCategory(),
                  Text(
                    "Swallows",
                    style: AppConfig.boldTitle().copyWith(fontSize: 16),
                  ),
                  const SizedBox(height: kSpacing),
                  const ProductTile(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}





 // Row(
                  //   children: [
                  //     Text(
                  //       'Instant'.dotted,
                  //       style: AppConfig.sub().copyWith(fontSize: 12),
                  //     ),
                  //     const SizedBox(width: kHalfSpace),
                  //     Text(
                  //       'Pre-Order'.dotted,
                  //       style: AppConfig.sub().copyWith(fontSize: 12),
                  //     ),
                  //     const SizedBox(width: kHalfSpace),

                  //   ],
                  // ),