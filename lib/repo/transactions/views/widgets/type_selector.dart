import 'package:flutter/material.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';

class TypeSelector extends StatefulWidget {
  const TypeSelector({
    super.key,
    required this.selected,
    required this.text,
    required this.onTap,
  });
  final bool selected;
  final String text;
  final VoidCallback onTap;

  @override
  State<TypeSelector> createState() => _TypeSelectorState();
}

class _TypeSelectorState extends State<TypeSelector> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        width: SizeConfig.width(context) * 0.4,
        decoration: BoxDecoration(
          color: widget.selected ? AppConfig.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          widget.text,
          style: AppConfig.sub().copyWith(
            color: widget.selected ? Colors.white : AppConfig.secBlack,
          ),
        ),
      ),
    );
  }
}
