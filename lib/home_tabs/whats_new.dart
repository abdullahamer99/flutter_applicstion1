import 'package:flutter/material.dart';
 import 'dart:async';
import 'package:flutterapplicstion1/Api/posts_api.dart';
import 'package:flutterapplicstion1/home_tabs/sliver_21.dart';
import 'package:flutterapplicstion1/model/post_model_api.dart';
import 'package:http/http.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}
class _WhatsNewState extends State<WhatsNew> {
// PostaAPI postaAPI=PostaAPI();
  @override
     Widget build(BuildContext context) {
    // postaAPI.fetChPostsByCategoryId();
    return  SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _drawHeader(),
          _drawTopStories(),
        ],

      ),
    );
  }
                Widget _drawHeader() {
    TextStyle _textstyle = TextStyle(
      fontSize: 22,
      color:Colors.white,
      fontWeight: FontWeight.w600,
    );
    TextStyle _textstyle1 = TextStyle(
      fontSize: 18,
      color: Colors.grey,
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height* 0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/asd.png'),
        fit: BoxFit.cover)
      ),
      child:GestureDetector(
       onTap:(){  Navigator.push(context,MaterialPageRoute(
           builder: (context) {
              return HomeSliver();
           })); },

        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(left: 48,right: 48),
                child: Text('How Terriers &Royals Gatecrashed Final',style: _textstyle,
                  textAlign: TextAlign.center,),
              ),
              SizedBox(height:10,),
              Padding(
                padding: const EdgeInsets.only(left: 34,right: 34),
                child: Text('Lorem ipsum dolor sit amet,consectetur adipiscing elit, sed do eisusmod.',style: _textstyle1,
                  textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ),
    );
  }
                Widget _drawTopStories() {
                return Container(
      color: Colors.grey.shade100,
      child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Padding(
          padding: const EdgeInsets.only(left: 16,top: 16),
          child: _drawSectionTitle('Top Stories'),
          ),
          Padding(
                padding:EdgeInsets.all(8.0),
                  child:Card(
                    child: Column(
                                children:[
                                _drawSingleRow(),
                                _drawDivider(),
                                _drawSingleRow(),
                                _drawDivider(),
                                _drawSingleRow(),
                              ],
                         ),
                        ),
                        ),
            Padding(
                       padding: EdgeInsets.all(12),
                       child:Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                      Padding(
                      padding: const EdgeInsets.only(left: 16,bottom: 8,top: 8),
                      child: _drawSectionTitle('Recent Updates'),
                      ),
                       _drawRecentUpdatesCard(Colors.deepOrange),
                        _drawRecentUpdatesCard(Colors.teal),
                       SizedBox(
                       height: 48,
                    )
                   ],
                    )
                   ),
                      ],
                    ),
                   );
                }

                Widget _drawRecentUpdatesCard(Color color) {
                    return Card(
                   child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 _widgetContainer(context),
                 Padding(
                   padding: const EdgeInsets.only(top: 16, left: 16),
                   child: Container(
                     padding: EdgeInsets.only(
                         left: 24, right: 24, top: 2, bottom: 2),
                     decoration: BoxDecoration(
                       color: color,
                       borderRadius: BorderRadius.circular(4),
                     ),
                     child: Text('SPORT', style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.w500,
                     ),),
                   ),
                 ),
                 Padding(
                   padding: EdgeInsets.only(
                       left: 16, right: 16, top: 16, bottom: 8),
                   child: Text('Vettel is Ferrari Number One - Hamilton',
                     style: TextStyle(
                       fontSize: 18,
                     ),),
                 ),
                 Padding(
                   padding: EdgeInsets.only(
                       left: 16, right: 16, top: 8, bottom: 16),
                   child: Row(
                     children: <Widget>[
                       Icon(Icons.timer,
                           color: Colors.grey,
                           size: 18),
                       SizedBox(width: 4,),
                       Text('15 Min',
                         style: TextStyle(
                           color: Colors.grey,
                           fontSize: 14,
                         ),)
                     ],
                   ),
                 ),
               ],
           ),
    );
  }
                Widget _drawSingleRow( ){
                 return Padding(
                  padding:const EdgeInsets.all(12),
                   child: Row(
      children: <Widget>[
        SizedBox(
          child: Image(image: ExactAssetImage('assets/images/asd.png'),//post.featuredImage
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
              Text('f',//post.title
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
                Widget _widgetContainer( context){
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
          image:ExactAssetImage('assets/images/asd.png'),
          fit:BoxFit.cover,
        )
    ),
    width:double.infinity,
    height:MediaQuery.of(context).size.height* 0.25 ,
  );

}
                Widget errors(BuildContext context) {
          return Container(
            child: Center(
              child: Text('erros'),
            ),
          );
       }
                Widget _drawDivider(){
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade100,

    );
  }
                Widget _drawSectionTitle (String title) {
    return Text(title,
      style: TextStyle(
        color: Colors.grey.shade800,
        fontWeight:FontWeight.w500,
        fontSize: 16,
      ),);
  }

                }









