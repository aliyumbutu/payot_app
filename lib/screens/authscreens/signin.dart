import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonetime/screens/authscreens/otp.dart';
import 'package:payonetime/screens/authscreens/register.dart';
import 'package:payonetime/utils/color.dart';
import 'package:payonetime/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../customescreens/customtextfild.dart';
import '../customescreens/custtombutton.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
    TextEditingController number = TextEditingController();
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return  Scaffold(
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
                                    TextSpan(text: 'Sign in \n', style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold)),
                                    TextSpan(text: 'Sign in into your account', style: TextStyle(color: Colors.white,fontSize: 20)),
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
                padding: const EdgeInsets.all(70),
                child: Image.asset('assets/login.png'),
              ),
            ),

            SizedBox(height:height/90),

            Container(
              alignment: Alignment.center,
              child: Customtextfild.textField(

                number,
                EnString.number,
                notifier.getvisacolor,
                notifier.getvisacolor,
                notifier.getvisacolor,
                notifier.getblack,
                notifier.getvisacolor,
                height / 12,
                width / 1.1,
                EnString.number,
                notifier.getvisacolor,
                keyboardType: TextInputType.number,
              ),
            ),
          SizedBox(height: height/30),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Otp(),
                    ),
                );
              },
                child: Custombutton.button(primeryColor, EnString.submit, width/1.1),
            ),
            SizedBox(height: height / 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  EnString.donthaveanaccount,
                  style: TextStyle(
                    color: notifier.getvisacolor,
                    fontSize: height / 50,
                    fontFamily: 'Gilroy_Medium',
                  ),
                ),
                SizedBox(width: width / 70),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Register(),
                      ),
                    );
                  },
                  child: Text(
                    EnString.register,
                    style: TextStyle(
                      color: const Color(0xFF007cbb),
                      fontSize: height / 50,
                      fontFamily: 'Gilroy_Medium',
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),

    );
  }
}
class Customshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(width-30, 0);
    // path.quadraticBezierTo(width/2, height, width, height-50);
    //path.cubicTo(width / 2 - width / 8, 0, width / 2 - width / 8, height / 2, width / 2, height / 2);
    // path.cubicTo(x1, y1, x2, y2, x3, y3)
    path.cubicTo(width, 20, width, height+115, 0, height-30);
    //path.quadraticBezierTo(10, 10, 100, 100);
    // path.conicTo(10, 10, 50,50, 0.5);
    // path.lineTo(5, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}


