

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:covidapp/screens/dataModel.dart';

List<Sessions> parseData(String responseBody){
  var list=json.decode(responseBody) as List<dynamic>;
  List<Sessions> sessions = list.map((model)=>Sessions.fromJson(model)).toList();
  return sessions;
}
Future<List<Sessions>>fetchData() async{
  var url = Uri.parse(
      'https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByDistrict?district_id=302&date=28-05-2021');
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
  if( response.statusCode==200){
    print(response.statusCode);

    return compute(parseData,response.body);

  }else{
    throw Exception('API ERROR!!');
  }


}
