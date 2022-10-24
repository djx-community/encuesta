import 'package:encuesta/config/assets_path/assets_path.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/host_profile_widget.dart';
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: HostProfileWidget(
                  profileImage: profileImage,
                  roomId: roomId,
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
