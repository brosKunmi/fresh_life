import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.keyboardType,
    this.maxLines,
    this.focusNode,
    this.minLines,
    this.controller,
    this.hint,
    this.onChanged,
    this.prefix,
    this.readOnly,
    this.suffix,
    this.fillColor,
    this.onTap,
    this.onDone,
    this.maxLength,
    this.validator,
  });

  final String text;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? minLines;
  final TextEditingController? controller;
  final String? hint;
  final Widget? prefix;
  final Widget? suffix;
  final ValueChanged<String?>? onChanged;
  final bool? readOnly;
  final FocusNode? focusNode;
  final Color? fillColor;
  final VoidCallback? onTap;
  final VoidCallback? onDone;
  final int? maxLength;
  final String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.text,
            style: AppConfig.sub(),
          ),
          widget.text.isEmpty
              ? const SizedBox.shrink()
              : SizedBox(height: SizeConfig.gap(.6, context)),
          FormBuilderTextField(
            name: widget.text,
            keyboardType: widget.keyboardType ?? TextInputType.text,
            focusNode: widget.focusNode,
            maxLines: widget.maxLines ?? 1,
            minLines: widget.minLines ?? 1,
            readOnly: widget.readOnly ?? false,
            onChanged: widget.onChanged,
            maxLength: widget.maxLength,
            cursorColor: AppConfig.primaryColor,
            controller: widget.controller,
            onTap: widget.onTap,
            maxLengthEnforcement:
                MaxLengthEnforcement.truncateAfterCompositionEnds,
            onEditingComplete: widget.onDone,
            validator: widget.validator,
            style: AppConfig.sub(),
            decoration: InputDecoration(
              isDense: true,
              // enabled: false,
              contentPadding: const EdgeInsets.all(12),
              filled: true,
              fillColor: widget.fillColor ?? Colors.white60,
              hintText: widget.hint,
              prefixIcon: widget.prefix,
              hintStyle: AppConfig.hint(),
              suffixIcon: widget.suffix,
              counterText: '',
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    required this.text,
    this.onChanged,
    required this.hint,
    this.controller,
    this.validator,
  });

  final String text;
  final Function(String?)? onChanged;
  final String hint;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: AppConfig.sub(),
          ),
          SizedBox(height: SizeConfig.gap(.5, context)),
          FormBuilderTextField(
            name: widget.text.toLowerCase(),
            keyboardType: TextInputType.text,
            obscureText: _obscure,
            onChanged: widget.onChanged,
            controller: widget.controller,
            style: AppConfig.sub(),
            validator: widget.validator,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              hintText: widget.hint,
              // fillColor: Colors.white60,
              filled: true,
              fillColor: Colors.white60,
              hintStyle: AppConfig.hint(),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
                icon: FaIcon(
                  _obscure ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                  color: AppConfig.appBlack,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class PayTextField extends StatelessWidget {
//   const PayTextField({
//     super.key,
//     required this.hint,
//     this.onChanged,
//     this.suffix,
//     this.readOnly,
//   });

//   final String hint;
//   final ValueChanged<String?>? onChanged;
//   final Widget? suffix;
//   final bool? readOnly;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: TextField(
//         keyboardType: TextInputType.number,
//         readOnly: readOnly ?? false,
//         onChanged: onChanged,
//         style: AppConfig.b3(),
//         decoration: InputDecoration(
//           contentPadding: const EdgeInsets.all(12),
//           hintStyle: AppConfig.b3().copyWith(fontSize: 12),
//           hintText: hint,
//           suffixIcon: suffix,
//         ),
//       ),
//     );
//   }
// }
