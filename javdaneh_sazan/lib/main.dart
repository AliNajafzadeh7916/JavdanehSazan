// mian package :
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:javdaneh_sazan/Screens/register.dart';
import 'package:provider/provider.dart';

import 'Logic/Providers/Language/language_provider.dart';
import 'Logic/Providers/Theme/theme_provider.dart';

import 'Screens/adent.dart';
import 'Screens/discussion.dart';
import 'Screens/search.dart';
import 'Screens/home.dart';
import 'Screens/intro.dart';
import 'Screens/login.dart';
import 'Screens/navigation.dart';
import 'Screens/profile.dart';
import 'Screens/shop.dart';
import 'Screens/splash.dart';
import 'Theme/theme.dart';

// main app :
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => LanguageProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeProvider, LanguageProvider>(
        builder: (context, themeProvider, languageProvider, child) {
      return MaterialApp(
        builder: EasyLoading.init(),
        themeMode: ThemeMode.light,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fa', 'IR'),
          Locale('ar', 'SA'),
        ],
        locale: languageProvider.localeMode,
        initialRoute: "/splash",
        routes: {
          "/intro": (context) => IntroScreen(),
          "/splash": (context) => SplashScreen(),
          "/login": (context) => LoginScreen(),
          "/adent": (context) => AdentScreen(),
          "/navigation": (context) => Navigation(),
          "/home": (context) => HomeScreen(),
          "/profile": (context) => ProfileScreen(),
          "/shop": (context) => ShopScreen(),
          "/search": (context) => SearchScreen(),
          "/discussion": (context) => DiscussionScreen(),
          "/register": (context) => RegisterScreen(),
        },
      );
    });
  }
}
