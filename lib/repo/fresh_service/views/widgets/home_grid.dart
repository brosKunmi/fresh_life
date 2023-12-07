import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/fresh_service/views/widgets/menu_items.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
// import 'package:fresh_life/utils/extensions/assets_strings.dart';

class HomeServiceGrid extends StatelessWidget {
  const HomeServiceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<ServiceItems> homies = const [
      ServiceItems(
          icon: FontAwesomeIcons.bowlFood,
          text: "Order Food",
          address: "/upload",
          image: 'food'),
      ServiceItems(
          icon: FontAwesomeIcons.shirt,
          text: "Laundry Service",
          address: "/withdraw",
          image: 'laundry'),
      ServiceItems(
          icon: FontAwesomeIcons.bucket,
          text: "Cleaning Service",
          address: "/add_coupon",
          image: 'cleaning'),
      ServiceItems(
          icon: FontAwesomeIcons.dog,
          text: "Vertinary Service",
          address: "/add_coupon",
          image: 'vet'),
      ServiceItems(
          icon: FontAwesomeIcons.gift,
          text: "Send GiftCard",
          address: "/send_nots",
          image: 'gift'),
    ];

    // List<Color> coolColors = const [
    //   Color(0xffEFb495),
    //   Color(0xff662549),
    //   Color(0xffAE445A),
    //   Color(0xff8ECDDD),
    // ];

    return ListView.builder(
      itemCount: homies.length,
      shrinkWrap: true,
      // padding: kPadding,
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var e = homies[index];

        return GestureDetector(
          onTap: () => Navigator.pushNamed(context, e.address),
          child: Container(
            alignment: Alignment.center,
            width: SizeConfig.width(context),
            height: 150,
            margin: kPadding,
            decoration: BoxDecoration(
              boxShadow: kElevationToShadow[2],
              borderRadius: kBRadius,
              color: AppConfig.primaryColor,
              border: Border.all(color: AppConfig.appGrey),
              // color: coolColors[homies.indexOf(e)],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 24,
                  child: FaIcon(
                    e.icon,
                    size: 24,
                    color: AppConfig.primaryColor,
                  ),
                ),
                // SvgPicture.asset(
                //   e.image.svg,
                //   height: 120,
                // ),
                // const SizedBox(height: kHalfSpace),
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
        );
      },
    );
  }
}
