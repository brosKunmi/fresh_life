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
        fixedSize: Size(SizeConfig.width(context) * 0.4, 40),
        backgroundColor: color ?? AppConfig.lightPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.all(8),
      ),
      child: Text(
        text,
        style: AppConfig.button1().copyWith(fontSize: 12, color: Colors.black),
      ),
    );
  }
}

class SmallerButton extends StatelessWidget {
  const SmallerButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.tcolor,
  });

  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final Color? tcolor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(SizeConfig.width(context) * 0.2, 40),
        backgroundColor: color ?? AppConfig.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(4),
      ),
      child: Text(
        text,
        style: AppConfig.button1()
            .copyWith(fontSize: 12, color: tcolor ?? Colors.white, height: 1.2),
      ),
    );
  }
}

class CustomBack extends StatelessWidget {
  const CustomBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: AppConfig.lightPrimary,
        radius: 20,
        child: BackButton(color: AppConfig.appBlack),
      ),
    );
  }
}
