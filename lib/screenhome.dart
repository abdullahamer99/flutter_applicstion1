
import 'package:flutter/material.dart';
// import 'utilities/app_theme.dart';
import 'shared_ui/drawer_.dart';
import 'home_tabs/whats_new.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/favorted.dart';

import 'package:flutterapplicstion1/Api/posts_api.dart';
import 'package:flutterapplicstion1/model/post_model_api.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with SingleTickerProviderStateMixin{
  TabController _tabController ;
  PostaAPI postaAPI=PostaAPI();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex:0 , length:3 , vsync:this );
  }
  @override
  Widget build(BuildContext context) {
   // postaAPI.fetChPostsByCategoryId();
    return Scaffold(
      drawer:NavigationDrawer(),
      appBar: AppBar(
        title: Text('Exploer'),
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

          WhatsNew(),
          Popular(),
          Favorted(),
        ],controller: _tabController)
      ),
    );
  }
}

