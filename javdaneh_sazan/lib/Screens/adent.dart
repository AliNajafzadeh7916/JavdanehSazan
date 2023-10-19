import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:lottie/lottie.dart';
import 'package:quiver/async.dart';
import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';


class AdentScreen extends StatefulWidget {
  AdentScreen({super.key, String tel = '09xxxxxxxxx'}) {
    temp = tel;
  }
  String? temp;
  @override
  State<AdentScreen> createState() => AdentScreenState(temp);
}

class AdentScreenState extends State<AdentScreen> {
  AdentScreenState(String? tel) {
    tel_number = tel;
  }
  var height_screen;
  var width_screen;
  String? org_code;
  String? code;
  String? tel_number;
  TextEditingController? contorller;

  int fultime = 90;
  int time = 90;
  String temp_time = '90';

  startTimer() {
    setState(() {
      org_code = Generate6digit().toString();
    });
    CountdownTimer countDownTimer = CountdownTimer(
      Duration(seconds: fultime),
      const Duration(seconds: 1),
    );

    var timer = countDownTimer.listen(null);
    timer.onData((duration) {
      setState(() {
        time = fultime - duration.elapsed.inSeconds;
        temp_time = time.toString();
      });
    });

    timer.onDone(() {
      timer.cancel();
    });
  }

  int Generate6digit() {
    var rng = new Random();
    return rng.nextInt(99999) + 100000;
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<bool> edit() async {
    return (await showDialog(
          context: context,
          builder: (context) => Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(false);
                },
                child: GlassContainer(
                  height: height_screen,
                  width: width_screen,
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.40),
                      Colors.white.withOpacity(0.10),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderGradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.60),
                      Colors.white.withOpacity(0.10),
                      Colors.purpleAccent.withOpacity(0.05),
                      Colors.purpleAccent.withOpacity(0.60),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 0.39, 0.40, 1.0],
                  ),
                  blur: 2.5,
                  elevation: 3.0,
                  isFrostedGlass: false,
                  shadowColor: Colors.purple.withOpacity(0.20),
                ),
              ),
              AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                title: Text('ویرایش شماره '),
                content: Container(
                  height: height_screen * 0.21,
                  width: width_screen * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'آیا می خواهید شماره خود را ویرایش کنید ؟',
                        style: TextStyle(fontSize: 14),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          '+98 ' +
                              tel_number![1] +
                              tel_number![2] +
                              tel_number![3] +
                              ' ' +
                              tel_number![4] +
                              tel_number![5] +
                              tel_number![6] +
                              ' ' +
                              tel_number![7] +
                              tel_number![8] +
                              tel_number![9] +
                              tel_number![10] +
                              '',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'در صورتی که شماره بالا درست است لطفاً منتظر کد تایید بمانید.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text('بستن'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                      Navigator.of(context).pop(false);
                    },
                    child: Text('ویرایش'),
                  ),
                ],
              ),
            ],
          ),
        )) ??
        false;
  }

  Future<bool> exit() async {
    return (await showDialog(
          context: context,
          builder: (context) => Stack(children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop(false);
              },
              child: GlassContainer(
                height: height_screen,
                width: width_screen,
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.40),
                    Colors.white.withOpacity(0.10),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderGradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.60),
                    Colors.white.withOpacity(0.10),
                    Colors.purpleAccent.withOpacity(0.05),
                    Colors.purpleAccent.withOpacity(0.60),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.39, 0.40, 1.0],
                ),
                blur: 2.5,
                elevation: 3.0,
                isFrostedGlass: false,
                shadowColor: Colors.purple.withOpacity(0.20),
              ),
            ),
            AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              title: Text('بازگشت به صفحه قبل'),
              content: Text('آیا از متوقف کردن فرایند احراز هویت مطمئنید؟ '),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text('بستن'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                    Navigator.of(context).pop(true);
                  },
                  child: Text('تایید'),
                ),
              ],
            ),
          ]),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    width_screen = MediaQuery.of(context).size.width;
    height_screen = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: exit,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: height_screen,
            width: width_screen,
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Lottie.asset(
                      width: 300,
                      height: 300,
                      'assets/images/otp_code.json',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                      'تایید شماره تلفن ',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 15),
                    child: PinInputTextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp('[0-9۰۱۲۳۴۵۶۷۸۹]'))
                      ],
                      controller: contorller,
                      cursor: Cursor(
                          color: Colors.grey,
                          enabled: true,
                          height: 30,
                          width: 1),
                      pinLength: 6,
                      decoration: UnderlineDecoration(
                          lineHeight: 3,
                          lineStrokeCap: StrokeCap.round,
                          colorBuilder:
                              PinListenColorBuilder(Colors.blue, Colors.grey)),
                      onChanged: (value) {
                        setState(() {
                          code = value;
                        });
                      },
                    ),
                  ),
                  Text('کد آزمایشی ارسال شده :' + org_code!),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        'شماره را اشتباه وارد کرده‌اید ؟',
                        style: TextStyle(
                            color: Colors.blue[500],
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    onTap: edit,
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('کد را دریافت نکردید ؟ '),
                          Text(
                            time > 0
                                ? temp_time + ' ثانیه'
                                : 'دریافت مجدد',
                            style: TextStyle(
                                color: time > 0 ? null : Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      if (time < 1) {
                        startTimer();

                        var snackBar = SnackBar(
                          content: Row(
                            children: [
                              Icon(Icons.check_circle_outline_rounded),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text('کد تایید جدید برای شما ارسال شد'),
                            ],
                          ),
                          backgroundColor: Color.fromARGB(255, 37, 192, 42),
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                  ),
                  ElevatedButton(
                    autofocus: true,
                    onPressed: code == null || code!.length < 6
                        ? null
                        : () {
                            if (code == org_code)
                              Navigator.of(context).pushNamed('/navigation');
                            else
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Row(
                                    children: [
                                      Icon(Icons.close_rounded),
                                      Padding(
                                          padding: EdgeInsets.only(left: 5)),
                                      Text('کد وارد شده اشتباه است'),
                                    ],
                                  ),
                                  backgroundColor: Colors.red,
                                  margin: EdgeInsets.all(20),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(14),
                                    ),
                                  ),
                                ),
                              );
                          },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
                      child: Text(
                        'ورود',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
