import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';
class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        
        child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
      overscroll.disallowGlow();
      return;
      },
          child: SingleChildScrollView(
            child: Column(

              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: bgGrey,
                    image: DecorationImage(image: AssetImage('assets/images/background_virus.png'))
                  ),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: Stack(
                              children: [
                                Image.asset('assets/images/doctor.png',
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.topCenter,),
                              ],
                            )
                            ),


                          ],
                        ),
                      ),
                      Column(

                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Be Aware\nFrom Covid-19",style: TextStyle(
                              color: primaryRed,fontWeight: FontWeight.bold,fontSize: 18,
                          ),
                          ),
                          ElevatedButton.icon(
                            icon:Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                             label:Text("Helpline Toll Free",style: TextStyle(color: Colors.white),),

                            onPressed: ()=> launch("tel:1075"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                primaryRed
                              ),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                  )
                            ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                // Column(
                //   children: [
                //    IntrinsicHeight(
                //      child: Row(
                //        mainAxisAlignment: MainAxisAlignment.center,
                //        crossAxisAlignment: CrossAxisAlignment.stretch,
                //        children: [
                //          Padding(
                //            padding: const EdgeInsets.all(8.0),
                //            child: Expanded(
                //              child: Container(
                //                decoration: BoxDecoration(
                //                  borderRadius: BorderRadius.circular(10),
                //                  color: primaryRed
                //                ),
                //                child: Padding(
                //                  padding: const EdgeInsets.all(8.0),
                //                  child: Align(
                //                      alignment: Alignment.center,
                //                      child: Text("Child Helpline",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                //                ),
                //              ),
                //            ),
                //          ),
                //          Padding(
                //            padding: const EdgeInsets.all(8.0),
                //            child: Expanded(
                //              child: Container(
                //                decoration: BoxDecoration(
                //                    borderRadius: BorderRadius.circular(10),
                //                    color: primaryRed
                //                ),
                //                child: Padding(
                //                  padding: const EdgeInsets.all(8.0),
                //                  child: Align(
                //                      alignment: Alignment.center,
                //                      child: Text("Senior Citizen\nHelpline",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                //                ),
                //              ),
                //            ),
                //          ),
                //          Padding(
                //            padding: const EdgeInsets.all(8.0),
                //            child: Expanded(
                //              child: Container(
                //                decoration: BoxDecoration(
                //                    borderRadius: BorderRadius.circular(10),
                //                    color: primaryRed
                //                ),
                //                child: Padding(
                //                  padding: const EdgeInsets.all(8.0),
                //                  child: Text("Mental Health\nHelpline",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                //                ),
                //              ),
                //            ),
                //          )
                //        ],
                //
                //      ),
                //    )
                //   ],
                // ),



                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Wrap(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: bgGrey,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=> launch("tel:03192232102"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Andaman and Nicobar\nIslands',style: TextStyle(
                                                color: Colors.white,fontWeight: FontWeight.bold
                                               ),
                                              ),
                                              Icon(Icons.phone,
                                              color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:08662410978"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Andhra Pradesh',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:9436055743"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Arunachal Pradesh',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:6913347770"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Assam',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Bihar',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:9779558282"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Chandigarh',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Chhattisgarh',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Dadra and Nagar Haveli\n& Daman & Diu',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:01122307145"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Delhi',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Goa',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Gujarat',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:8558893911"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Haryana',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Himachal Pradesh',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:01912520982"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Jammu & Kashmir',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Jharkhand',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Karnataka',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:04712552056"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Kerala',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:01982256462"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Ladakh',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Lakshadweep',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Madhya Pradesh',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:02026127394"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Maharashtra',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:3852411668"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Manipur',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:108"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Meghalaya',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:102"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Mizoram',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:7005539653"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Nagaland',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:9439994859"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Odisha',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Puducherry',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Punjab',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:01412225624"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Rajasthan',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Sikkim',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:04429510500"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Tamil Nadu',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Telangana',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:03812315879"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Tripura',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:104"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Uttarakhand',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:18001805145"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Uttar Pradesh',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:()=>launch("tel:1800313444222"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:primaryRed,
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'West Bengal',style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Icon(Icons.phone,
                                                color: Colors.white,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                ],
                              ),
                            ),

                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),


          ),
        ),
      ),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: bgGrey,
      elevation: 0,
      leading: BackButton(),

    );
  }
}
