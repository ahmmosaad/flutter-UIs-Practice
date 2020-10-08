
import 'package:flutter/material.dart';
import 'package:ui_practice/lamb_shop/consts.dart';
import 'package:ui_practice/lamb_shop/home_lamb.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Designs'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: lambBackColor,
              child: Text('Lamb shop'),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeLamb()));
                })
          ],
        ),
      ),
    );
  }
}
