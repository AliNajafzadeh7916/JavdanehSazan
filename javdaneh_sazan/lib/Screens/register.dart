import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(
              top: 70, left: 80, bottom: 10, right: 80), //لوگو را قرار بده
          child: Container(
            height: 100,
            width: 100,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 340,
            width: 400,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(color: Colors.black, width: 3))),
            child: Padding(
              padding: const EdgeInsets.only(right: 5, top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(' نام و نام خانوادگی :',
                          style: TextStyle(fontSize: 13)),
                      SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(),
                                border: InputBorder.none),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('ایمیل : ', style: TextStyle(fontSize: 13)),
                      SizedBox(
                        width: 77,
                      ),
                      SizedBox(
                          width: 250,
                          child: TextField(keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration( focusedBorder: OutlineInputBorder(),),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 15,
                    ),
                    child: Row(
                      children: [
                        Text('شماره تماس : ', style: TextStyle(fontSize: 13)),
                        SizedBox(
                          width: 42,
                        ),
                        SizedBox(
                            width: 250,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration( focusedBorder: OutlineInputBorder(),),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('کد ملی : ', style: TextStyle(fontSize: 13)),
                        SizedBox(),
                        SizedBox(
                            width: 250,
                            child: TextField(keyboardType: TextInputType.number,
                              decoration: InputDecoration( focusedBorder: OutlineInputBorder(),),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
