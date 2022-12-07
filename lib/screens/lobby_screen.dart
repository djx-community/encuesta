import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/screens/hosting_screen.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 60, 5),
            child: UserIdAppCardWidget(),
          ),
          const Text(lobbyHelperText,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400)),
          Expanded(
            child: JoinedPlayersListWidget(avatar: avatars, players: users, id: joinedPlayersId)
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(hostingScreenRoute);
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
