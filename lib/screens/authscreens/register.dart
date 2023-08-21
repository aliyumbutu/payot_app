import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonetime/screens/authscreens/signin.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/color.dart';
import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/customtextfild.dart';
import '../customescreens/custtombutton.dart';
import 'otp.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late ColorNotifier notifier;


  @override
  Widget build(BuildContext context) {
    TextEditingController number = TextEditingController();
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      body :SingleChildScrollView(
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
                      width: MediaQuery.of(context).size.width,
                      color:const Color(0xFF2791c7) ,
                    ),
                  ),

                  Column(
                    children: [
                      Expanded(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.all(25),
                              child: RichText(
                                text: const TextSpan(
                                    children: [
                                      TextSpan(text: 'Register\n', style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold)),
                                      TextSpan(text: 'Create your account', style: TextStyle(color: Colors.white,fontSize: 20)),
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
                              padding:  const EdgeInsets.all(10),
                              child: Image.asset("assets/logo2.png",scale: 5,),

                            ),
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height:height/ 90),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20,left: 100,right:100),
                child: Image.asset('assets/agreement.png'),
              ),
            ),

            SizedBox(height:height/90),

            Container(
                margin: const EdgeInsets.only(left: 20,right:20),
                child: Customtextbox.textField(
                  number,
                  EnString.number,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  height /12,
                  width / 1.1,
                  TextInputType.phone,



                )
            ),


            SizedBox(height: height/30),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Otp(),
                  ),
                );
              },
              child: Custombutton.button(primeryColor, EnString.Continue, width/1.1),
            ),
            SizedBox(height: height / 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  EnString.AlreadyHaACC,
                  style: TextStyle(
                    color: notifier.getvisacolor,
                    fontSize: height / 50,
                    fontFamily: 'Kufam_Medium',
                  ),
                ),
                SizedBox(width: width / 70),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const SignIn(),
                      ),
                    );
                  },
                  child: Text(
                    EnString.login,
                    style: TextStyle(
                      color: const Color(0xFF007cbb),
                      fontSize: height / 50,
                      fontFamily: 'Kufam_Medium',
                    ),
                  ),
                )
              ],
            )



          ],
        ),
      ),

    );
  }
}
