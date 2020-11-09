import 'package:flutter/material.dart';
import 'package:flutterapplicstion1/home_tabs/headine+news.dart';
import 'package:flutterapplicstion1/home_tabs/instagramFeed.dart';
import 'package:flutterapplicstion1/home_tabs/twitter_feed.dart';
import 'package:flutterapplicstion1/model/nav_main.dart';
import 'package:flutterapplicstion1/screenhome.dart';
import 'package:flutterapplicstion1/home_tabs/facebookfeed.dart';
class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {

 List<NavManuItem> navigationMenu =[
   NavManuItem("Explor", ()=>HomeScreen()),
   NavManuItem("headline News",()=>HeadLineNews()),
   NavManuItem("TwitterFeeds",()=>TwitterFeed()),
   NavManuItem("InstagramFeeds",()=>InstagramFeed()),
   NavManuItem("FaceBookFeeds",()=>FeacBookFeeds()),

 ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(top: 75,left: 24),
        child: ListView.builder(itemBuilder: (context,positing){
          return Padding(
            padding: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(
                navigationMenu[positing].title,
                style: TextStyle(
                    color: Colors.grey.shade700,
                fontSize: 20,
                ),
             ),
              trailing: Icon(Icons.chevron_right,color: Colors.grey.shade500,),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,MaterialPageRoute(builder: (context){
                return navigationMenu[positing].distination();
                }));
              },

            ),
          );

        },
        itemCount: navigationMenu.length,
        ),
      ),

    );
  }
}


