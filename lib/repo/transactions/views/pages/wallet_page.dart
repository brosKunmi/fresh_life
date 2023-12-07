import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';
import 'package:fresh_life/utils/widgets/fresh_buttons.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: kPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wallet ",
                    style: AppConfig.boldTitle(),
                  ),
                  Icon(
                    FontAwesomeIcons.circleInfo,
                    size: 20,
                    color: AppConfig.primaryColor,
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.gap(2, context),
              ),
              const EasyWallet(),
              SizedBox(
                height: SizeConfig.gap(3, context),
              ),
              Container(
                padding: const EdgeInsets.all(kHalfSpace),
                decoration: BoxDecoration(
                  color: AppConfig.lightPrimary,
                  borderRadius: BorderRadius.circular(4),
                  // boxShadow: kElevationToShadow[1],
                ),
                child: Text(
                  "Transaction History: ",
                  style: AppConfig.sub().copyWith(fontSize: 12),
                ),
              ),
              const SizedBox(height: kHalfSpace),
              ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) =>
                    TransactHistoryTile(index: index),
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactHistoryTile extends StatelessWidget {
  const TransactHistoryTile({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: SizeConfig.width(context) * 0.6,
            child: Row(
              children: [
                SvgPicture.asset(
                  index > 2 && index.isEven ? "send".svg : "recieve".svg,
                  color: index > 2 && index.isEven
                      ? AppConfig.primaryColor.withRed(250)
                      : Colors.green,
                ),
                const SizedBox(width: kHalfSpace),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        index > 2 && index.isEven
                            ? 'Rice, assorted beans, french fries'
                            : "TopUp",
                        style: AppConfig.sub(),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: kHalfSpace / 2),
                      Text(
                        index > 2 && index.isEven
                            ? 'Eleyele Stores'
                            : index % 3 == 0
                                ? "Paystack"
                                : "Flutterwave",
                        style: AppConfig.hint().copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '50,000'.withNaira,
                style: AppConfig.sub().copyWith(
                  color: index > 2 && index.isEven
                      ? AppConfig.primaryColor.withRed(250)
                      : Colors.green,
                ),
              ),
              const SizedBox(height: kHalfSpace / 2),
              Text(
                '13 Sept, 2023',
                style: AppConfig.hint().copyWith(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EasyWallet extends StatelessWidget {
  const EasyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width(context),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppConfig.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Balance",
                style: AppConfig.button1(),
              ),
              const SizedBox(width: kHalfSpace),
              const Icon(
                FontAwesomeIcons.eyeSlash,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
          SizedBox(height: SizeConfig.gap(2, context)),
          Center(
            child: Text(
              "10,000".withNaira,
              style: AppConfig.boldTitle()
                  .copyWith(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(height: SizeConfig.gap(2, context)),
          Center(
            child: SmallButton(
              text: "Fund Wallet",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
