import 'package:encuesta/config/assets_path/assets_path.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/screens/splash_screen.dart';
import 'package:encuesta/screens/winning_screen.dart';
import 'package:encuesta/widgets/custom_button.dart';
import 'package:encuesta/widgets/nav_bar.dart';
import 'package:encuesta/widgets/user_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: navBars(),
        body: Column(children: [
          UserIndicator(
              // bug in container
              // if name = container size is fixed and looks bad
              user_Name: 'mohammed ek',
              user_Avatar:
                  "https://c1.alamy.com/thumbs/rd50gg/avatar-sign-icon-vector-illustration-for-personal-and-commercial-use-clean-look-trendy-icon-rd50gg.jpg"),
          Image.asset(homeScreenImage),
          customButton(
              onPress: Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SplashScreen())),
              button_text: "Quick play",
              button_color: Colors.white54),
          customButton(
              onPress: Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SplashScreen())),
              button_text: 'Social Player',
              button_color: PRIMARY_COLOR),
        ]));
  }
}
