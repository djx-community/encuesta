import 'package:encuesta/config/assets_path/assets_path.dart';
import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/screens/hosting_screen.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/custom_buttons_widgets.dart';
import 'package:encuesta/widgets/bottom_app_bar_widget.dart';
import 'package:encuesta/widgets/user_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomAppBarWidget(),
        body: SafeArea(
          child: Column(children: [
            const SizedBox(
              height: 10,
              width: double.infinity,
            ),
            const UserWidget(),
            const Image(image: AssetImage(homeScreenImage)),
            const Text(letsHackHelperText,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400)),
            const SizedBox(height: 20),
            CustomButton(
              buttonWidth: 300,
              buttonHeight: 50,
              onPress: () {
                Navigator.of(context).pushNamed(hostingScreenRoute);
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
                Navigator.of(context).pushNamed(socialPlayScreenRoute);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              buttonText: singlePlayerHelperText,
              buttonTextColor: textColor,
              onPress: () {
                Navigator.of(context).pushNamed(singlePlayerConfigScreenRoute);
              },
            ),
          ]),
        ));
  }
}
