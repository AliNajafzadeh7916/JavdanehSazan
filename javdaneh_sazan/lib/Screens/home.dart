import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:javdaneh_sazan/Screens/home_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  List<Image> image = [
    Image.asset('assets/images/1.jpg', fit: BoxFit.cover),
    Image.asset('assets/images/2.jpg', fit: BoxFit.cover),
    Image.asset('assets/images/4.jpg', fit: BoxFit.cover),
    Image.asset('assets/images/3.jpg', fit: BoxFit.cover),
  ];
  List<Image> image2 = [
    Image.asset('assets/images/2.jpg', fit: BoxFit.cover),
    Image.asset('assets/images/3.jpg', fit: BoxFit.cover),
    Image.asset('assets/images/1.jpg', fit: BoxFit.cover),
    Image.asset('assets/images/4.jpg', fit: BoxFit.cover),
  ];
  List<Image> image3 = [
    Image.asset('assets/images/3.jpg', fit: BoxFit.cover),
    Image.asset('assets/images/4.jpg', fit: BoxFit.cover),
    Image.asset('assets/images/1.jpg', fit: BoxFit.cover),
    Image.asset('assets/images/2.jpg', fit: BoxFit.cover),
  ];
  List<String> text1 = ['شازده کوچولو', 'مدریت خشم', 'کتابخانه نیمه شب', 'رشد'];
  List<String> text2 = [
    'مدیریت خشم',
    'رشد',
    'شازده کوچولو ',
    'کتابخانه نیمه شود',
  ];
  List<String> text3 = [
    'رشد',
    'کتابخانه نیمه شب',
    'شازده کوچولو',
    'مدیریت خشم',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 17,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            slider_home(context),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('پربازدیدترین کتاب ها',
                                style: Theme.of(context).textTheme.titleMedium),
                            Container(
                              height: 1,
                              width: 127,
                              color: Colors.black54,
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(blurRadius: 1, color: Colors.black38)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: ListView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.horizontal,
                                padding:
                                    const EdgeInsets.only(left: 8, right: 4),
                                itemBuilder: ((context, index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 17, right: 7),
                                        child: Container(
                                          child: image[index],
                                          decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          width: 130,
                                          height: 150,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(text1[index])
                                    ],
                                  );
                                })),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 17),
            Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('جدیدترین کتاب ها',
                                style: Theme.of(context).textTheme.titleMedium),
                            Container(
                              height: 1,
                              width: 120,
                              color: Colors.black54,
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(blurRadius: 1, color: Colors.black38)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: ListView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.horizontal,
                                padding:
                                    const EdgeInsets.only(left: 8, right: 4),
                                itemBuilder: ((context, index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 17, right: 7),
                                        child: Container(
                                          child: image2[index],
                                          decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          width: 130,
                                          height: 150,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        text2[index],
                                      )
                                    ],
                                  );
                                })),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 17),
            Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('مشهورترین ها ',
                                style: Theme.of(context).textTheme.titleMedium),
                            Container(
                              height: 1,
                              width: 127,
                              color: Colors.black54,
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(blurRadius: 1, color: Colors.black38)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: ListView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.horizontal,
                                padding:
                                    const EdgeInsets.only(left: 8, right: 4),
                                itemBuilder: ((context, index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 17, right: 7),
                                        child: Container(
                                          child: image3[index],
                                          decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          width: 130,
                                          height: 150,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(text3[index])
                                    ],
                                  );
                                })),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 110),
          ],
        ),
      ),
    ));
  }

  AspectRatio slider_home(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2,
        child: Stack(
          children: [
            PageView.builder(
              scrollBehavior: CupertinoScrollBehavior(),
              controller: _pageController,
              itemCount: 2,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => ClipRRect(
                child: Image(
                  image: AssetImage(
                    'assets/images/slider' + (index + 1).toString() + '.jpg',
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 8,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 2,
                  axisDirection: Axis.horizontal,
                  effect: WormEffect(
                      spacing: 4.0,
                      radius: 4.0,
                      dotWidth: 20.0,
                      dotHeight: 2.0,
                      paintStyle: PaintingStyle.fill,
                      dotColor: Colors.grey.shade400,
                      activeDotColor:
                          Theme.of(context).colorScheme.onBackground),
                ),
              ),
            ),
          ],
        ));
  }
}
