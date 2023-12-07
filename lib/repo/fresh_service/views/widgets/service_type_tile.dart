import 'package:flutter/material.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';

class ServiceTypeTile extends StatelessWidget {
  const ServiceTypeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: SizeConfig.width(context) * 0.4,
      decoration: BoxDecoration(
        color: AppConfig.lightPrimary,
        border: Border.all(color: AppConfig.appGrey),
      ),
    );
  }
}
