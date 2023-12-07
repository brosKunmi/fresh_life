import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/chat/views/widgets/chat_box.dart';
import 'package:fresh_life/repo/chat/views/widgets/chat_text_field.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';

class FreshSupport extends StatelessWidget {
  const FreshSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: kPadding.copyWith(bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Chat with FreshLife",
                  style: AppConfig.boldTitle().copyWith(fontSize: 16),
                ),
                Icon(
                  FontAwesomeIcons.phone,
                  size: 20,
                  color: AppConfig.primaryColor,
                ),
              ],
            ),
            const SizedBox(height: kSpacing * 1.5),
            Expanded(
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                itemBuilder: (context, index) {
                  return ChatBox(isMe: index.isEven ? false : true);
                },
                itemCount: 20,
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
              ),
            ),
            const ChatTextField()
          ],
        ),
      ),
    );
  }
}
