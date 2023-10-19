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
  PageController _pageController = PageController(initialPage: 2);
  NotchBottomBarController notchBottomBarController =
      NotchBottomBarController(index: 2);

  var appBarList;

  String choiseAppBar = 'mainAppBar';

  @override
  void initState() {
    super.initState();
  }

  back() {
    setState(() {
      choiseAppBar = 'mainAppBar';
    });
  }

  Future<bool> Back() async {
    return (await back()) ?? false;
  }

  Future<bool> Exit() async {
    return (await back()) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    SliverAppBar mainAppBar = SliverAppBar(
      pinned: true,
      title: Text(
        'کتابم',
        style: TextStyle(fontSize: 20),
      ),
      centerTitle: true,
      forceElevated: true,
      automaticallyImplyLeading: false,
      elevation: 2,
      shadowColor: Colors.blue[200],
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              choiseAppBar = 'searchAppBar';
            });
          },
          icon: Icon(CupertinoIcons.search),
        ),
      ],
      leading: IconButton(
        icon: Icon(
          Icons.notifications_none_rounded,
          size: 30,
        ),
        onPressed: () {},
      ),
    );

    SliverAppBar searchAppBar = SliverAppBar(
      pinned: true,
      title: SizedBox(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black54),
              borderRadius: BorderRadius.circular(20),
            ),
            hintText: 'جستجو ...',
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          ),
        ),
      ),
      elevation: 5,
      shadowColor: Colors.black,
      forceElevated: true,
      toolbarHeight: 70,
      leading: GestureDetector(
        child: Icon(
          Icons.arrow_back,
        ),
        onTap: () {
          setState(() {
            choiseAppBar = 'mainAppBar';
          });
        },
      ),
    );

    appBarList = <String, SliverAppBar>{
      'mainAppBar': mainAppBar,
      'searchAppBar': searchAppBar,
    };

    return WillPopScope(
      onWillPop: choiseAppBar == 'mainAppBar' ? Exit : Back,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
            physics: NeverScrollableScrollPhysics(),
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                appBarList[choiseAppBar],
              ];
            },
            body: choiseAppBar == 'mainAppBar'
                ? PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(bottomBarPages.length,
                        (index) => bottomBarPages[index]),
                  )
                : choiseAppBar == 'searchAppBar'
                    ? Center(
                        child: Text(
                          'اطلاعاتی موجود نیست',
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    : Center(
                        child: Text(
                          'صفحه ایجاد نشده !!!',
                          style: TextStyle(fontSize: 17),
                        ),
                      )),
        extendBody: true,
        bottomNavigationBar: AnimatedNotchBottomBar(
          notchBottomBarController: notchBottomBarController,
          color: MyThemes.primeryColor,
          showLabel: false,
          notchColor: MyThemes.secondaryColor,
          bottomBarItems: const [
            BottomBarItem(
              inActiveItem: Icon(FontAwesomeIcons.user),
              activeItem: Icon(FontAwesomeIcons.user),
              itemLabel: 'حساب کاربری',
            ),

            ///svg example
            BottomBarItem(
              inActiveItem: Icon(FontAwesomeIcons.chartBar),
              activeItem: Icon(FontAwesomeIcons.chartBar),
              itemLabel: 'آمار و گزارشات',
            ),
            BottomBarItem(
              inActiveItem: Icon(CupertinoIcons.home),
              activeItem: Icon(CupertinoIcons.home),
              itemLabel: 'صفحه اصلی',
            ),
            BottomBarItem(
              inActiveItem: Icon(Icons.wallet, size: 27),
              activeItem: Icon(Icons.wallet, size: 27),
              itemLabel: 'کیف پول',
            ),
            BottomBarItem(
              inActiveItem: Icon(CupertinoIcons.chat_bubble_2, size: 27),
              activeItem: Icon(CupertinoIcons.chat_bubble_2, size: 27),
              itemLabel: 'تالار گفتگو',
            ),
          ],
          onTap: (index) {
            notchBottomBarController.index = index;
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInCirc,
            );
          },
        ),
      ),
    );
  }
}
