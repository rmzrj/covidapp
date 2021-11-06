import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class NewsDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(color: Colors.white,),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Image.asset( "assets/images/newsimg.jpg",fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,),

                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 280.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Material(
                      borderRadius: BorderRadius.circular(35.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 6.0),
                            child: Text(
                              "This a Breaking News of Covid19, Black was affected from reusing of mask",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "7 may 2010",
                                style: TextStyle(

                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "this jfhuf giu jdug ffvhdfigjdfkgijdfiog sjgfhgudfnoigjdfg fsojhfjvofidgjpdfg dfjghdfugndofigljfg"
                                  "fjgfdjgnjdfgnjdgfjgnfdg kjnjndjs skjfnsfe zdljfdoufhsdf fhsfnslkfns l;ka dokjds,mfs hfbyb fgrkjgr g",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
