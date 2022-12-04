import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/screens/failed_screen.dart';
import 'package:encuesta/screens/game_loading_screen.dart';
import 'package:encuesta/screens/home_screen.dart';
import 'package:encuesta/screens/host_view_of_game_screen.dart';
import 'package:encuesta/screens/hosting_screen.dart';
import 'package:encuesta/screens/joined_room_screen.dart';
import 'package:encuesta/screens/leader_board_screen.dart';
import 'package:encuesta/screens/lobby_screen.dart';
import 'package:encuesta/screens/single_player_config_screen.dart';
import 'package:encuesta/screens/single_player_game_screen.dart';
import 'package:encuesta/screens/social_play_screen.dart';
import 'package:encuesta/screens/quiz_screen.dart';
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
            scaffoldBackgroundColor: APP_COLOR,
            textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Serif')),
        initialRoute: splashScreenRoute,
        routes: {
          splashScreenRoute: (context) => const SplashScreen(),
          homeScreenRoute: (context) => const HomeScreen(),
          winningScreenRoute: (context) => const WinningScreen(),
          failedScreenRoute: (context) => const FailedScreen(),
          hostingScreenRoute: (context) => const HostingScreen(),
          leaderBoardScreenRoute: (context) => const LeaderBoardScreen(),
          gameLoadingScreenRoute: (context) => const GameLoadingScreen(),
          hostedLobbyScreenRoute: (context) => const LobbyScreen(),
          quizScreenRoute: (context) => const QuizScreen(),
          joinedRoomScreenRoute: (context) => const JoinedRoomScreen(),
          socialPlayScreenRoute: (context) => const SocialPlayScreen(),
          hostViewOfGameScreenRoute: (context) => const HostViewOfGameScreen(),
          singlePlayerConfigScreenRoute: (context) =>
              const SinglePlayerConfigScreen(),
          singlePlayerGameScreenRoute: (context) =>
              const SinglePlayerGameScreen(),
        });
  }
}
