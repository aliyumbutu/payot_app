import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonetime/screens/customescreens/custtombutton.dart';
import 'package:payonetime/screens/home/homescreen.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/customtextfild.dart';
import '../home/settings.dart';

class SetPascscode extends StatefulWidget {
  const SetPascscode({super.key});

  @override
  State<SetPascscode> createState() => _SetPascscodeState();
}

class _SetPascscodeState extends State<SetPascscode> {
  TextEditingController Otp = TextEditingController();
  TextEditingController NewPasscode = TextEditingController();
  TextEditingController ConfirmNewPasscode = TextEditingController();
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: notifier.getprimeryColor,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Setting()));
          },
              icon: const Icon(Icons.help))
        ],
        centerTitle: false,
        title: Text(
          EnString.setpasscode,
          style: TextStyle(
            color: notifier.getwihitecolor,
            fontFamily: 'Kufam_Medium',
          ),
        ),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                width: width/1.0,
                height: height/1.8,
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.7799999713897705),
                  shape:RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.only(left: 10,right: 10),
                      child: const Text('Click request OTP to get OTP message  on your Mobile',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Kufam_Regular",
                          color: Color(0xFF1587c1),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),

                    Container(
                        margin: const EdgeInsets.only(left: 20,right:20),
                        child: Customtextbox.textField(
                          Otp,
                          EnString.enterotp,
                          notifier.getvisacolor,
                          notifier.getvisacolor,
                          height / 12,
                          width / 1.1,
                          TextInputType.number,


                        )
                    ),



                        Row(
                          children: [
                            Positioned(
                              left: 12,
                              child: Container(
                                margin: const EdgeInsets.only(left: 10,top: 5),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

                                      },

                                      child: Custombutton.button(notifier.getprimeryColor, EnString.requestotp, width/3,),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                    const SizedBox(height:15,),
                    Row(

                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Text('Create New Passcode',
                          style: TextStyle(
                            fontFamily: 'Kufam_Medium',
                            fontSize: 12,
                            color: notifier.getprimeryColor,

                          ),),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Container(
                        margin: const EdgeInsets.only(left: 20,right:20),
                        child: Customtextbox.textField(
                          NewPasscode,
                          EnString.enternewspsscod,
                          notifier.getvisacolor,
                          notifier.getvisacolor,
                          height / 12,
                          width / 1.1,
                          TextInputType.number,


                        )
                    ),

                    Container(
                        margin: const EdgeInsets.only(left: 20,right:20),
                        child: Customtextbox.textField(
                          ConfirmNewPasscode,
                          EnString.confnewpsscd,
                          notifier.getvisacolor,
                          notifier.getvisacolor,
                          height / 12,
                          width / 1.1,
                          TextInputType.number,


                        )
                    ),


                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));

                      },
                      child: Custombutton.button(notifier.getprimeryColor, EnString.proceed,width/1.2),
                    )



                    
                  ],
                ),
              )

            ],
          ),
        ),

    );
  }
}
