import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
 const UserProfileWidget(
      {super.key,
      required this.profilePicture,
      required this.userName,
      required this.position,
      required this.point,
      required this.radius,
      required this.textSize});
  final String profilePicture, userName;
  final int position, point;
  final double radius, textSize;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: radius,
            backgroundImage: NetworkImage(profilePicture),
          ),
          Text(
            position.toString(),
            style: TextStyle(fontSize: textSize, fontWeight: FontWeight.w900),
          ),
          Text(
            userName,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: textSize, fontWeight: FontWeight.w500),
          ),
          Text(
            point.toString(),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
