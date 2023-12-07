import 'package:flutter/material.dart';
import 'package:fresh_life/repo/transactions/views/widgets/checkout_item.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
// import 'package:fresh_life/utils/extensions/assets_strings.dart';

class CartCheckoutPage extends StatelessWidget {
  const CartCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Checkout",
              style: AppConfig.body(),
            ),
            Text(
              "Eleyele Stores",
              style: AppConfig.boldTitle().copyWith(
                fontSize: 10,
                color: AppConfig.primaryColor,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: kPadding.copyWith(top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckoutCartList(),
            SizedBox(height: kHalfSpace),
          ],
        ),
      ),
    );
  }
}
