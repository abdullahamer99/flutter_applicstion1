import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Favorted extends StatelessWidget {
  List<Color> ColorsList=[
    Colors.red,
    Colors.deepOrange,
    Colors.amber,
    Colors.yellow,
    Colors.blueAccent,
    Colors.pink,
    Colors.orange,
    Colors.lime,
  ];
  Random random= Random();
  Color _getRandomcolor(){
    return ColorsList[random.nextInt(ColorsList.length)];
  }
  @override
  Widget build(BuildContext context) {

    return ListView.builder(itemBuilder: (context, position){
      return Card(
        child: Container(
          child: Column(
          children: <Widget>[
            _authorRow(),
            _newitemRow(),
          ],
          ),
        ),

      );
    });
  }
  Widget _authorRow(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
  children: <Widget>[
       Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: ExactAssetImage('assets/images/asd.png'),
            fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
          width: 50,
          height: 50,
        ),

        Column(
          crossAxisAlignment:  CrossAxisAlignment.start ,
          children: <Widget>[
            Text('Michael Adems'),
            SizedBox(height: 8,),
            Row(
              children: <Widget>[
                Text('15 Min.',
                style: TextStyle(color:Colors.grey),),
                Text('Life Style',style: TextStyle(color: _getRandomcolor()), )

              ],

            ),
          ],
        ),

      ],
      ),
          IconButton(icon:Icon(Icons.bookmark_border ),onPressed: (){},
          color: Colors.grey,),

    ],

  );
  }
  Widget _newitemRow(){
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: ExactAssetImage('assets/images/asd.png'),
            fit: BoxFit.cover),
          ),
          width: 124,
          height: 124,
          margin: EdgeInsets.only(right: 16),
    ),
      Expanded(
        child: Column(
          children: <Widget>[
            Text('kookkkkkkkkkkk'),
            Text('kookkkkkkkkkkk'),

          ],
        ),
      )
      ],
    );
  }
}
