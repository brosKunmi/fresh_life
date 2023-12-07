import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/utils/widgets/fresh_text_fields.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      text: "",
      hint: "Type a message",
      suffix: IconButton(
        onPressed: () {},
        icon: const Icon(
          FontAwesomeIcons.locationArrow,
          size: 24,
        ),
      ),
    );
  }
}
