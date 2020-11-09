

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Pagemodel {
  String _title;
  String _dscription;
  IconData _icons;
  String _image;


  Pagemodel(this._title,this._dscription,this._icons,this._image);

  String get image => _image;

  IconData get icons => _icons;

  String get dscription => _dscription;

  String get title => _title;





}