import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AutomaticPageView extends StatefulWidget {
  @override
  _AutomaticPageViewState createState() => _AutomaticPageViewState();
}

class _AutomaticPageViewState extends State<AutomaticPageView> {
  final PageController _pageController = PageController();
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _pageController.dispose();
  
    super.dispose();
  }

  void _startAutoScroll() {
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          child: PageView.builder(
           
            controller: _pageController,
           
            itemCount: 4,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => ClipRRect(
              child: Container(
                height: 300,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 8,
          child: Center(
            child: SmoothPageIndicator(
              controller: _pageController,
              
              count: 4,
              axisDirection: Axis.horizontal,
              effect: WormEffect(
                  spacing: 4.0,
                  radius: 4.0,
                  dotWidth: 20.0,
                  dotHeight: 2.0,
                  paintStyle: PaintingStyle.fill,
                  dotColor: Colors.grey.shade400,
                  activeDotColor: Theme.of(context).colorScheme.onBackground),
            ),
          ),
        ),
      ],
    );
  }
}
