import 'package:flutter/material.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
  });

  final String text;
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(SizeConfig.width(context), 42),
        backgroundColor: color ?? AppConfig.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: kBRadius),
      ),
      child: Text(
        text,
        style: AppConfig.button1().copyWith(
          color: color != null ? AppConfig.secBlack : Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class SmallButton extends StatelessWidget {
  const SmallButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
  });

  final String text;
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(SizeConfig.width(context) * 0.2, 40),
        backgroundColor: color ?? AppConfig.lightPrimary,
        shape: RoundedRectangleBorder(borderRadius: kBRadius),
        padding: const EdgeInsets.all(8),
      ),
      child: Text(
        text,
        style: AppConfig.button1().copyWith(fontSize: 12),
      ),
    );
  }
}
