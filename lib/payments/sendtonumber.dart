import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonetime/payments/passcoderequest.dart';
import 'package:payonetime/screens/home/help.dart';
import 'package:provider/provider.dart';

import '../screens/customescreens/customtextfild.dart';
import '../screens/customescreens/custtombutton.dart';
import '../screens/home/settings.dart';
import '../utils/colornotifir.dart';
import '../utils/enlanguage.dart';
import '../utils/mediaqury.dart';

class SendToNumber extends StatefulWidget {
  const SendToNumber({super.key});

  @override
  State<SendToNumber> createState() => _SendToNumberState();
}

class _SendToNumberState extends State<SendToNumber> {
  late ColorNotifier notifier;
  TextEditingController EnterMobileNumber = TextEditingController();
  TextEditingController EnterAmount = TextEditingController();
  TextEditingController AddComment = TextEditingController();
  @override

  Widget build(BuildContext context) {
    var notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: notifier.getprimeryColor,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Help()));
          },
              icon: const Icon(Icons.help))

        ],
        centerTitle: false,
        title: Text(
          EnString.sendtonumber,
          style: TextStyle(
            color: notifier.getwihitecolor,
            fontSize: height / 40,
            fontFamily: 'Kufam_Medium',
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Container(
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
              const SizedBox(height: 30,),
             

              Container(
                margin: const EdgeInsets.only(left: 20,right:20),
                  child: Customtextbox.textField(
                    EnterMobileNumber,
                    EnString.number,
                    notifier.getvisacolor,
                    notifier.getvisacolor,
                    height / 12,
                    width / 1.1,
                    TextInputType.phone,


                  )
              ),
              const SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child:  Text(EnString.aliyu,style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Kufam_Medium",
                      color: notifier.getprimeryColor,

                    ),),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                  margin: const EdgeInsets.only(left: 20,right:20),
                  child: Customtextbox.textField(
                    EnterAmount,
                    EnString.enteramt,
                    notifier.getvisacolor,
                    notifier.getvisacolor,
                    height / 12,
                    width / 1.1,
                    TextInputType.number,


                  )
              ),
              const SizedBox(height: 20,),


              //const SizedBox(height:5,),
              Container(
                  margin: const EdgeInsets.only(left: 20,right:20),
                  child: Customtextbox.textField(
                    AddComment,
                    EnString.addcommt,
                    notifier.getvisacolor,
                    notifier.getvisacolor,
                    height / 12,
                    width / 1.1,
                    TextInputType.text,


                  )
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const PasscodeRequest()));

                },
                child: Custombutton.button(notifier.getprimeryColor, EnString.proceed,width/1.2),
              )


            ],
          ),
        ),

      ),
    );
  }
}
