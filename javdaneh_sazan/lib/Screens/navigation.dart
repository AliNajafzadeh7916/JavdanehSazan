import 'dart:io';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:javdaneh_sazan/Theme/theme.dart';

import 'child.dart';
import 'condit.dart';
import 'home.dart';
import 'profile.dart';
import 'shop.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => NavigationState();
}

class NavigationState extends State<Navigation> {
  final List<Widget> bottomBarPages = [
    ProfileScreen(),
    ConditScreen(),
    HomeScreen(),
    ChildScreen(),
    ShopScreen(),
  ];
  PageController pageController = PageController(initialPage: 2);
  NotchBottomBarController notchBottomBarController =
      NotchBottomBarController(index: 2);

  @override
  void initState() {
    super.initState();
  }

  back() {
    setState(() {
      notchBottomBarController.index = 2;
      pageController.animateToPage(
        2,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInCirc,
      );
    });
  }

  Future<bool> backApp() async {
    return (await back()) ?? false;
  }

  Future<bool> exitApp() async {
    return (await showDialog(
          barrierColor: const Color.fromARGB(97, 178, 216, 218),
          context: context,
          builder: (context) => AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            title: const Text('خروج از برنامه'),
            content: const Text('آیا می خواهید از برنامه خارج شوید؟'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('خیر'),
              ),
              TextButton(
                onPressed: () => exit(0),
                child: const Text('بله'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: notchBottomBarController.index == 2 ? exitApp : backApp,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            notchBottomBarController.index == 0
                ? 'حساب کاربری'
                : notchBottomBarController.index == 1
                    ? 'گزارش و آمار'
                    : notchBottomBarController.index == 2
                        ? 'کتابم'
                        : notchBottomBarController.index == 3
                            ? 'کیف پول'
                            : notchBottomBarController.index == 4
                                ? 'تالار گفتگو'
                                : '',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 2,
          shadowColor: Colors.blue[200],
          actions: [
            if (notchBottomBarController.index == 0)
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.gift,
                  color: Colors.white,
                ),
              ),
          ],
          leading: IconButton(
            icon: Icon(
              Icons.notifications_none_rounded,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
              bottomBarPages.length, (index) => bottomBarPages[index]),
        ),
        extendBody: true,
        bottomNavigationBar: AnimatedNotchBottomBar(
          notchBottomBarController: notchBottomBarController,
          color: MyThemes.primeryColor,
          showLabel: false,
          notchColor: MyThemes.secondaryColor,
          bottomBarItems: const [
            BottomBarItem(
              inActiveItem: Icon(FontAwesomeIcons.user, color: Colors.white),
              activeItem: Icon(FontAwesomeIcons.user),
              itemLabel: 'حساب کاربری',
            ),

            ///svg example
            BottomBarItem(
              inActiveItem:
                  Icon(FontAwesomeIcons.chartBar, color: Colors.white),
              activeItem: Icon(FontAwesomeIcons.chartBar),
              itemLabel: 'آمار و گزارشات',
            ),
            BottomBarItem(
              inActiveItem: Icon(CupertinoIcons.home, color: Colors.white),
              activeItem: Icon(CupertinoIcons.home),
              itemLabel: 'صفحه اصلی',
            ),
            BottomBarItem(
              inActiveItem: Icon(Icons.wallet, size: 27, color: Colors.white),
              activeItem: Icon(Icons.wallet, size: 27),
              itemLabel: 'کیف پول',
            ),
            BottomBarItem(
              inActiveItem: Icon(CupertinoIcons.chat_bubble_2,
                  size: 27, color: Colors.white),
              activeItem: Icon(CupertinoIcons.chat_bubble_2, size: 27),
              itemLabel: 'تالار گفتگو',
            ),
          ],
          onTap: (index) {
            setState(() {
              notchBottomBarController.index = index;
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInCirc,
              );
            });
          },
        ),
      ),
    );
  }
}
