import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:covidapp/screens/network.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'dataModel.dart';

class HelplineScreen extends StatefulWidget {
  @override
  _HelplineScreenState createState() => _HelplineScreenState();
}

class _HelplineScreenState extends State<HelplineScreen> {
  http.Response response;
  Map mapResponse;
  List listOfsessions;
  List vaccineList;
  List <String> indexList = [];
  List paidList;
  int l;
  List<Sessions> list;


  Future<Map<List, dynamic>> fetchData() async {
    // todo - fix baseUrl
    var url = Uri.parse(
        'https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByDistrict?district_id=302&date=29-05-2021');
    var body = json.encode({
    });
    print('Body: $body');
    var response = await http.get(
      url,
      headers: {
        'accept': 'application/json',
        'Accept-Language': 'hi_IN',
      },
    );
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        listOfsessions = mapResponse['sessions'];
        vaccineList =
        (listOfsessions[l]['vaccine'].toString() == 'COVISHIELD') as List;
      });
    }

    print(response.statusCode);
    print(listOfsessions);


    // todo - handle non-200 status code, etc

  }

  @override
  void initState() {
    fetchData();


    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('eeee'),
      ),
      // body: Container(
      //   child: FutureBuilder(
      //     future: fetchData(),
      //     builder: (BuildContext context,AsyncSnapshot snapshot){
      //       if(snapshot.hasData) {
      //         return ListView.builder(
      //             itemCount: indexList.length,
      //             itemBuilder: (BuildContext context, int index) {
      //               return ListTile(
      //                 title: Text(
      //                   snapshot.data.getVaccineIndex('name')[index]
      //                 ),
      //               );
      //             });
      //       }else if(snapshot.hasError){
      //         return Center(child: Text("No Data"),
      //         );
      //       }else{
      //         return Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       }
      //     },
      //   ),
      // ),
      body: ListView.builder(

          itemCount: listOfsessions.length,
          itemBuilder: (context, index) {
            return Container(
              child: Text(
                  vaccineList[index]['']
              ),
            );
          }),
      //
      // body: Container(
      //
      //   child:ListTile(
      //     title: Text(
      //         getVaccineIndex('name')[0],
      //     ),
      //   )
      // ),
      //
      //   body: Container(child: ListView.builder(
      //      itemCount: indexList.length,
      //       itemBuilder: (context,index){
      //        // Session session = _sessions[index];
      //     return Container(
      //       child: Column(
      //         children: [
      //           Text(
      //             // session.name
      //
      //              getVaccineIndex('name')[0].toString()
      //
      //           ),
      //         ],
      //       ),
      //     );
      //   }),),

    );
  }

  List getVaccineIndex(String item) {
    for (int i = 0; i < listOfsessions.length; i++) {
      if (listOfsessions[i]["vaccine"].toString() == 'COVISHIELD')
        indexList.add(listOfsessions[i]["$item"]);
    }
    return indexList;
    // for(int i=0;i<indexList.length;i++){
    //   return listOfsessions[i]["$item"];
    // }
  }
  List<Sessions> getData() {
    List<Sessions> sessions;
    for (int i = 0; i < indexList.length; i++) {
      // sessions = getVaccineIndex[i];
    }
    return sessions;
  }
}
