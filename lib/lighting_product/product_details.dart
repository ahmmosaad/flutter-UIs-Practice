import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_practice/lighting_product/const_lighting.dart';


class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {

    int colorIndex  = 2;



    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: CustomPaint(
          painter: CurvedSideContainer(
            backGroundColor: productBackColors[colorIndex],
          ),
          child: Column(
            children: [
              Container(

                height: size.height * .5,
                width: size.width,
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 50, top: 30),
                        color: Colors.white30,
                        width: size.width * .2,
                        height: size.height * .5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ImageIcon(AssetImage('asset/icons/shopping.png'), color: Colors.white,size: 35,),
                            Spacer(),
                            ColorContainer(color: productBackColors[0], isActive: colorIndex == 0 ? true : false,indexFu: (){
                                setState(() {
                                colorIndex = 0;
                                print(colorIndex);
                              });
                            },),
                            ColorContainer(color: productBackColors[1],isActive: colorIndex == 1 ? true : false, indexFu: (){
                              setState(() {
                                colorIndex = 1;
                                print(colorIndex);
                              });
                            },),
                            ColorContainer(color: productBackColors[2],isActive: colorIndex == 2 ? true : false, indexFu: (){
                              setState(() {
                                colorIndex = 2;
                                print(colorIndex);
                              });
                            },),
                            Spacer(),
                            Icon(Icons.favorite_border,color: Colors.white,size: 35,),
                          ],
                        ),
                      ),
                    ),
                    Image.asset('asset/lighting_products/supermaic.png', height: size.height * .45,)

                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: size.width,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text('Lamp Supermatic one CS5', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                          Text('Designer:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Text(' Kateryna Sokolove', style: TextStyle( fontSize: 17, color: Colors.grey),)
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(children: [
                          Text('Material:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Text(' Brass, Painted Steel', style: TextStyle( fontSize: 17, color: Colors.grey),)
                        ],),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 20),
                        child: Text('€ 580', style: TextStyle(color: productBackColors[2], fontSize: 30, fontWeight: FontWeight.bold),),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: metricDetailsColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Icon(FontAwesomeIcons.rulerHorizontal, size: 33,color: Colors.black54,),
                                Text('17 cm', style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: metricDetailsColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(

                              children: [
                                Icon(FontAwesomeIcons.rulerVertical, size: 33,color: Colors.black54,),
                                SizedBox(height: 5,),
                                Text('45 cm', style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: metricDetailsColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Icon(FontAwesomeIcons.circleNotch, size: 33,color: Colors.black54,),
                                SizedBox(height: 5,),
                                Text('15 cm', style: TextStyle(color: Colors.grey),),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: metricDetailsColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Icon(FontAwesomeIcons.bolt, size: 33,color: Colors.black54,),
                                SizedBox(height: 5,),
                                Text('10 W', style: TextStyle(color: Colors.grey),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * .1,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Spacer(),
                    ImageIcon(AssetImage('asset/icons/shopping.png'),color: productBackColors[2],size: 40,),
                    Spacer(),
                    Container(
                      height: size.height*.1,
                      width: size.width * .6,
                      decoration: BoxDecoration(
                        color: productBackColors[2],
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                      ),
                      child: Center(child: Text('Buy Now', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),)),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}


class CurvedSideContainer extends CustomPainter{
  final Color backGroundColor;
  CurvedSideContainer({this.backGroundColor});

  @override
  void paint(Canvas canvas, Size size) {
     var paint = Paint();
     paint.color = backGroundColor;
     paint.style = PaintingStyle.fill; // Change this to fill

     var path = Path();

     
     path.moveTo(0, size.height *.35);
     path.relativeCubicTo(
         size.width *.05, size.height * .15,
         size.width * .95 , size.height * 0,
         size.width , size.height * .15);
     path.lineTo(size.width, 0);
     path.lineTo(0, 0);
     canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
   return true;
  }

}



class ColorContainer extends StatefulWidget {

  final Color color;
  final bool isActive;
  final Function indexFu;
  ColorContainer({this.color, this.isActive, this.indexFu});


  @override
  _ColorContainerState createState() => _ColorContainerState();
}
class _ColorContainerState extends State<ColorContainer> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.indexFu,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: CircleAvatar(
          radius: 12,
          backgroundColor: widget.isActive ? Colors.white.withOpacity(.7):Colors.white.withOpacity(0) ,
          child: CircleAvatar(
            radius: 8,
            backgroundColor: widget.color.withOpacity(1),

          ),
        ),
      ),
    );
  }
}
