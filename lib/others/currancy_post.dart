import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/others/const.dart';
import 'package:ui_practice/others/creat_post.dart';


class CurrancyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    final String operationNum = '#13213';
    final String date = '12/10/20';
    final String dollares = '\$100';
    final String pounds = '100 LE';
    final String transferValue  = '\$18';


    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.add_circle), onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (c)=> CreatePost()));
        }),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        height: size.height,
        width: size.width,
        child: Center(
          child:
            NewPost(size: size, operationNum: operationNum, dollares: dollares, transferValue: transferValue, date: date, pounds: pounds),



        ),

      ),
    );
  }
}

class NewPost extends StatelessWidget {
  const NewPost({
    Key key,
    @required this.size,
    @required this.operationNum,
    @required this.dollares,
    @required this.transferValue,
    @required this.date,
    @required this.pounds,
  }) : super(key: key);

  final Size size;
  final String operationNum;
  final String dollares;
  final String transferValue;
  final String date;
  final String pounds;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:   size.height * .32,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            height: size.height * .25,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: pDark
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(operationNum, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white60),),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: pLight,
                    ),
                    Text(dollares, style: TextStyle(fontSize: 16,  color: Colors.white),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Spacer(flex: 3,),
                    Text('Sell', style: TextStyle(fontSize: 14,  color: Colors.white70),),
                    CircleAvatar(
                      backgroundColor: pLight,
                      child: CircleAvatar(
                          backgroundColor: pDark,
                          child: Icon(Icons.import_export)),
                    ),
                    Text('Buy', style: TextStyle(fontSize: 14,  color: Colors.white70),),
                    Spacer(),
                    Text(transferValue, style: TextStyle(fontSize: 16,  color: Colors.white),),
                    Spacer(),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(date, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white60),),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: pLight,
                    ),
                    Text(pounds, style: TextStyle(fontSize: 16,  color: Colors.white),)
                  ],
                ),

              ],
            ),
          ),
          Comment(size: size,),
        ],
      ),
    );
  }
}

class Comment extends StatefulWidget {
  final Size size;
  const Comment({
    this.size

  });

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override

   bool clickedCOmment = false;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          clickedCOmment = !clickedCOmment;
          print(clickedCOmment);
        });
      },
      child: clickedCOmment ?
      Container(
        width: widget.size.width * .7,
        height: widget.size.height * .065,
        decoration: BoxDecoration(
          color: primary,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12))

        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            cursorColor: Colors.white54,
            decoration: InputDecoration(
              hintText: 'Type Your Comment',
              hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white54,),
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ) :Container(
        height:40,
        width: widget.size.width * .35,
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12))
        ),
        child: Center(child: Text('Comment', style: TextStyle(color: Colors.white, letterSpacing: 1.5),)),
      ),
    );
  }
}
