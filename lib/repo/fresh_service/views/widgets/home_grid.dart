import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/fresh_service/views/widgets/menu_items.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';

class HomeServiceGrid extends StatelessWidget {
  const HomeServiceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<ServiceItems> homies = const [
      ServiceItems(
        icon: FontAwesomeIcons.bowlFood,
        text: "Order Food",
        address: "/upload",
        image: 'food',
      ),
      ServiceItems(
        icon: FontAwesomeIcons.shirt,
        text: "Laundry Service",
        address: "/withdraw",
        image: 'laundry',
      ),
      ServiceItems(
        icon: FontAwesomeIcons.bucket,
        text: "Cleaning Service",
        address: "/add_coupon",
        image: 'cleaning',
      ),
      ServiceItems(
        icon: FontAwesomeIcons.dog,
        text: "Vertinary Service",
        address: "/add_coupon",
        image: 'vet',
      ),
      ServiceItems(
        icon: FontAwesomeIcons.gift,
        text: "Send GiftCard",
        address: "/send_gift",
        image: 'gift',
      ),
    ];

    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 24.0,
        mainAxisExtent: 150,
      ),
      shrinkWrap: true,
      padding: kPadding,
      physics: const NeverScrollableScrollPhysics(),
      children: homies
          .map(
            (e) => GestureDetector(
              onTap: () => Navigator.pushNamed(context, e.address),
              child: Container(
                alignment: Alignment.center,
                width: SizeConfig.width(context),
                decoration: BoxDecoration(
                  borderRadius: kBRadius,
                  color: AppConfig.primaryColor,
                  border: Border.all(color: AppConfig.appGrey),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Spacer(),
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: AppConfig.appGrey,
                      child: SvgPicture.asset(
                        e.image.svg,
                        height: 32,
                        width: 32,
                        theme: SvgTheme(
                          currentColor: AppConfig.appGrey,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: SizeConfig.width(context) * 0.2,
                            child: Text(
                              e.text,
                              style: AppConfig.body().copyWith(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          const FaIcon(
                            FontAwesomeIcons.chevronRight,
                            size: 16,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
