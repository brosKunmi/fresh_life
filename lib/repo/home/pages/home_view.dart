import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/home/widgets/home_user_deets.dart';
import 'package:fresh_life/repo/market/views/widgets/store_tile_list.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/widgets/fresh_text_fields.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int sIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        padding: kPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeUserDeets(),
                Row(
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.bell,
                      size: 18,
                    ),
                    const SizedBox(width: kSpacing),
                    FaIcon(
                      FontAwesomeIcons.cartShopping,
                      size: 18,
                      color: AppConfig.primaryColor,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.gap(4, context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                2,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      sIndex = index;
                    });
                  },
                  child: TypeSelector(
                    selected: sIndex == index,
                    text: index == 0 ? "FreshMarket" : "FreshServices",
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: SizeConfig.gap(1, context),
            // ),
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
      ),
    );
  }
}

class TypeSelector extends StatefulWidget {
  const TypeSelector({super.key, required this.selected, required this.text});
  final bool selected;
  final String text;

  @override
  State<TypeSelector> createState() => _TypeSelectorState();
}

class _TypeSelectorState extends State<TypeSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: AppConfig.body().copyWith(
              color: widget.selected ? AppConfig.appBlack : AppConfig.hintGrey,
            ),
          ),
          const SizedBox(height: 4),
          widget.selected
              ? Container(
                  width: SizeConfig.width(context) * 0.3,
                  height: 2,
                  color: AppConfig.primaryColor,
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
