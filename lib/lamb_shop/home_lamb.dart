

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_practice/lamb_shop/consts.dart';
import 'package:ui_practice/lamb_shop/product_details.dart';

class HomeLamb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.alignLeft,
              color: iconColor,
            ),
            onPressed: (){}),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.add_shopping_cart, color: iconColor))
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 15),
        height: size.height,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Pics',
              style: TextStyle(
                  color: iconColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Container(
              height: 50,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Text(
                      'Lighting',
                      style: TextStyle(color: iconColor, fontSize: 20),
                    ),
                    margin: EdgeInsets.only(right: size.width * .1),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: size.width * .1),
                    child: Text(
                      'Decorative',
                      style: TextStyle(color: listTextColor, fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: size.width * .1),
                    child: Text(
                      'Furniture',
                      style: TextStyle(color: listTextColor, fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: size.width * .1),
                    child: Text(
                      'Painting',
                      style: TextStyle(color: listTextColor, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * .4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails()));

                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            width: size.width * .7,
                            decoration: BoxDecoration(
                                color: lambBackColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                boxShadow: [
                                  BoxShadow(
                                    color: listTextColor.withOpacity(.5),
                                    blurRadius: 50.0, //extend the shadow
                                    offset: Offset(
                                      0, // Move to right 10  horizontally
                                      0, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ]),
                          ),
                          Positioned(
                              left: 50,
                              bottom: 0,
                              child: Image.asset(
                                'asset/lamp_shop/lamb.png',
                                height: size.height * .405,
                              )),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: mainColor,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(25)),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '250 in stock',
                                    style: TextStyle(color: mainColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 30,
                            right: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Table Lamb',
                                  style:
                                      TextStyle(color: mainColor, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Bedroom nostrud exerc itiation ullamco uerion lecuts lamb',
                                  style: TextStyle(
                                      color: fontDescColor, fontSize: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '\$66.00',
                                  style:
                                      TextStyle(color: mainColor, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            width: size.width * .7,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                boxShadow: [
                                  BoxShadow(
                                    color: listTextColor.withOpacity(.1),
                                    blurRadius: 50.0, //extend the shadow
                                    offset: Offset(
                                      0, // Move to right 10  horizontally
                                      0, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ]),
                          ),
                          Positioned(
                              left: 50,
                              bottom: 0,
                              child: Image.asset(
                                'asset/lamp_shop/lamb.png',
                                height: size.height * .405,
                              )),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: mainColor,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(25)),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '250 in stock',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 30,
                            right: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Table Lamb',
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Bedroom nostrud exerc itiation ullamco uerion lecuts lamb',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '\$66.00',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25)),
              ),
              height: size.height * .27,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RotatedBox(
                      child: Text(
                        'New Items',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      quarterTurns: -1,
                    ),
                  ),
                  Container(
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          height: size.height * .25,
                          width: size.width * .5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 35,
                          child: Image.asset(
                            'asset/lamp_shop/chair.png',
                            height: size.height * .27,
                            width: size.width * .5,
                          ),
                        ),
                        Positioned(
                          top: 55,
                          right: 100,
                          left: 15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Aramer Chair',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey, fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\$53.25',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          height: size.height * .25,
                          width: size.width * .5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(25))),
                        ),
                        Positioned(
                          left: 60,
                          top: 0,
                          bottom: 9,

                          child: Image.asset(
                            'asset/lamp_shop/vasa.png',
                            height: size.height * .25,
                            width: size.width * .5,
                          ),
                        ),
                        Positioned(
                          top: 55,
                          right: 100,
                          left: 25,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Flower Tob',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey, fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\$12.07',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
