
import 'package:flutter/material.dart';
import 'package:payonetime/screens/authscreens/otp.dart';
import 'package:payonetime/screens/customescreens/custtombutton.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/customtextfild.dart';

class AccountLimit extends StatefulWidget {
  const AccountLimit({super.key});

  @override
  State<AccountLimit> createState() => _AccountLimitState();
}

class _AccountLimitState extends State<AccountLimit> {
  late ColorNotifier notifier;

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    TextEditingController Amount = TextEditingController();
    // ignore: non_constant_identifier_names
    TextEditingController EnterOtp = TextEditingController();
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.help))
        ],
        backgroundColor: notifier.getprimeryColor,

        centerTitle: false,
        title: Text(
          EnString.acclmt,
          style: TextStyle(
            color: notifier.getwihitecolor,
            fontFamily: 'Kufam_Medium',
          ),
        ),

      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        width: width/1.0,
        height: height/1,
        decoration: ShapeDecoration(
          color: Colors.white.withOpacity(0.7799999713897705),
          shape:RoundedRectangleBorder(
            side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child:  Column(

          children: [
            Column(
              children: [
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Column(
                      children: [
                        Text(EnString.currenlmt,style:
                          const TextStyle(
                            fontFamily: 'Kufam_Medium',
                            fontSize:20
                          ),),
                        const SizedBox(height: 5,),
                        Text(EnString.tenk,
                        style: const TextStyle(
                          fontFamily: "Kufam_Medium",
                          fontSize: 20,
                        ),),
                      ],

                    ),


                    GestureDetector(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Otp()));

                      },
                      child: Custombutton.button(notifier.getprimeryColor, EnString.upgacct,width/2.5),
                    )


                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(EnString.setlmt,style: const TextStyle(
                        fontFamily: 'Kufam_Medium',
                        fontSize: 15,
                      ),),

                    )
                  ],
                ),
                const SizedBox(height: 20,),

                Container(
                    margin: const EdgeInsets.only(left: 20,right:20),
                    child: Customtextbox.textField(
                      Amount,
                      EnString.amount,
                      notifier.getvisacolor,
                      notifier.getvisacolor,
                      height / 12,
                      width / 1.1,
                      TextInputType.number,


                    )
                ),
                const SizedBox(height: 20,),

                Container(
                    margin: const EdgeInsets.only(left: 20,right:20),
                    child: Customtextbox.textField(
                      EnterOtp,
                      EnString.enterotp,
                      notifier.getvisacolor,
                      notifier.getvisacolor,
                      height / 12,
                      width / 1.1,
                      TextInputType.number,
                    )
                ),

                const SizedBox(height: 20,),



                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Otp()));
                        },
                        child: Custombutton.button(notifier.getprimeryColor, EnString.requestotp, width/3.3),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp()));
                  },
                  child: Custombutton.button(notifier.getprimeryColor, EnString.change, width/1.2,),
                )
              ],

            ),

          ],
        ),


      ),
    );
  }
}
