import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemBuilder:(context,position){
       return Card(
       child: _drawSingleRow()
      );

    },
    itemCount: 20);
  }

  Widget _drawSingleRow(){
    return   Padding(
      padding:const EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          SizedBox(
            child: Image(image: ExactAssetImage('assets/images/asd.png'),
              fit:BoxFit.cover,
            ),
            width: 124,
            height: 124,
          ),
          SizedBox(width: 16,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('The World Global Waring Annual Summit',
                  maxLines: 2,
                  style:TextStyle(
                    fontSize: 16,
                    fontWeight:FontWeight.w600,),
                ),
                SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[
                    Text('Micheal Adams'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: <Widget>[
                        Icon( Icons.timer ),
                        Text('15 min'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
