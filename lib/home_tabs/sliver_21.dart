import 'package:flutter/material.dart';

class HomeSliver extends StatefulWidget {
  @override
  _HomeSliverState createState() => _HomeSliverState();
}

class _HomeSliverState extends State<HomeSliver> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(

          ),
        )
      ],
    );
  }
}
