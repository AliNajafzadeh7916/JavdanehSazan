import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:javdaneh_sazan/Theme/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: MyThemes.primeryColor,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: MyThemes.secondaryColor,
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'علی نجف‌زاده',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'کد کاربری : 123456',
                    style: TextStyle(),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const SizedBox(
                          height: 40,
                          width: 120,
                          child: Center(
                            child: Text('جوهر من'),
                          ),
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const SizedBox(
                          height: 40,
                          width: 120,
                          child: Center(
                            child: Text('شارژ حساب'),
                          ),
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const ListTile(
                    leading: Icon(
                      CupertinoIcons.heart_circle,
                      size: 38,
                    ),
                    title: Text(
                      'مورد علاقه من',
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      'علاقه مندی های ذخیره شده',
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                    style: ListTileStyle.drawer,
                  ),
                  Divider(color: Colors.grey),
                  const ListTile(
                    leading: Icon(
                      FontAwesomeIcons.chartBar,
                      size: 30,
                    ),
                    title: Text(
                      'آمار مطالعه من',
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      'گزارش دقیق از مطالعات شما',
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                    style: ListTileStyle.drawer,
                  ),
                  Divider(color: Colors.grey),
                  const ListTile(
                    leading: Icon(
                      FontAwesomeIcons.userCircle,
                      size: 35,
                    ),
                    title: Text(
                      'اطلاعات کاربری',
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      'مشاهده و ویرایش اطلاعات کاربری',
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                    style: ListTileStyle.drawer,
                  ),
                  Divider(color: Colors.grey),
                  const ListTile(
                    leading: Icon(
                      CupertinoIcons.settings,
                      size: 35,
                    ),
                    title: Text(
                      'تنظیمات',
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      'تغییر زبان و حالت شب / روز',
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                    style: ListTileStyle.drawer,
                  ),
                  Divider(color: Colors.grey),
                  const ListTile(
                    leading: Icon(
                      CupertinoIcons.arrow_2_circlepath_circle,
                      size: 35,
                    ),
                    title: Text(
                      'بروزرسانی',
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      'بررسی نسخه و بروزرسانی نرم افزار',
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                    style: ListTileStyle.drawer,
                  ),
                  Divider(color: Colors.grey),
                  const ListTile(
                    leading: Icon(
                      Icons.share_outlined,
                      size: 35,
                    ),
                    title: Text(
                      'دعوت از دوستان',
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      'معرفی به دوستان برای دریافت جوهر رایگان',
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                    style: ListTileStyle.drawer,
                  ),
                  Divider(color: Colors.grey),
                  const ListTile(
                    leading: Icon(
                      CupertinoIcons.square_arrow_left,
                      size: 35,
                    ),
                    title: Text(
                      'خروج از حساب کاربری',
                      style: TextStyle(fontSize: 17),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                    style: ListTileStyle.drawer,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
