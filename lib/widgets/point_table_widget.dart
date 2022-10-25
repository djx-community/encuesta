import 'package:encuesta/config/themes/themes.dart';
import 'package:flutter/material.dart';

class PointTableWidget extends StatelessWidget {
  const PointTableWidget(
      {super.key, required this.users, required this.points});
  final List<String> users;
  final List<int> points;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: users.length - 4,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: PRIMARY_COLOR,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text((index + 4).toString()),
              Text(users[index + 4]),
              Text(points[index + 4].toString()),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
