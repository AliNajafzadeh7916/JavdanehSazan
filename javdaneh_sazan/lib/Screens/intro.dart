import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:javdaneh_sazan/Theme/theme.dart';

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
            SizedBox(height: 20),
            const Image(
              height: 250,
              image: AssetImage('assets/icon/logo.png'),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                children: [
                  Text(
                    index == 0
                        ? 'به بامادان خوش آمدید '
                        : index == 1
                            ? 'با هم رشد کنیم'
                            : 'کسب درآمد و تجربه',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  index == 0
                      ? const Text(
                          textAlign: TextAlign.center,
                          'با ما دانایی‌ها تون رو ارتقاء بدین',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : index == 1
                          ? const Text(
                              textAlign: TextAlign.center,
                              'اینجا قراره ما به جای شما کتاب بخونیم \n و شما چیزای جدید یاد بگیرین',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : const Text(
                              textAlign: TextAlign.center,
                              'میتونی هم درآمد کسب کنی\n هم در کنار آدم های متخصص رشد کنی',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                  SizedBox(height: 20),
                  Image(
                    height: 100,
                    image: AssetImage(index == 0
                        ? 'assets/images/intro1.png'
                        : index == 1
                            ? 'assets/images/intro2.png'
                            : 'assets/images/intro3.png'),
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
        colorIndicator: MyThemes.primeryColor,
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
