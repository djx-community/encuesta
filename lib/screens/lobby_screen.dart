import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/joined_players_list_widget.dart';
import 'package:encuesta/widgets/user_id_app_card_widget.dart';
import 'package:flutter/material.dart';

class LobbyScreen extends StatefulWidget {
  const LobbyScreen({super.key});

  @override
  State<LobbyScreen> createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 60, 5),
            child: UserIdAppCardWidget(),
          ),
          const Text(lobbyHelperText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
          Container(
            width: 400,
            height: 500, //needs to set for the remaining space
            child: JoinedPlayersListWidget(
                avatar: avatars, players: users, id: joinedPlayersId),
          ),
          Container(
            width: 300,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, hostingScreenRoute);
                    },
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(120, 40),
                        side: const BorderSide(
                            color: negativeButtonBorderColor, width: 1)),
                    child: const Text(
                      cancelHelperText,
                      style: TextStyle(color: negativeButtonBorderColor),
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      backgroundColor: PRIMARY_COLOR),
                  onPressed: () {},
                  child: const Text(
                    startHelperText,
                    style: TextStyle(color: textColor),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
