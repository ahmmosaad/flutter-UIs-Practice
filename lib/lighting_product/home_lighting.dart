import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_practice/lighting_product/const_lighting.dart';
import 'package:ui_practice/lighting_product/product_details.dart';

class HomeLighting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                leading: Icon(Icons.menu, color: Colors.black,),
                actions: [
                  IconButton(icon: Icon(Icons.search, color: Colors.black), onPressed: null),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageIcon(AssetImage('asset/icons/shopping.png'), color: Colors.black,),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                height: size.height * .55,
                width: size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Trending',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(fontSize: 22, color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails()));
                           },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(

                                    height: size.height * .33,
                                    width: size.width / 1.9,
                                    decoration: BoxDecoration(
                                        color: elMedium,
                                        borderRadius: BorderRadius.all(Radius.circular(25))
                                    ),
                                    child: Image.asset('asset/lighting_products/ElC50.png', fit: BoxFit.cover,),
                                  ),
                                  SizedBox(height: 15,),
                                  Text(
                                    'EL Lamp Medium Noom',
                                    style: TextStyle(
                                        color: Colors.grey.withOpacity(.9),
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Text('€ 380', style: TextStyle(color: catgBackColor, fontSize: 16, fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(

                                    height: size.height * .33,
                                    width: size.width / 1.9,
                                    decoration: BoxDecoration(
                                        color: elLambBack,
                                        borderRadius: BorderRadius.all(Radius.circular(25))
                                    ),
                                    child: Image.asset('asset/lighting_products/elMedium.png', fit: BoxFit.cover,),
                                  ),
                                  SizedBox(height: 15,),
                                  Text(
                                    'EL Lamp Medium CS2',
                                    style: TextStyle(
                                        color: Colors.grey.withOpacity(.9),
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Text('€ 420', style: TextStyle(color: catgBackColor, fontSize: 16, fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                     decoration: BoxDecoration(
                       color: catgBackColor,
                       borderRadius: BorderRadius.only(topLeft: Radius.circular(35)),
                     ),
                    child: Column(
                      children: [
                        TabBar(
                            isScrollable: true,
                            indicatorColor: Colors.white,
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: [
                          Text('Collection'),
                          Text('New'),
                          Text('Popular'),
                          Text('Best Selling'),
                        ]),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 5, top: 15, right: 15, left: 25),
                                    height: size.height * .22,
                                    width: size.width * .35,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset('asset/lighting_products/supermatic_group.png', fit: BoxFit.cover,),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                  Text('Supermatic', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 5, top: 15, right: 15),
                                    height: size.height * .22,
                                    width: size.width * .35,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset('asset/lighting_products/ElC50_Group.png', fit: BoxFit.cover,),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                  Text('EL', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 5, top: 15, right: 15),
                                    height: size.height * .22,
                                    width: size.width * .35,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset('asset/lighting_products/noom.png', fit: BoxFit.cover,),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                  Text('Malevinic', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
