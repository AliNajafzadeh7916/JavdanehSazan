import 'package:flutter/material.dart';
import 'package:javdaneh_sazan/Theme/theme.dart';

class DiscussionScreen extends StatefulWidget {
  const DiscussionScreen({Key? key}) : super(key: key);

  @override
  State<DiscussionScreen> createState() => _DiscussionScreenState();
}

class _DiscussionScreenState extends State<DiscussionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width - 50,
                margin: EdgeInsets.fromLTRB(10, 30, 10, 20),
                decoration: BoxDecoration(
                    color: MyThemes.primeryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width - 70,
                        child: Text(
                            'اینجا میتونی با بهترین کتاب خوان های مجموعه گفت و گو کنی و از تجربه هاشون استفاده کنی  ')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(' شروع کنیم '),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),

          Text('')
        ],
      ),
    );
  }
}
