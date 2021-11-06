import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covidapp/widgets/newsCard.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
class NewsScreen extends StatelessWidget {
  const NewsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgGrey,
        elevation: 0,
        title: Text("News"),


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 12.0, top: 20.0, bottom: 16.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("News Updates", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 28),)),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Column(
                children: <Widget>[
                  NewsCardWidget(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
