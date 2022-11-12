import 'package:encuesta/config/assets_path/assets_path.dart';
import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/screens/hosting_screen.dart';
import 'package:encuesta/screens/winning_screen.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/custom_buttons_widgets.dart';
import 'package:encuesta/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class SocialPlayScreen extends StatelessWidget {
  const SocialPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const navBars(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        body: SafeArea(
          child: Column(children: [
            const Text(socialPlayHelperText,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400)),
            const Image(image: AssetImage(socialPlayImage)),
            const SizedBox(height: 20),
            CustomButton(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HostingScreen()),
                );
              },
              buttonText: hostRoomHelperText,
              buttonColor: PRIMARY_COLOR,
              buttonTextColor: textColor,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              buttonText: joinRoomHelperText,
              buttonTextColor: textColor,
              onPress: () {
                Navigator.pushNamed(context, joinedRoomScreenRoute);
              },
            ),
          ]),
        ));
  }
}
