import 'package:covidapp/screens/newsDetailsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class NewsCardWidget extends StatelessWidget {
  String title, time;

  @override
  Widget build(BuildContext context) {
    title =
        "this jfhuf giu jdug ffvhdfigjdfkgijdfiog sjgfhgudfnoigjdfg fsojhfjvofidgjpdfg dfjghdfugndofigljfg"
        "fjgfdjgnjdfgnjdgfjgnfdg kjnjndjs skjfnsfe zdljfdoufhsdf fhsfnslkfns l;ka dokjds,mfs hfbyb fgrkjgr g";
    time = "7 may 2010";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetailsPage()));},
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10), ),
            color: bgGrey,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 0.0,
                spreadRadius: 0.0,
                offset: Offset(0, 0), // shadow direction: bottom right
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "This a Breaking News of Covid19, Black was affected from reusing of mask",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18, color: primaryText),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0,bottom: 4.0),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/images/newsimg.jpg"),
                        fit: BoxFit.fill),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.black.withOpacity(0.33)),
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Center(
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              maxLines: 4,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 8),
                child: Row(
                  children: [
                    Icon(Icons.date_range),
                    SizedBox(width: 5,),
                    Text(time),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
