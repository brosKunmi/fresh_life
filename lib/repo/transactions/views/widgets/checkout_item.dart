// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/utils/core/app_config.dart';
// import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';

class CheckOutItem extends StatelessWidget {
  const CheckOutItem({
    super.key,
    // required this.cartItem,
  });

  // final StoreCart cartItem;
  // final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    // final aC = AppConfig(context);

    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 6),
      width: SizeConfig.width(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppConfig.lightPrimary.withOpacity(0.5),
        border: Border.all(width: 0.5),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "shop2".png,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
            // child: CachedNetworkImage(
            //   imageUrl: cartItem.image,
            //   height: 80,
            //   width: 100,
            //   fit: BoxFit.cover,
            // ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // cartItem.name,
                  "Amala",
                  style: AppConfig.title().copyWith(
                    fontSize: 14,
                    color: AppConfig.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "4 wraps",
                  style: AppConfig.body().copyWith(fontSize: 12),
                ),
                Text(
                  "7 assorted meats",
                  style: AppConfig.body().copyWith(fontSize: 12),
                ),
                Text(
                  "Plates * 2",
                  style: AppConfig.body().copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Text(
            "10,000".withNaira,
            // cartItem.totalPrice.toStringAsFixed(2).withNaira,
            style: AppConfig.boldTitle().copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class CheckoutCartList extends StatefulWidget {
  const CheckoutCartList({super.key});

  @override
  State<CheckoutCartList> createState() => _CheckoutCartListState();
}

class _CheckoutCartListState extends State<CheckoutCartList> {
  bool viewCart = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Your cart   ",
                  style: AppConfig.body().copyWith(fontSize: 16),
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: AppConfig.primaryColor,
                  child: Text(
                    "3",
                    style: AppConfig.button1(),
                  ),
                ),
              ],
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    viewCart = !viewCart;
                  });
                },
                icon: Icon(
                  viewCart
                      ? FontAwesomeIcons.chevronDown
                      : FontAwesomeIcons.chevronRight,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
        Visibility(
          visible: viewCart,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Dismissible(
                key: ValueKey(index),
                direction: DismissDirection.horizontal,
                onDismissed: (d) {},
                background: Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppConfig.hintGrey,
                    border: Border.all(width: 0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.trash,
                      color: AppConfig.primaryColor,
                    ),
                  ),
                ),
                child: const CheckOutItem(),
              );
            },
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ),
      ],
    );
  }
}
