import 'package:covidapp/constants.dart';
import 'package:covidapp/sizingconfig.dart';
import 'package:flutter/material.dart';
class RegisterBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text("Register or Sign in\n Yourself",textAlign: TextAlign.center,style: TextStyle(
            fontSize: getProportionateScreenWidth(28),
            fontWeight: FontWeight.bold,
            color: primaryText,
          ),
          ),
          Text("An OTP will be sent to your mobile number for verification",textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
class PhoneNumberwidget extends StatefulWidget {
  @override
  _PhoneNumberwidgetState createState() => _PhoneNumberwidgetState();
}

class _PhoneNumberwidgetState extends State<PhoneNumberwidget> {
  String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          onSaved: (newValue) => phoneNumber=newValue,
          onChanged: (value){
            if(value.isEmpty){

            }
          },
        )
      ],
    );
  }
}

