import 'package:flutter/material.dart';
import 'package:flutterapplicstion1/home_tabs/popular.dart';
import 'package:flutterapplicstion1/home_tabs/whats_new.dart';
import 'package:flutterapplicstion1/shared_ui/drawer_.dart';
import 'favorted.dart';

class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews> with TickerProviderStateMixin {
  TabController _tabController ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex:0 , length:3 , vsync:this );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:NavigationDrawer(),
      appBar: AppBar(
        title: Text('Headline News'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search  ), onPressed: (){},),
          IconButton(icon: Icon(Icons.more_vert ), onPressed: (){},),

        ],
        bottom: TabBar(
          indicatorColor: Colors.white,

          tabs: <Widget>[
            Tab(    text:("WHAT'S NEW" ) ,),
            Tab(    text:("POPULAR" ) ,),
            Tab(    text:("FAVOURITES" ) ,)
          ],controller:_tabController,),
      ),
      body: Center(

          child: TabBarView(children: <Widget>[
            Favorted(),
            Popular(),
            Favorted(),
          ],controller: _tabController)
      ),
    );
  }
}
