import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonetime/screens/customescreens/custtombutton.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: notifier.getprimeryColor,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Setting()));
          },
              icon: const Icon(Icons.help_outline))
        ],
        centerTitle: false,
        title: Text(
          EnString.verification,
          style: TextStyle(
            color: notifier.getwihitecolor,
            fontSize: height / 40,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                width: width/1.0,
                height: height/2.0,
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
                    const Text('Click request OTP to get OTP message  on your Mobile',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Gilroy-Regular",
                        color: Color(0xFF1587c1),
                      ),
                    ),
                    const SizedBox(height: 20,),

                    Container(
                      margin: const EdgeInsets.only(left: 10,right: 10,),

                      child: Customtextfild.textField(
                        Otp,
                        EnString.FirstName,
                        notifier.getvisacolor,
                        notifier.getvisacolor,
                        notifier.getvisacolor,
                        notifier.getblack,
                        notifier.getvisacolor,
                        height / 12,
                        width / 1.1,
                        EnString.number,
                        notifier.getvisacolor,
                        keyboardType: TextInputType.text,
                      ),
                    ),

                        Row(
                          children: [
                            Positioned(
                              left: 12,
                              child: Container(
                                margin: const EdgeInsets.only(left: 10,right: 10,top: 5),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: (){

                                      },

                                      child: Custombutton.button(notifier.getprimeryColor, EnString.login, width/2.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                    const SizedBox(height: 5,),
                    Row(

                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10,right: 10,),
                          child: Text('Create New Passcode',
                          style: TextStyle(
                            color: notifier.getprimeryColor,

                          ),),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      margin: const EdgeInsets.only(left: 10,right: 10,),

                      child: Customtextfild.textField(
                        NewPasscode,
                        EnString.FirstName,
                        notifier.getvisacolor,
                        notifier.getvisacolor,
                        notifier.getvisacolor,
                        notifier.getblack,
                        notifier.getvisacolor,
                        height / 12,
                        width / 1.1,
                        EnString.number,
                        notifier.getvisacolor,
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10,right: 10,),

                      child: Customtextfild.textField(
                        ConfirmNewPasscode,
                        EnString.FirstName,
                        notifier.getvisacolor,
                        notifier.getvisacolor,
                        notifier.getvisacolor,
                        notifier.getblack,
                        notifier.getvisacolor,
                        height / 12,
                        width / 1.1,
                        EnString.number,
                        notifier.getvisacolor,
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child: Custombutton.button(notifier.getprimeryColor, EnString.login,width/1.2),
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
