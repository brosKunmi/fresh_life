import 'package:flutter/material.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';

class OnboardText extends StatefulWidget {
  const OnboardText({super.key, required this.index});

  final int index;

  @override
  State<OnboardText> createState() => _OnboardTextState();
}

class _OnboardTextState extends State<OnboardText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.width(context) * .9,
      child: Text(
        widget.index == 0
            ? "Receive Money From Anywhere In The World"
            : widget.index == 1
                ? "Spend money abroad, and track your expense"
                : "Trusted by millions, we're part of the bigger picture",
        textAlign: TextAlign.start,
        style:
            AppConfig.boldTitle().copyWith(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
