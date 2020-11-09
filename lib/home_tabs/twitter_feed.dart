import 'package:flutter/material.dart';
import 'package:flutterapplicstion1/shared_ui/drawer_.dart';


class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter Feed'),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search),onPressed: (){},)
      ],
      ),
      drawer: NavigationDrawer(),

    body: ListView.builder(
        padding: EdgeInsets.all(8),
      itemBuilder: (context,positing){
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Card(
      child: Column(
              children: <Widget>[
                _CardHeader(),
                _CardBody(),
                _drawLine(),
                _CardFooter(),
              ],
            ),
          ),
        );

      },
      itemCount: 20,),
    );
  }
  Widget _CardHeader(){
    return Row(
      children: <Widget>[
       Padding(
         padding: const EdgeInsets.all(16),
         child: CircleAvatar(
           backgroundImage:ExactAssetImage('assets/images/asd.png'),
            radius: 24,),
       ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Christina Meyers',style: TextStyle(color: Colors.grey.shade900,fontSize: 16,fontWeight:FontWeight.w600),),
                Text('@Ch_meyers',style:TextStyle(color: Colors.grey,),),
              ],
            ),
            SizedBox(height: 8,),
            Text('Fri,12 May 2017 .14.30'),
            ],
        ),
      ],

    );
  }
  Widget _CardBody(){
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,bottom: 8),
      child: Text('abdidkdkdkdkdkdkkdkdkdkdkdkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkdddddddddkd',
        style: TextStyle(fontSize: 16,height: 1.2,color: Colors.grey.shade900),),
    );

  }
  Widget _CardFooter(){
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          Row(
      children: <Widget>[

      IconButton(icon: Icon(Icons.repeat,size: 28,),color: Colors.orange,onPressed: (){} ),
      Text('25',style: TextStyle(fontSize: 16,color: Colors.grey),),
    ],
      ),
    Row(
      children: <Widget>[
     FlatButton(onPressed: (){},child: Text('SHARE',style: TextStyle(color: Colors.orange),),),
        FlatButton(onPressed: (){},child: Text('OPEN',style: TextStyle(color: Colors.orange),),),

      ],
      ),
    ],
      ),
    );

  }

  Widget _drawLine() {
    return Container(
      height: 1,
      color: Colors.grey.shade200,
      margin: EdgeInsets.only(top: 16),
    );
  }
}
