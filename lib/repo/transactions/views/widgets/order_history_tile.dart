import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';

class OrderHisTile extends StatelessWidget {
  const OrderHisTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("shop1".png),
            radius: 16,
          ),
          const SizedBox(width: 8),
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Eleyele Store",
                  style: AppConfig.boldTitle()
                      .copyWith(fontSize: 14, color: AppConfig.secBlack),
                ),
                const SizedBox(height: kHalfSpace),
                Text(
                  "Rice and Chicken, Beans and porridge, malt...",
                  overflow: TextOverflow.ellipsis,
                  style: AppConfig.sub().copyWith(fontSize: 10),
                ),
                const SizedBox(height: kHalfSpace),
                Text(
                  "Mon, May 26 ${String.fromCharCode(0x2022)} 20:00pm",
                  style: AppConfig.sub().copyWith(fontSize: 10),
                ),
                const SizedBox(height: kHalfSpace),
                Text(
                  "Delivered",
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
              // SmallerButton(
              //   text: "ReOrder",
              //   onPressed: () {},
              //   color: AppConfig.appGrey,
              //   tcolor: AppConfig.secBlack,
              // ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.arrowsRotate,
                  size: 20,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MarketOrderHistory extends StatelessWidget {
  const MarketOrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        return const OrderHisTile();
      },
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
    );
  }
}
