import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/market/views/widgets/units_button.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';
import 'package:fresh_life/utils/widgets/fresh_buttons.dart';

class ItemDescPage extends StatelessWidget {
  const ItemDescPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "shop2".png,
              width: SizeConfig.width(context),
              height: SizeConfig.height(context) * 0.3,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: kPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amala",
                    style: AppConfig.boldTitle().copyWith(fontSize: 18),
                  ),
                  const SizedBox(height: kHalfSpace),
                  Text(
                    "Enjoy sumptous amala with fresh gbegiri. Goes well with a both a chilled malt",
                    style: AppConfig.hint(),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "600".withNaira,
                    style: AppConfig.sub().copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: kHalfSpace),
                  const FoodSidesByCatCol(),
                  const FoodSidesByCatCol()
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ItemUnitsCounter(),
            const SizedBox(width: kSpacing),
            Flexible(
              child: LongButton(
                text: "Add to cart ${"700".withNaira}",
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemSidesTile extends StatelessWidget {
  const ItemSidesTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (s) {},
                visualDensity: VisualDensity.compact,
              ),
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage("shop1".png),
              ),
              const SizedBox(width: kHalfSpace),
              Text(
                "Gbegiri and ewedu",
                style: AppConfig.sub().copyWith(fontSize: 12),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "600".withNaira,
                style: AppConfig.sub().copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: kHalfSpace),
              const ItemUnitsCounter(),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemUnitsCounter extends StatelessWidget {
  const ItemUnitsCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppConfig.lightPrimary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(width: 0.5),
      ),
      child: Row(
        children: [
          UnitsButton(
            unit: FontAwesomeIcons.minus,
            onTap: () {},
          ),
          const SizedBox(width: kHalfSpace),
          Text(
            "1",
            style: AppConfig.body().copyWith(
              fontSize: 12, height: 1.0,
              // color: Colors.white,
            ),
          ),
          const SizedBox(width: kHalfSpace),
          UnitsButton(
            unit: FontAwesomeIcons.plus,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class FoodSidesByCatCol extends StatelessWidget {
  const FoodSidesByCatCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Required Sides:",
            style: AppConfig.boldTitle().copyWith(fontSize: 14),
          ),
          const SizedBox(height: kHalfSpace),
          const ItemSidesTile(),
          const ItemSidesTile(),
          const ItemSidesTile(),
          const ItemSidesTile(),
        ],
      ),
    );
  }
}
