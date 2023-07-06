import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_wallet/themeStyle/themeStyle.dart';

import '../components/appBar.dart';
import '../components/recentTransction.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [

            Appbar(

                title: 'Profile',
            ),
            // SearchCard(),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/propic.png'),

                      radius: 70,

                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Text('Apurva Anand',style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                        SizedBox(width: 8,),
                        Image.asset('assets/verify.png',scale: 23,),


                      ],
                    ),
                   SizedBox(height: 8,),
                    Divider(height: 18,color: Colors.blueGrey,indent: 100,endIndent: 100,),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Text('UPI ID : ',style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        SizedBox(width: 8,),
                        Text('8340776554@paytm',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                        ),



                      ],
                    ),
                    SizedBox(height: 8,),
                    Text('Paytm : 8340776554',style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/qr.jpg',),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //
                    //   child: Image.asset('assets/qr.jpg',scale: 2,),
                    // ),



                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
