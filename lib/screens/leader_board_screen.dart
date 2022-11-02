import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/point_table_widget.dart';
import 'package:encuesta/widgets/user_profile_card_widget.dart';
import 'package:flutter/material.dart';

class LeaderBoardScreen extends StatelessWidget {
  const LeaderBoardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 30),
              child: const Text(
                leaderBoardHelperText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                UserProfileWidget(
                  profilePicture: profilePic2,
                  userName: users[1],
                  position: 2,
                  point: points[1],
                  radius: 40,
                  textSize: 20,
                ),
                UserProfileWidget(
                  profilePicture: profilePic1,
                  userName: users[0],
                  position: 1,
                  point: points[0],
                  radius: 70,
                  textSize: 30,
                ),
                UserProfileWidget(
                  profilePicture: profilePic3,
                  userName: users[2],
                  position: 3,
                  point: points[2],
                  radius: 40,
                  textSize: 20,
                )
              ],
            ),
            Expanded(
                child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                    child: PointTableWidget(
                      users: users,
                      points: points,
                    ))),
            Container(
              width: double.infinity,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 40),
                        backgroundColor: PRIMARY_COLOR),
                    onPressed: () {},
                    child: const Text(
                      newQuizHelperText,
                      style: TextStyle(color: textColor),
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        changeToHomeScreen(context);
                      },
                      style: OutlinedButton.styleFrom(
                          minimumSize: const Size(120, 40),
                          side: const BorderSide(
                              color: buttonBorderColor, width: 1)),
                      child: const Text(
                        homeHelperText,
                        style: TextStyle(color: buttonBorderColor),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  changeToHomeScreen(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(homeScreenRoute);
  }
}
