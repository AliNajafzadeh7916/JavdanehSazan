import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  StartTime() {
    var durtion = Duration(seconds: 3);
    return Timer(durtion, NavigationPage);
  }

  NavigationPage() {
    Navigator.of(context).pushNamed('/intro');
  }

  @override
  void initState() {
    super.initState();
    StartTime();
  }

  void dispose() {
    StartTime().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 300,
                  width: 300,
                  child: Image(
                    image: AssetImage('assets/icon/logo.png'),
                  )),
              Text(
                AppLocalizations.of(context)!.welcome_text,
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
