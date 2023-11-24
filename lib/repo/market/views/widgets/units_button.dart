import 'package:flutter/material.dart';
import 'package:fresh_life/utils/core/app_config.dart';

class UnitsButton extends StatelessWidget {
  const UnitsButton({
    super.key,
    required this.unit,
    required this.onTap,
  });

  final IconData unit;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        unit,
        size: 32,
        color: AppConfig.primaryColor,
      ),
    );
  }
}
