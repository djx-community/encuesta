import 'package:encuesta/config/assets_path/assets_path.dart';
import 'package:flutter/material.dart';

class JoinedPlayersListWidget extends StatefulWidget {
  const JoinedPlayersListWidget(
      {super.key,
      required this.avatar,
      required this.players,
      required this.id});
  final avatar, players, id;
  @override
  State<JoinedPlayersListWidget> createState() =>
      _JoinedPlayersListWidgetState();
}

class _JoinedPlayersListWidgetState extends State<JoinedPlayersListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: widget.players.length - 1, // done for temp use
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.white,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(widget.avatar[index]),
            ),
            title: Text(widget.players[index]),
            trailing: Text(widget.id[index]),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 10,
        color: Colors.black,
        thickness: 0.1,
      ),
    );
  }
}
