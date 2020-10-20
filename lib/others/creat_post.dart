import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_practice/others/const.dart';

class CreatePost extends StatefulWidget {
  @override
  _CreatePostState createState() => _CreatePostState();
}

int firstItem = 0;
int secondItem = 0;
int thirdItem = 0;

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;



    return Scaffold(
      appBar: AppBar(
        title: Text('New Post'),
        backgroundColor: pDark,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 15,right: 15, bottom: 15),
        height: size.height,
        width: size.width,
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Container(
                    height: size.height * .07,
                    width: size.width / 4,
                    decoration: BoxDecoration(
                      border: Border.all(color: pDark),

                    ),
                    child: Center(
                      child: DropdownButton(
                        elevation: 0,
                        dropdownColor: pLight,
                        items: [
                          DropdownMenuItem(child: Text('1'),value: 1, ),
                          DropdownMenuItem(child: Text('2'),value: 2, ),
                          DropdownMenuItem(child: Text('3'),value: 3, ),
                        ], onChanged: (v){
                        setState(() {
                          firstItem = v;
                        });
                      },
                        value: 1,

                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: size.height * .07,
                    width: size.width / 4,
                    decoration: BoxDecoration(
                      border: Border.all(color: pDark),

                    ),
                    child: Center(
                      child: Text('$firstItem'),
                    ),
                  ),
                ),

              ],
            ),
            CircleAvatar(
              backgroundColor: pLight,
              child: CircleAvatar(
                  backgroundColor: pDark,
                  child: Icon(Icons.import_export)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Container(
                    height: size.height * .07,
                    width: size.width / 4,
                    decoration: BoxDecoration(
                      border: Border.all(color: pDark),

                    ),
                    child: Center(
                      child: DropdownButton(
                        elevation: 0,
                        dropdownColor: pLight,
                        items: [
                        DropdownMenuItem(child: Text('1'),value: 1, ),
                        DropdownMenuItem(child: Text('2'),value: 2, ),
                        DropdownMenuItem(child: Text('3'),value: 3, ),
                      ], onChanged: (v){
                        setState(() {
                          secondItem = v;
                        });
                      },
                        value: 1,

                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: size.height * .07,
                    width: size.width / 4,
                    decoration: BoxDecoration(
                      border: Border.all(color: pDark),

                    ),
                    child: Center(
                      child: Text('$secondItem'),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: size.height * .1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:30),
                  child: Text('PRICE', style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Expanded(child: SizedBox()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
              child: TextField(
                cursorColor: pDark,
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: pDark)),
                  focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: pLight)))

      ),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:30, top: 10),
                  child: Text('FEES', style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Expanded(child: SizedBox()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(onPressed: (){}, child: Text('B100', style: TextStyle(color: Colors.white),), color: pDark,),
                  FlatButton(onPressed: (){}, child: Text('S100', style: TextStyle(color: Colors.white),), color: pDark,),
                  FlatButton(onPressed: (){}, child: Text('50/50', style: TextStyle(color: Colors.white),), color: pDark,),

                ],
              ),
            ),
            Expanded(
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    color: pDark,
                    height: size.height * 0.08,
                    width: size.width * .8,
                    child: Center(child: Text('ADD POST', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
                  ),
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
