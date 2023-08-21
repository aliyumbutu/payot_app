import 'package:flutter/material.dart';
import 'package:payonetime/screens/authscreens/signin.dart';
import 'package:payonetime/screens/customescreens/customtextfild.dart';
import 'package:payonetime/screens/home/homescreen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/color.dart';
import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/custtombutton.dart';

class RegisterFinal extends StatefulWidget {
  const RegisterFinal({super.key});

  @override
  State<RegisterFinal> createState() => _RegisterFinalState();
}

class _RegisterFinalState extends State<RegisterFinal> {
  late ColorNotifier notifier;


  @override
  Widget build(BuildContext context) {
    TextEditingController firstName = TextEditingController();
    TextEditingController lastName  = TextEditingController();
    TextEditingController dateOfBirth  = TextEditingController();
    TextEditingController Gender  = TextEditingController();
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFF007cbb),
              height: 230,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: Customshape(),
                    child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xFF1587c1),
                    ),
                  ),
                  ClipPath(
                    clipper:Customshape(),
                    child: Container(
                      height: 210,
                      width: MediaQuery.of(context).size.width/1.3,
                      color:const Color(0xFF2791c7) ,
                    ),
                  ),

                  Column(
                    children: [
                      Expanded(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(25),
                              child: RichText(
                                text: const TextSpan(
                                    children: [
                                      TextSpan(text: 'Register \n', style: TextStyle(color: Colors.white,fontSize: 50, fontFamily: "Kufam_Bold")),
                                      TextSpan(text: 'Final stage', style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Kufam_Medium')),
                                    ]
                                ),
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Expanded(
                          child: Align(

                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding:  const EdgeInsets.all(20),
                              child: Image.asset("assets/logo2.png",scale: 5,),

                            ),
                          )
                      )
                    ],
                  ),


                ],
              ),
            ),
            SizedBox(height:height/ 100),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50,left: 100,right:100),
                child: Image.asset('assets/welcome-2.png'),
              ),
            ),
            SizedBox(height:height/100),
            Container(
                child: Customtextbox.textField(
                  firstName,
                  EnString.FirstName,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  height / 12,
                  width / 1.1,
                  TextInputType.text,


                )
            ),
            SizedBox(height:height/100),
            Container(
                child: Customtextbox.textField(
                  lastName,
                  EnString.SecondName,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  height / 12,
                  width / 1.1,
                  TextInputType.text,



                )
            ),
            SizedBox(height:height/100),
            Container(
                child: Customtextbox.textField(
                  dateOfBirth,
                  EnString.DOB,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  height / 12,
                  width / 1.1,
                  TextInputType.datetime,


                )
            ),
            SizedBox(height:height/100), Container(
                child: Customtextbox.textField(
                  Gender,
                  EnString.Gender,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  height / 12,
                  width / 1.1,
                  TextInputType.text,


                )
            ),
            SizedBox(height: height/100),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const HomeScreen(),
                  ),
                );
              },
              child: Custombutton.button(primeryColor, EnString.register, width/1.1),
            ),

            SizedBox(height: height/20,)
          ],


        ),


      ),


    );
  }
}
