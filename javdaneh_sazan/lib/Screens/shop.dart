import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 20),
      child: Scaffold(
        body: Column(children: [Container(
          height: 70,
          width: 200,
          child: ElevatedButton(onPressed: (){}, child:  Text('کتاب های رایگان',style: TextStyle(fontSize: 22,color: Colors.white),)))]),
      ),
    );
  }
}
