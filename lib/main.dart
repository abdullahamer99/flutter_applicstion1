import 'package:flutter/material.dart';
import 'package:flutterapplicstion1/screenhome.dart';
import 'package:flutterapplicstion1/screens/app1.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utilities/app_theme.dart';
import 'shared_ui/drawer_.dart';
import 'screenhome.dart';
import 'home_tabs/whats_new.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');
  Widget _screen;
  if (seen == null || seen == false) {
    _screen = onBoarding();
  } else {
    _screen = HomeScreen();
  }

  runApp(NewsApp(_screen)); 
}

class NewsApp extends StatelessWidget {
  final Widget _screen;
  NewsApp(this._screen);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _screen,
      theme: AppTheme.appTheme,
    );
  }
}
