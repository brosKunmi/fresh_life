import 'package:flutter/material.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/widgets/fresh_buttons.dart';

class CleaningServicePage extends StatelessWidget {
  const CleaningServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBack(),
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose your cleaning type",
              style: AppConfig.boldTitle(),
            ),
            Text(
              "what type of cleaning would you like?",
              style: AppConfig.sub(),
            ),
            const SizedBox(height: kHalfSpace),
            Container(
              width: SizeConfig.width(context) * 0.4,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppConfig.lightPrimary),
              ),
              child: Row(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
