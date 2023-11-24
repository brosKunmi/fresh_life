import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';

class StoreImageStack extends StatelessWidget {
  const StoreImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset(
          "shop2".png,
          width: SizeConfig.width(context),
          height: SizeConfig.height(context) * 0.3,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CircleAvatar(
            backgroundColor: AppConfig.lightPrimary,
            radius: 34,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'shop5'.png,
              ),
              radius: 32,
            ),
          ),
        )
      ],
    );
  }
}

class StoreDeliveryInfoTile extends StatelessWidget {
  const StoreDeliveryInfoTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width(context),
      height: 80,
      padding: kPadding,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppConfig.hintGrey),
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '#500',
                style: AppConfig.sub().copyWith(fontSize: 12),
              ),
              const SizedBox(height: kHalfSpace / 2),
              FaIcon(
                FontAwesomeIcons.truck,
                size: 16,
                color: AppConfig.secColor,
              ),
            ],
          ),
          const VerticalDivider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '10 mins',
                style: AppConfig.sub().copyWith(fontSize: 12),
              ),
              const SizedBox(height: kHalfSpace / 2),
              Text(
                'Prep time',
                style: AppConfig.sub().copyWith(fontSize: 12),
              ),
            ],
          ),
          const VerticalDivider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '10-20 mins',
                style: AppConfig.sub().copyWith(fontSize: 12),
              ),
              const SizedBox(height: kHalfSpace / 2),
              Text(
                'Delivery time',
                style: AppConfig.sub().copyWith(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StoreSubCategory extends StatelessWidget {
  const StoreSubCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kSmallPadding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppConfig.hintGrey),
      ),
      // alignment: Alignment.center,
      child: Text(
        'Swallows',
        style: AppConfig.sub().copyWith(fontSize: 12),
      ),
    );
  }
}
