
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                Text ('پربازدیدترین کتاب ها ',),
             
              ],
            ),
            
          ],
        ),
        

      ],
    ));
  }
}
