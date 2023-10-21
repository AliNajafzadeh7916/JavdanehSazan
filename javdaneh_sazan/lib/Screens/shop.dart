import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: 55,
                    width: 340,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'کتاب های رایگان',
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            Icon(CupertinoIcons.gift_fill)
                          ],
                        ))),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: 55,
                    width: 340,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'کتاب های صوتی',
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            Icon(Icons.headphones)
                          ],
                        ))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text('پربازدیدترین کتاب ها',
                            style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: 127,
                      color: Colors.black54,
                    )
                  ],
                ),
                TextButton(onPressed: () {}, child: const Text('بیشتر')),
              ],
            ),
            Container(
              height: 195,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: ListView.builder(
                  controller: scrollController,
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 8, right: 4),
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 17,
                            left: 11,
                          ),
                          child: Container(
                            child: Icon(Icons.hourglass_empty_outlined),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(2)),
                            width: 105,
                            height: 105,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('title'),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [Text('30000'), Text('تومان')]),
                          ],
                        ),
                      ],
                    );
                  })),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text('پربازدیدترین کتاب ها',
                            style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: 127,
                      color: Colors.black54,
                    )
                  ],
                ),
                TextButton(onPressed: () {}, child: const Text('بیشتر')),
              ],
            ),           Container(
              height: 195,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: ListView.builder(
                  controller: scrollController,
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 8, right: 4),
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 17,
                            left: 11,
                          ),
                          child: Container(
                            child: Icon(Icons.hourglass_empty_outlined),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(2)),
                            width: 105,
                            height: 105,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('title'),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [Text('30000'), Text('تومان')]),
                          ],
                        ),
                      ],
                    );
                  })),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text('پربازدیدترین کتاب ها',
                            style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: 127,
                      color: Colors.black54,
                    )
                  ],
                ),
                TextButton(onPressed: () {}, child: const Text('بیشتر')),
              ],
            ),
            Container(
              height: 195,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: ListView.builder(
                  controller: scrollController,
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 8, right: 4),
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 17,
                            left: 11,
                          ),
                          child: Container(
                            child: Icon(Icons.hourglass_empty_outlined),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(2)),
                            width: 105,
                            height: 105,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('title'),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [Text('30000'), Text('تومان')]),
                          ],
                        ),
                      ],
                    );
                  })),
            ),
         SizedBox(height: 65,) ]),
          
        ),
      ),
    );
  }
}
