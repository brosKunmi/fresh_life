import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';

class ProfBox extends StatelessWidget {
  const ProfBox({
    super.key,
    required this.children,
    required this.profTitle,
  });

  final List<Widget> children;
  final String profTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Text(
            profTitle,
            style: AppConfig.hint(),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: Colors.white,
            // boxShadow: kElevationToShadow[1],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: children,
          ),
        ),
      ],
    );
  }
}

class ProfileCol extends StatelessWidget {
  const ProfileCol({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
    this.color,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: InkWell(
        onTap: onTap ?? () {},
        child: Row(
          children: [
            FaIcon(
              icon,
              size: 18,
              color: color ?? Colors.black,
            ),
            SizedBox(width: SizeConfig.space(3, context)),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppConfig.hint().copyWith(fontSize: 13),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    subtitle,
                    style: AppConfig.body(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfRow extends StatelessWidget {
  const ProfRow({
    super.key,
    required this.icon,
    this.color,
    required this.text,
    required this.onTap,
    required this.isLast,
  });

  final IconData icon;
  final Color? color;
  final String text;
  final VoidCallback onTap;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.gap(1, context),
        ),
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              FaIcon(
                icon,
                size: 16,
                color: color ?? AppConfig.primaryColor,
              ),
              SizedBox(width: SizeConfig.space(3, context)),
              Text(
                text,
                style: AppConfig.sub()
                    .copyWith(color: color ?? AppConfig.secBlack),
              ),
              const Spacer(),
              const Icon(FontAwesomeIcons.chevronRight, size: 16),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.gap(isLast ? 2 : 1, context),
        ),
        Visibility(
          visible: !isLast,
          child: const Divider(),
        )
      ],
    );
  }
}
