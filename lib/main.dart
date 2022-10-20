import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/screens/home_screen.dart';
import 'package:encuesta/screens/leader_board_screen.dart';
import 'package:encuesta/screens/splash_screen.dart';
import 'package:encuesta/screens/winning_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(color: PRIMARY_COLOR),
            scaffoldBackgroundColor: APP_COLOR,
            textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Serif')),
        initialRoute: splashScreenRoute,
        routes: {
          splashScreenRoute: (context) => const SplashScreen(),
          homeScreenRoute: (context) => const HomeScreen(),
          winningScreenRoute: (context) => const WinningScreen(),
          leaderBoardScreenRoute: (context) => const LeaderBoardScreen(),
        });
  }
}
