import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/widgets/fresh_buttons.dart';
import 'package:fresh_life/utils/widgets/fresh_text_fields.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: kPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Account \t😊',
              style: AppConfig.boldTitle(),
            ),
            Text(
              "Sign up to enjoy the freshness of life",
              style: AppConfig.hint(),
            ),
            SizedBox(
              height: SizeConfig.gap(3, context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: CustomTextField(
                    text: 'First Name',
                    hint: 'e.g John',
                    // controller: authCu.emailC,
                    keyboardType: TextInputType.name,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                ),
                const SizedBox(width: kSpacing),
                Flexible(
                  child: CustomTextField(
                    text: 'Last Name',
                    hint: 'e.g Doe',
                    // controller: authCu.emailC,
                    keyboardType: TextInputType.name,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                ),
              ],
            ),
            CustomTextField(
              text: 'Email address',
              hint: 'Enter email address',
              // controller: authCu.emailC,
              keyboardType: TextInputType.emailAddress,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.email(),
              ]),
            ),
            PasswordTextField(
              text: 'Password',
              hint: 'Enter password',
              // controller: authCu.passC,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            PasswordTextField(
              text: 'Confirm Password',
              hint: 'Password must match',
              // controller: authCu.passC,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            const CustomTextField(
              text: 'Referral Code (optional)',
              hint: '',
              // controller: authCu.passC,
            ),
            const SizedBox(height: kSpacing),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: AppConfig.sub(),
                  text:
                      'By clicking this button,I have read and agree to the \n',
                  children: [
                    TextSpan(
                      style: AppConfig.title().copyWith(
                        color: AppConfig.primaryColor,
                        fontSize: 14,
                      ),
                      text: 'Terms and Conditions ',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    const TextSpan(
                      text: 'and ',
                    ),
                    TextSpan(
                      style: AppConfig.title().copyWith(
                          color: AppConfig.primaryColor, fontSize: 14),
                      text: 'Privacy Policy',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            LongButton(text: "Create Account", onPressed: () {}),
            const SizedBox(height: kHalfSpace),
            Center(
              child: RichText(
                text: TextSpan(
                  style: AppConfig.sub(),
                  text: 'Already have an account? ',
                  children: [
                    TextSpan(
                      style: AppConfig.body()
                          .copyWith(color: AppConfig.primaryColor),
                      text: 'Sign In',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, "/otp");
                        },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
