import 'package:flutter/material.dart';
import 'package:fresh_life/repo/market/views/widgets/store_tile.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/widgets/fresh_buttons.dart';

class StoreListTile extends StatelessWidget {
  const StoreListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.gap(1, context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Few metres away",
                style: AppConfig.boldTitle().copyWith(fontSize: 18),
              ),
              SmallerButton(text: "See more", onPressed: () {}),
            ],
          ),
          SizedBox(
            height: SizeConfig.gap(1, context),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              children: List.generate(
                4,
                (index) => const Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: StoreTile(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
