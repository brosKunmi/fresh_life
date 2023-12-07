import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/market/views/widgets/store_tile_list.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/widgets/fresh_text_fields.dart';

class HomeMarketView extends StatelessWidget {
  const HomeMarketView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      padding: kPadding.copyWith(top: 0),
      child: Column(
        children: [
          CustomTextField(
            text: "",
            hint: 'Search FreshMarket',
            prefix: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
            fillColor: AppConfig.appGrey,
          ),
          const StoreListTile(),
          const StoreListTile(),
          const StoreListTile(),
        ],
      ),
    );
  }
}
