
import 'package:flutter/material.dart';
import 'package:payonetime/screens/authscreens/registerfinal.dart';
import 'package:payonetime/screens/authscreens/signin.dart';
import 'package:pinput/pinput.dart';
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


  @override

  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
                                      TextSpan(text: 'OTP \n', style: TextStyle(color: Colors.white,fontSize: 50,fontFamily: 'Kufam_Bold')),
                                      TextSpan(text: 'Check your mobile message to see \nthe verification code', style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "Kufam_Medium")),
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
                              padding:  const EdgeInsets.all(5),
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

            Container(
              height: height/4,
              width: width/1.1,
              margin: EdgeInsets.all(20),

                child: Center(
                    
                    child: Image.asset('assets/top.png'),
                  
                ),
              
            ),

            const SizedBox(height: 20),
            const Pinput(),
            SizedBox(height:height/90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "+234-813-533-343",
                  style: TextStyle(
                      fontSize: height / 40,
                      fontFamily: 'Kufam_Bold',
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
  Widget builPinput(){
    return Pinput(
      pinAnimationType: PinAnimationType.rotation,
      onCompleted: (pin)=>print(pin),


    );


  }

}
