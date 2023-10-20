import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                hintText: 'جستجو',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          ExpandablePanel(
            theme: const ExpandableThemeData(
              iconColor: Colors.grey,
              iconSize: 30,
              // iconRotationAngle: 1.6,
              iconPadding: EdgeInsets.all(10),
            ),
            header: const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(CupertinoIcons.list_dash),
                  SizedBox(width: 10),
                  Text(
                    'دسته بندی ها',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            collapsed: const Row(children: []),
            expanded: Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(CupertinoIcons.circle_grid_hex),
                      title: Text('ادبی'),
                      onTap: () {
                        setState(() {
                          controller.text = 'ادبی';
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(CupertinoIcons.circle_grid_hex),
                      title: Text('طنز'),
                      onTap: () {
                        setState(() {
                          controller.text = 'طنز';
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(CupertinoIcons.circle_grid_hex),
                      title: Text('رمان'),
                      onTap: () {
                        setState(() {
                          controller.text = 'رمان';
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(CupertinoIcons.circle_grid_hex),
                      title: Text('اجتماعی'),
                      onTap: () {
                        setState(() {
                          controller.text = 'اجتماعی';
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(CupertinoIcons.circle_grid_hex),
                      title: Text('مدرن'),
                      onTap: () {
                        setState(() {
                          controller.text = 'مدرن';
                        });
                      },
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
