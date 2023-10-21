import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:javdaneh_sazan/Data/Api/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Data/App/dynamic_data_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  //
  Api api = Api();

  Future<String> getSession() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('session') ?? '0';
  }

  Future<String> checkIntro() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('intro') ?? '0';
  }

  check() {
    checkSessionState();
  }

  Future checkSessionState() async {
    String intro = await checkIntro();

    if (intro == '0') {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushNamed('/intro');
    } else {
      //
      session = await getSession();

      if (session != '0') {
        Response response = await api.checkSessionApi(session: session!);

        print(response.data);

        if (response.data['Status'] == 200) {
          // ignore: use_build_context_synchronously
          Navigator.of(context).pushNamed('/navigation');
        } else if (response.data['Status'] == 901) {
          // ignore: use_build_context_synchronously
          Navigator.of(context).pushNamed('/login');
        } else if (response.data['Status'] == 900) {}
      } else {
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushNamed('/login');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    check();
  }

  void dispose() {
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
                  child: const Image(
                    image: AssetImage('assets/icon/logo.png'),
                  )),
              Text(
                AppLocalizations.of(context)!.bamadan,
                style:
                    const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
