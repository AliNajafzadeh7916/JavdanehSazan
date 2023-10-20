import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Color color;
    final String title;
    final String sort;
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, ),
            child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Column(children: [Row(
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
                  TextButton(onPressed: () {}, child: const Text('مشهاده همه')),
                ],
              ),
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [BoxShadow(blurRadius: 1, color: Colors.black38)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 170,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: ListView.builder(
                          itemCount: 8,
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 8, right: 4),
                          itemBuilder: ((context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 17, right: 7),
                                  child: Container(
                            child: Icon(Icons.hourglass_empty_outlined),
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(5)),
                                    width: 167,
                                    height: 111,
                                    
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(' این است کتابم')
                              ],
                            );
                          })),
                    ),
                   
                  ],
                ),
              )],),
            ],
          ),
          SizedBox(height: 1,),
          Column(
            children: [
              Column(children: [Row(
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
                  TextButton(onPressed: () {}, child: const Text('مشهاده همه')),
                ],
              ),
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [BoxShadow(blurRadius: 1, color: Colors.black38)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 170,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: ListView.builder(
                          itemCount: 8,
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 8, right: 4),
                          itemBuilder: ((context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 17, right: 7),
                                  child: Container(
                            child: Icon(Icons.hourglass_empty_outlined),
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(5)),
                                    width: 167,
                                    height: 111,
                                    
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(' این است کتابم')
                              ],
                            );
                          })),
                    ),
                   
                  ],
                ),
              )],),
            ],
          ),
          SizedBox(height: 17,),
          Column(
            children: [
              Column(children: [Row(
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
                  TextButton(onPressed: () {}, child: const Text('مشهاده همه')),
                ],
              ),
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [BoxShadow(blurRadius: 1, color: Colors.black38)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 170,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: ListView.builder(
                          itemCount: 8,
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 8, right: 4),
                          itemBuilder: ((context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 17, right: 7),
                                  child: Container(
                            child: Icon(Icons.hourglass_empty_outlined),
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(5)),
                                    width: 167,
                                    height: 111,
                                    
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(' این است کتابم')
                              ],
                            );
                          })),
                    ),
                   
                  ],
                ),
              )],),
            ],
          )
        ],
            ),
            
          ));
  }
}
