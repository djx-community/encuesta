import 'package:encuesta/config/assets_path/assets_path.dart';
import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/screens/winning_screen.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/custom_buttons_widgets.dart';
import 'package:encuesta/widgets/nav_bar.dart';
import 'package:encuesta/widgets/user_id_app_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const navBars(),
        body: SafeArea(
          child: Column(children: [
            Container(
                padding:const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: const UserIdAppCardWidget()),
            const Image(image: AssetImage(homeScreenImage)),
            const Text(letsHackHelperText,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400)),
            const SizedBox(height: 20),
            CustomButton(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WinningScreen()),
                );
              },
              buttonText: quickPlayHelperText,
              buttonColor: PRIMARY_COLOR,
              buttonTextColor: textColor,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              buttonText: socialPlayHelperText,
              buttonTextColor: textColor,
              onPress: () {
                Navigator.pushNamed(context, hostingScreenRoute);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              buttonText: singlePlayerHelperText,
              buttonTextColor: textColor,
              onPress: () {
                Navigator.pushNamed(context, hostingScreenRoute);
              },
            ),
          ]),
        ));
  }
}
