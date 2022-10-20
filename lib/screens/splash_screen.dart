import 'dart:async';

import 'package:encuesta/config/assets_path/assets_path.dart';
import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    changeToHomeScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Stack(children: <Widget>[
              Center(child: Image.asset(appLogo, width: 300, height: 300)),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 230, 0, 0),
                child: Center(
                  child: Text(
                    appName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.fade),
                  ),
                ),
              ),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Text(developedBy),
          )
        ],
      )),
    );
  }

  Future<void> changeToHomeScreen(context) async {
    await Future<dynamic>.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacementNamed(homeScreenRoute);
  }
}
