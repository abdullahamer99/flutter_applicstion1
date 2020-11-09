import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapplicstion1/shared_ui/drawer_.dart';

class InstagramFeed extends StatefulWidget {
  @override
  _InstagramFeedState createState() => _InstagramFeedState();
}
 TextStyle _hastag = TextStyle(
   color: Colors.orange
 );
class _InstagramFeedState extends State<InstagramFeed> {
  @override
  Widget build(BuildContext context){
  return Scaffold(
  appBar: AppBar(
  title: Text('InstgramFeeds'),
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
  _drawHeader(),
    _drawTitle(),
    drawHasTags(),
    _draeBdy(),
    _drawFooter(),
  ],
  ),
  ),
  );

  },
  itemCount: 20,),
  );
  }

 Widget _drawHeader() {
return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,

  children: <Widget>[
   Row(
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
               Text('Christina Meyers',
                 style: TextStyle(
                     color: Colors.grey.shade900,
                     fontSize: 16,
                     fontWeight:FontWeight.w600),),
             ],
           ),
           SizedBox(height: 8,),
           Text('Fri,12 May 2017 .14.30'),

         ],
       ),

     ],
   ),
    Row(
      children: <Widget>[
        IconButton(icon:Icon(Icons.favorite),
        onPressed: (){},
          color: Colors.grey.shade400,),
        Transform.translate(offset:Offset(-12,0),
            child: Text('25',style: TextStyle(color: Colors.grey.shade400,fontSize: 16),)),
      ],
    ),
  ],
);
 }


  Widget _drawTitle() {
return Padding(
  padding: const EdgeInsets.only(bottom: 8,left: 16,right: 16),
  child:   Text('We also talk about the future of work as the robots',
    style: TextStyle(color: Colors.grey.shade900),),
);

  }

 Widget drawHasTags() {
 return Container(
   child: Wrap(
     children: <Widget>[
       FlatButton(onPressed: (){},child: Text('#advance',style:_hastag )),
       FlatButton(onPressed: (){},child: Text('#advance',style: _hastag,)),
       FlatButton(onPressed: (){},child: Text('#advance',style: _hastag,)),

     ],
   ),
 );
 }

   Widget _draeBdy() {
     return  SizedBox(
       width: double.infinity,
       height: MediaQuery.of(context).size.height*0.25,
       child: Image(
         
         image: ExactAssetImage('assets/images/asd.png'),
         fit: BoxFit.cover,

       ),
     );

   }

  Widget _drawFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(onPressed: (){},child: Text('10 COMMENTS',style: _hastag,),),
       Row(
         children: <Widget>[
           FlatButton(onPressed: (){},child: Text('SHARE',style: _hastag,),),
           FlatButton(onPressed: (){},child: Text('OPEN',style: _hastag,),),
         ],
       ),

      ],
    );

  }



}
