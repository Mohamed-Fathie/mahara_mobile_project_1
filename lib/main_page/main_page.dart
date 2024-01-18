import 'package:flutter/material.dart';
import 'package:maharah_project/main_page/content.dart';


class mainPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
        body: MyContent( name: "mohamed"),

      ),
    );
  }
}
