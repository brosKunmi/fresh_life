import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';
import 'package:fresh_life/utils/widgets/fresh_buttons.dart';

class ServiceOrderHistory extends StatelessWidget {
  const ServiceOrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        return const ServiceOrderTile();
      },
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
    );
  }
}

class ServiceOrderTile extends StatelessWidget {
  const ServiceOrderTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Home Cleaning",
                      style: AppConfig.boldTitle()
                          .copyWith(fontSize: 14, color: AppConfig.secBlack),
                    ),
                    const SizedBox(width: kHalfSpace),
                    SvgPicture.asset(
                      "cleaning".svg,
                      width: 12,
                      height: 12,
                      theme: SvgTheme(
                        currentColor: AppConfig.secColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: kHalfSpace),
                Text(
                  "Mon, May 26 ${String.fromCharCode(0x2022)} 11:00am - 13:00pm",
                  style: AppConfig.sub().copyWith(fontSize: 10),
                ),
                const SizedBox(height: kHalfSpace),
                Text(
                  "Completed",
                  style: AppConfig.boldTitle().copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "10,000".withNaira,
                style: AppConfig.boldTitle().copyWith(fontSize: 14),
              ),
              const SizedBox(height: kHalfSpace),
              SmallerButton(
                text: "ReOrder",
                onPressed: () {},
                color: AppConfig.appGrey,
                tcolor: AppConfig.secBlack,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
