import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/transactions/views/widgets/type_selector.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage>
    with SingleTickerProviderStateMixin {
  int picked = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: kPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Orders",
                  style: AppConfig.boldTitle(),
                ),
                Icon(
                  FontAwesomeIcons.circleInfo,
                  size: 20,
                  color: AppConfig.primaryColor,
                ),
              ],
            ),
            const SizedBox(height: kHalfSpace),
            Center(
              child: Text(
                "All your orders will appear here. Click on ${"ReOrder"} to reorder same cart or service again ",
                textAlign: TextAlign.center,
                style: AppConfig.sub(),
              ),
            ),
            const SizedBox(height: kSpacing),
            Container(
              alignment: Alignment.center,
              width: SizeConfig.width(context),
              padding: const EdgeInsets.all(kHalfSpace / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppConfig.appGrey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  2,
                  (index) => TypeSelector(
                    selected: index == picked,
                    text: index == 0 ? "FreshMarket" : "FreshServices",
                    onTap: () {
                      setState(() {
                        picked = index;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: kSpacing),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Eleyele Store",
                  style: AppConfig.boldTitle()
                      .copyWith(fontSize: 14, color: AppConfig.secBlack),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
