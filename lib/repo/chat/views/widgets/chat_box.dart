import 'package:flutter/material.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({
    super.key,
    required this.isMe,
  });
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Visibility(
            visible: !isMe,
            child: ClipRRect(
              borderRadius: kBRadius,
              child: Image.asset(
                "logo".png,
                height: 30,
                width: 30,
              ),
            ),
          ),
          const SizedBox(width: kHalfSpace),
          Container(
            width: SizeConfig.width(context) * 0.6,
            padding: const EdgeInsets.all(kHalfSpace),
            decoration: BoxDecoration(
              color: isMe ? AppConfig.appGrey : AppConfig.lightPrimary,
              borderRadius: kBRadius,
              // boxShadow: kElevationToShadow[1],
              border: isMe
                  ? Border.all(color: AppConfig.secColor, width: 0.2)
                  : null,
            ),
            child: Text(
              isMe
                  ? 'Common, this app is so cool, I needed it like yesterday!'
                  : 'Hello Godwin! How may we help you today?',
              style: AppConfig.sub().copyWith(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
