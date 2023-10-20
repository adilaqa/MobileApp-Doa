import 'package:doa/home/header_content.dart';
import 'package:flutter/material.dart';
import 'package:doa/doa/list_doa.dart';
import 'package:doa/home/menu_content.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderContent(),
            ContentMenu(),
            ListDoa(),
      
          ],
        ),
      ),
    );

  }
}
