
import 'package:flutter/material.dart';
import 'package:payonetime/screens/authscreens/registerfinal.dart';
import 'package:payonetime/screens/authscreens/signin.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/color.dart';
import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/custtombutton.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  late ColorNotifier notifier;

  getdarkmodepreviousstate() async {

    final prefs = await SharedPreferences.getInstance();
    bool? previusstate = prefs.getBool("setIsDark");
    if (previusstate == null) {
      notifier.setIsDark = false;
    } else {
      notifier.setIsDark = previusstate;
    }
  }
  @override

  Widget build(BuildContext context) {
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
                                      TextSpan(text: 'OTP \n', style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold)),
                                      TextSpan(text: 'Check your mobile message to see \nthe verification code', style: TextStyle(color: Colors.white,fontSize: 20)),
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
                              padding:  const EdgeInsets.all(50),
                              child: Image.asset("assets/logo2.png",scale: 5,),

                            ),
                          )
                      )
                    ],
                  ),
                ],
              ),

            ),
            const SizedBox(height: 20),

            Center(
              child: Padding(
                padding:  const EdgeInsets.only(top: 20,left: 150,right:150),
                child: Image.asset('assets/top.png'),
              ),
            ),

            const SizedBox(height: 10),
            animatedBorders(),
            SizedBox(height:height/90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "+01-202-555-0102",
                  style: TextStyle(
                      fontSize: height / 40,
                      fontFamily: 'Gilroy_Bold',
                      color: notifier.getvisacolor),
                ),

                SizedBox(width: width / 40),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context)=>SignIn(),
                    ),
                    );

                  },
                  child: Container(
                    height: height / 14,
                    width: width / 14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: notifier.getvisacolor),
                    ),
                    child: Icon(Icons.edit, size: height / 55,color: notifier.getblack,),
                  ),
                ),

              ],
            ),
            SizedBox(height: height/30),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const RegisterFinal(),
                  ),
                );
              },
              child: Custombutton.button(primeryColor, EnString.verify, width/2.0),
            )

          ],

        ),
      ),



    );
  }
  Widget animatedBorders() {
    return Container(
      color: Colors.transparent,
      height: height / 14,
      width: width / 1.5,
      child: PinPut(
        textStyle: TextStyle(
            color: notifier.getblack,
            fontFamily: "Gilroy Bold",
            fontSize: height / 40),
        fieldsCount: 4,
        eachFieldWidth: width / 10,
        withCursor: false,
        submittedFieldDecoration: BoxDecoration(
            color: notifier.getprimeryColor,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: notifier.getprimeryColor))
            .copyWith(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: notifier.getprimeryColor)),
        selectedFieldDecoration: BoxDecoration(
            color: notifier.getwihitecolor,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: notifier.getprimeryColor)),
        followingFieldDecoration: BoxDecoration(
          border: Border.all(color: notifier.getprimeryColor),
          color: notifier.getwihitecolor,
          borderRadius: BorderRadius.circular(10.0),
        ).copyWith(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

}
