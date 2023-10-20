import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatefulWidget {
  @override
  State<IntroScreen> createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  late Function goToTab;

  Future<void> onDonePress() async {
    // final prefs = await SharedPreferences.getInstance();
    // prefs.setString('session', '0');
    Navigator.of(context).pushReplacementNamed('/login');
  }

  void onTabChangeCompleted(index) {}

  Widget renderNextBtn() {
    return const Text('بعدی');
  }

  Widget renderDoneBtn() {
    return const Text(' بزن بریم ');
  }

  Widget renderSkipBtn() {
    return const Text('رد شدن');
  }

  ButtonStyle myButtonStyle1() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
      backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(51, 111, 88, 200)),
      foregroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(255, 7, 54, 128)),
      overlayColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(226, 115, 143, 210)),
    );
  }

  ButtonStyle myButtonStyle2() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color.fromARGB(0, 0, 0, 0)),
      foregroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(255, 7, 54, 128)),
      overlayColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(226, 115, 143, 210)),
    );
  }

  ButtonStyle myButtonStyle3() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
      backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(51, 111, 88, 200)),
      foregroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(255, 7, 54, 128)),
      overlayColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(226, 115, 143, 210)),
    );
  }

  List<Widget> generateListCustomTabs() {
    return List.generate(
      3,
      (index) => Container(
        //decoration: BoxDecoration(color: Colors.amber),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            const Image(
              image: AssetImage('assets/icon/logo.png'),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                children: [
                  Text(
                    index == 0
                        ? 'به گامینو خوش اومدی '
                        : index == 1
                            ? 'با هم رشد کنیم'
                            : 'تجربه کسب کنیم \nو با هم اشتراک بزاریم',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  index == 0
                      ? const Text(
                          textAlign: TextAlign.center,
                          'اینجا قراه با کلی محتوای خوب و پاک آشنا شیم',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : index == 1
                          ? const Text(
                              textAlign: TextAlign.center,
                              'اینجا قراره باهم یادبگیریم چجوری کودکمون رو درک و تربیت کنیم',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : const Text(
                              textAlign: TextAlign.center,
                              'میتونی هم با بازی های مختلف آشنا بشی هم با بقیه والدین گفتگو کنی و اگر هم سوالی داشتی مشاوران آماده پاسخگویی به سوالتن!',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      // Skip button
      renderSkipBtn: renderSkipBtn(),
      skipButtonStyle: myButtonStyle2(),

      // Next button
      renderNextBtn: renderNextBtn(),
      nextButtonStyle: myButtonStyle1(),

      // Done button

      renderPrevBtn: renderNextBtn(),

      renderDoneBtn: renderDoneBtn(),
      onDonePress: onDonePress,
      doneButtonStyle: myButtonStyle3(),

      // Indicator
      indicatorConfig: const IndicatorConfig(
        colorIndicator: Color.fromARGB(255, 106, 92, 255),
        sizeIndicator: 8,
        typeIndicatorAnimation: TypeIndicatorAnimation.sizeTransition,
      ),

      // Custom tabs
      listCustomTabs: generateListCustomTabs(),

      refFuncGoToTab: (refFunc) {
        goToTab = refFunc;
      },

      // Behavior
      scrollPhysics: const AlwaysScrollableScrollPhysics(),
      onTabChangeCompleted: onTabChangeCompleted,
    );
  }
}
