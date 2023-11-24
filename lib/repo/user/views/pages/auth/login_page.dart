import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fresh_life/repo/home/pages/home_page.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:fresh_life/utils/widgets/fresh_buttons.dart';
import 'package:fresh_life/utils/widgets/fresh_text_fields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: kPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back! \t🤗',
                style: AppConfig.boldTitle(),
              ),
              Text(
                "Login to your account",
                style: AppConfig.hint(),
              ),
              SizedBox(
                height: SizeConfig.gap(3, context),
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
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot password?',
                    style: AppConfig.body()
                        .copyWith(color: AppConfig.primaryColor, fontSize: 12),
                  ),
                ),
              ),
              const Spacer(),
              LongButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomePage(),
                    ),
                  );
                },
                text: 'Log In',
              ),
              SizedBox(
                height: SizeConfig.gap(1, context),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: AppConfig.sub(),
                    text: 'Are you a new user? ',
                    children: [
                      TextSpan(
                        style: AppConfig.body()
                            .copyWith(color: AppConfig.primaryColor),
                        text: 'Create an account',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
