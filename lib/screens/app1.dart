import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapplicstion1/pagemodel1.dart';
import 'package:flutterapplicstion1/screenhome.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:flutterapplicstion1/screenhome.dart';
import 'package:shared_preferences/shared_preferences.dart';

class onBoarding extends StatefulWidget {
  @override
 _onBoardingState createState() =>_onBoardingState();
}

class _onBoardingState extends State<onBoarding> {

  List<Pagemodel> pages;

  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);

  void _addpages() {
    pages = List<Pagemodel>();

    pages.add(Pagemodel('Welcom!',
      '1- Make friend is easy as waving hand back and forth in easy step',
        Icons.ac_unit, 'assets/images/bn.png' ));

    pages.add(Pagemodel('Alram',
      '2- Make friend is easy as waving hand back and forth in easy step',
        Icons.access_alarm, 'assets/images/bn1.png'));

    pages.add(Pagemodel('Print',
      '3- Make friend is easy as waving hand back and forth in easy step',
        Icons.print,'assets/images/bn2.png'));

    pages.add(Pagemodel('Map',
      '4- Make friend is easy as waving hand back and forth in easy step',
        Icons.map, 'assets/images/bn3.png'));
  }

  @override
  Widget build(BuildContext context) {
    _addpages();
    return Stack(

      children: <Widget>[
        Scaffold(
        body:PageView.builder(
            itemBuilder: (context, index) {
              return Stack(

                    children: <Widget>[
                      Container(decoration:
              BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage(
                                pages[index].image),
                            fit: BoxFit.cover,
                      ),
                      ),
              ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Transform.translate(
                            child: Icon(pages[index].icons,
                                size: 150,
                                color: Colors.red
                            ),
                            offset: Offset(0, -100),
                          ),
                          Text(
                            pages[index].title,
                            style: TextStyle(color: Colors.red,
                                fontSize: 40,
                            ),

                            textAlign: TextAlign.center,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 100,
                                right: 100,
                                top: 18),
                            child: Text(
                                pages[index].dscription,
                                style: TextStyle(color: Colors
                                    .grey,
                                  fontSize: 16,),
                                textAlign: TextAlign.center
                            ),
                          ),

                        ],

                      ),


                ],
              );
            },
            itemCount: pages.length,
            onPageChanged:(index){
          _pageViewNotifier.value = index;
             },
             ),

),
    Transform.translate(
    offset: Offset(0, 150),
    child: Align(
    alignment: Alignment.center,
    child: _displaydrawindicator(pages.length)
    ),
    ),

    Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
    padding: const EdgeInsets.only(bottom: 24,
    left: 16,
    right: 16),
    child: SizedBox(
    width: double.infinity,
    height: 65,
    child: RaisedButton(
    color: Colors.red.shade800,
    child:Text(
                    'GET STARTED', style: TextStyle(color: Colors.white,
                      fontSize: 16,
                      letterSpacing: 1
                  ),
                  ),

               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context) {
                            _updateSeen();
                         return HomeScreen();
                       }
                   ),
                 );
               }
                    ),
                    ),
                    ),
                    ),

    ],

    );

  }

  Widget _displaydrawindicator(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) =>
          Circle(
            size: 8.0,
            color: Colors.grey,
          ),
      highlightedBuilder: (animationController, index) =>
          ScaleTransition(
            scale: CurvedAnimation(
              parent: animationController,
              curve: Curves.ease,
            ),
            child: Circle(
              size: 12.0,
              color: Colors.red,
            ),
          ),
    );
  }

     void _updateSeen()async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     prefs.setBool( 'seen', true);
     }

}












