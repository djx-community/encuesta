import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({super.key});

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _index,
      selectedItemColor: textColor,
      selectedFontSize: 13.0,
      selectedIconTheme: const IconThemeData(color: textColor,size: 30),
      showSelectedLabels: true,
      backgroundColor: APP_COLOR,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard), label: creditHelperText),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: homeHelperText),
        BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app), label: exitHelperText),
      ],
      onTap: (value) => {
        setState(() {
          _index = value;
        }),
        if (value == 1)
          {
            // Navigator.of(context).pushNamed(leaderBoardScreenRoute),
          }
        else if (value == 0)
          {
            // Navigator.of(context).pushNamed(homeScreenRoute),
          }
        else if (value == 2)
          {SystemNavigator.pop()}
      },
    );
  }
}


//  NavigationBarTheme(
//       data: NavigationBarThemeData(
//           indicatorColor: Colors.blue.shade100,
//           labelTextStyle: MaterialStateProperty.all(
//             TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//           )),
//       child: NavigationBar(
//         selectedIndex: index,
//         onDestinationSelected: (index) => setState(() => this.index = index),
//         destinations: const [
//           NavigationDestination(
//             icon: Icon(Icons.home_outlined),
//             selectedIcon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.group_outlined),
//             selectedIcon: Icon(Icons.group),
//             label: 'Credits',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.logout_outlined),
//             selectedIcon: Icon(Icons.logout),
//             label: 'Exit',
//           ),
//         ],
//       ),
//     );