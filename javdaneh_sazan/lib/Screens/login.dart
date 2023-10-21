import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glass_kit/glass_kit.dart';

import '../Data/Api/api.dart';
import 'adent.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  var height_screen;
  var width_screen;
  String? tel = '';
  TextEditingController? contorller = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  Future sendCode({required String phone}) async {
    Api api = Api();
    try {
      Response response = await api.sendCodeToPhone(phone: phone);

      print(response.data);

      if (response.data['Status'] == 200) {
        // ignore: use_build_context_synchronously
        Navigator.of(context).pop(false);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AdentScreen(tel: tel!),
          ),
        );
      } else if (response.data['Status'] == 901) {
      } else if (response.data['Status'] == 900) {}
    } catch (e) {
      print(e);
    }
  }

  Future<bool> checkPhone() async {
    return (await showDialog(
          context: context,
          barrierDismissible: true,
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
                  blur: 4,
                  elevation: 3.0,
                  isFrostedGlass: false,
                  shadowColor: Colors.purple.withOpacity(0.20),
                ),
              ),
              AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                title: Text('تایید شماره'),
                content: Container(
                  height: height_screen * 0.15,
                  width: width_screen * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('آیا این شماره درست است ؟'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          '+98 ' +
                              tel!.substring(1, 4) +
                              ' ' +
                              tel!.substring(4, 7) +
                              ' ' +
                              tel!.substring(7, 11) +
                              '',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                actionsAlignment: MainAxisAlignment.spaceBetween,
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text('ویرایش'),
                  ),
                  TextButton(
                    onPressed: () async {
                      await sendCode(phone: tel!);
                    },
                    child: Text('بله'),
                  ),
                ],
              ),
            ],
          ),
        )) ??
        false;
  }

  Future<bool> Exit() async {
    return (await showDialog(
          barrierColor: Color.fromARGB(97, 178, 216, 218),
          context: context,
          builder: (context) => AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            title: Text('خروج از برنامه'),
            content: Text('آیا می خواهید از برنامه خارج شوید؟'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('خیر'),
              ),
              TextButton(
                onPressed: () => exit(0),
                child: Text('بله'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    width_screen = MediaQuery.of(context).size.width;
    height_screen = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: Exit,
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
                    child: Image(
                      image: AssetImage('assets/icon/logo.png'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                      'تایید شماره تلفن ',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 30, left: 30, right: 30),
                    child: TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp('[0-9۰۱۲۳۴۵۶۷۸۹]'))
                      ],
                      controller: contorller,
                      maxLength: 11,
                      style: TextStyle(fontSize: 18, fontFamily: 'Vazir'),
                      textDirection: TextDirection.ltr,
                      keyboardType: TextInputType.phone,
                      minLines: 1,
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        hintTextDirection: TextDirection.ltr,
                        counterText: '',
                        hintText: '09 _ _  _ _ _  _ _ _ _',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[600],
                          fontFamily: 'IRANSans',
                        ),
                        label: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.phone_enabled_rounded,
                                  color: Colors.grey[600],
                                ),
                                Text(
                                  'شماره همراه',
                                  style: TextStyle(fontFamily: 'IRANSans'),
                                ),
                              ]),
                        ),
                        border: const OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(
                          () {
                            tel = value;
                            if (tel!.length == 11 &&
                                tel![0] == '0' &&
                                tel![1] == '9') checkPhone();
                          },
                        );
                      },
                    ),
                  ),
                  ElevatedButton(
                    autofocus: true,
                    onPressed:
                        tel!.length == 11 && tel![0] == '0' && tel![1] == '9'
                            ? () {
                                tel ??= '09xxxxxxxxx';
                                if (tel!.length < 11) tel = '09xxxxxxxxx';
                                checkPhone();
                                ;
                              }
                            : null,
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
