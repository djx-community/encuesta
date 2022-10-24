import 'package:flutter/material.dart';

class HostProfileWidget extends StatelessWidget {
  final String profileImage;
  final String roomId;
  const HostProfileWidget(
      {super.key, required this.profileImage, required this.roomId});

  copyButtonClicked() {
    print('copy button clicked');
  }

  shareButtonClicked() {
    print('share button clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Container(
            height: 35,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 1),
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 1.5,
                      spreadRadius: 1)
                ]),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(48, 0, 0, 0),
                  child: Text(roomId, style: const TextStyle(fontSize: 12)),
                ),
                IconButton(
                    iconSize: 18,
                    onPressed: copyButtonClicked,
                    icon: const Icon(Icons.copy)),
                IconButton(
                    iconSize: 18,
                    onPressed: shareButtonClicked,
                    icon: const Icon(Icons.share)),
              ],
            ),
          ),
        ),
        ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(200),
            child: Container(
              decoration: BoxDecoration(color: Colors.blue, boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(1),
                    blurRadius: 10,
                    spreadRadius: 2)
              ]),
              child: Image.asset(
                profileImage,
                scale: 1.0,
                width: 40,
                fit: BoxFit.cover,
              ),
            )),
      ],
    ));
  }
}
