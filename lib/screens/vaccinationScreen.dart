import 'dart:convert';


import 'package:covidapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:webview_flutter/webview_flutter.dart';
class VaccinationScreen extends StatefulWidget {
  const VaccinationScreen({Key key}) : super(key: key);

  @override
  _VaccinationScreenState createState() => _VaccinationScreenState();
}

class _VaccinationScreenState extends State<VaccinationScreen> {
  final TextEditingController phoneNumber= new TextEditingController();

  @override
  bool showSpinner = true;
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: AppBar(
          title: Text("Register/SignIn"),
        ),
        preferredSize: Size.fromHeight(75),
      ),
      body: ModalProgressHUD(
        progressIndicator: CircularProgressIndicator(
          color: primaryRed,
        ),
        color: Colors.white,
        inAsyncCall: showSpinner,
        child: WebView(
          initialUrl: "https://selfregistration.cowin.gov.in/",
          javascriptMode: JavascriptMode.unrestricted,
          onPageFinished: (finished){
            setState(() {
              showSpinner = false;
            });
          },
        ),
      ),
    );
  }
}
