import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fresh_life/repo/start/widgets/onboard_text.dart';
import 'package:fresh_life/repo/user/views/pages/auth/login_page.dart';
import 'package:fresh_life/repo/user/views/pages/auth/signup_page.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
import 'package:fresh_life/utils/core/size_config.dart';
import 'package:fresh_life/utils/extensions/assets_strings.dart';
import 'package:fresh_life/utils/widgets/fresh_buttons.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _position = 0;

  final _images = ['onboard1'.png, 'onboard2'.png, 'onboard3'.png];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider(
            items: List.generate(
              _images.length,
              (index) => Image.asset(
                _images[index],
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.multiply,
                color: const Color(0xff000000).withOpacity(0.2),
              ),
            ),
            options: CarouselOptions(
              height: SizeConfig.height(context),
              viewportFraction: 1.0,
              autoPlay: true,
              pageSnapping: false,
              disableCenter: true,
              autoPlayAnimationDuration: const Duration(seconds: 2),
              autoPlayCurve: Curves.easeInOut,
              onPageChanged: (i, r) {
                setState(() {
                  _position = i;
                });
              },
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('logo'.png),
                    radius: 26,
                  ),
                  const SizedBox(height: kSpacing),
                  OnboardText(index: _position),
                  const SizedBox(height: kSpacing),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      _images.length,
                      (index) => Container(
                        width: _position == index ? 8 : 16,
                        height: 8,
                        margin: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 4.0,
                        ),
                        decoration: BoxDecoration(
                          color: _position == index
                              ? AppConfig.primaryColor
                              : AppConfig.hintGrey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  LongButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const SignupPage(),
                        ),
                      );
                    },
                    text: "Create Account",
                  ),
                  const SizedBox(height: 4.0),
                  LongButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const LoginPage(),
                        ),
                      );
                    },
                    color: AppConfig.appGrey,
                    text: "Log In",
                  ),
                  const SizedBox(height: 12.0),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
