import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/lamb_shop/consts.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: lambBackColor,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            AppBar(
              backgroundColor: lambBackColor,
              elevation: 0,
              leading: IconButton(
                  icon: Icon(Icons.keyboard_backspace),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: IconButton(
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                      onPressed: null),
                )
              ],
            ),
            Container(
              height: size.height * .5,
              width: size.width,
              child: Stack(
                children: [
                  Positioned(
                    left: 100,
                    bottom: 0,
                    child: Image.asset(
                      'asset/lamp_shop/lamb.png',
                      height: size.height * .5,
                    ),
                  ),
                  Positioned(
                      top: 130,
                      left: 20,
                      child: Column(
                        children: [
                          Text(
                            'Table Lamb',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 2,
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Container(
                                height: 70,
                                width: 100,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('COLOR', style: TextStyle(color: Colors.white60),),
                                      SizedBox(height: 5,),
                                      Text('BLACK', style: TextStyle(color: Colors.white),),
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white60
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 70,
                                width: 100,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('QUANTITY', style: TextStyle(color: Colors.white60),),
                                      SizedBox(height: 5,),
                                      Text('01', style: TextStyle(color: Colors.white),),
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white60
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                  Positioned(
                      left: 0,
                      bottom: 12,
                      right: 123,
                      child: Divider(
                        color: Colors.white60,
                        thickness: 1,
                      ))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: size.height * .26,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text('Descrption', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  Text(
                      'Lamb for table with steel base used for study and to save eyes from loose vision beacuse of low light Lamb for table with steel base used for study and to save eyes!',
                    style: TextStyle(color: Colors.white54, fontSize: 17, letterSpacing: 1),
                  )
                ],
              ),
            ),
            Expanded(child: Container(
              child:
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Text('\$66.00', style: TextStyle(color: Colors.white, fontSize: 25),),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25))
                      ),
                      child: Center(
                        child: Text('Buy Now', style: TextStyle(color: lambBackColor, fontSize: 25, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  )
                ],
              )
              ,))

          ],
        ),
      ),
    );
  }
}
