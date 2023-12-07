import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/market/views/pages/item_desc_page.dart';
import 'package:fresh_life/repo/market/views/widgets/units_button.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  // final FoodItem foodItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const ItemDescPage(),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12.0),
        padding: const EdgeInsets.all(8),
        width: SizeConfig.width(context),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: kBRadius,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: kBRadius,
              child: Image.asset(
                "shop2".png,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: kHalfSpace),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amala",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: AppConfig.boldTitle().copyWith(fontSize: 14),
                  ),
                  Text(
                    "Enjoy sumptous amala with fresh gbegiri. Goes well with a both a chilled malt",
                    style: AppConfig.hint().copyWith(fontSize: 10),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "600".withNaira,
                        style: AppConfig.sub().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      UnitsButton(
                        unit: FontAwesomeIcons.circlePlus,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
