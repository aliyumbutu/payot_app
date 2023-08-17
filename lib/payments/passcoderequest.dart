import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import '../screens/authscreens/registerfinal.dart';
import '../screens/customescreens/custtombutton.dart';
import '../screens/home/settings.dart';
import '../utils/color.dart';
import '../utils/colornotifir.dart';
import '../utils/enlanguage.dart';
import '../utils/mediaqury.dart';

class PasscodeRequest extends StatefulWidget {
  const PasscodeRequest({super.key});

  @override
  State<PasscodeRequest> createState() => _PasscodeRequestState();
}

class _PasscodeRequestState extends State<PasscodeRequest> {
  late ColorNotifier notifier;

  @override
  Widget build(BuildContext context) {
    var notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: notifier.getprimeryColor,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Setting()));
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
        child: Container(

          margin: const EdgeInsets.all(20),
          width: width / 1.0,
          height: height / 1.7,
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.7799999713897705),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),

                width: width / 4.0,
                height: height / 8,
                decoration: ShapeDecoration(
                  color: const Color(0xFFCFE8F2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 20,),

              const Text('Paying to : Aliya Muhammad',
                style: TextStyle(
                  fontFamily: "Gilroy-Medium",
                  fontSize: 20,


                ),),
              const SizedBox(height: 10,),
              const Text('Mobile Number:0804853829',
                style: TextStyle(
                  fontFamily: "Gilroy-Medium",
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 20,),
              const Text('Amount',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Gilroy-Bold",
                  color: Colors.black,

                ),),
              const SizedBox(height: 15,),

              const Text("10,000",
                style: TextStyle(
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),
                  const SizedBox(height: 10,),

                  builPinput(),
              const SizedBox(height: 20,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>const RegisterFinal(),
                    ),
                  );
                },
                child: Custombutton.button(primeryColor, EnString.verify, width/1.2),
              )







            ],


          ),

        ),


      ),
    );
  }

  Widget builPinput() {
    return Pinput(
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      pinAnimationType: PinAnimationType.slide,
      onCompleted: (pin) => print(pin),


    );
  }
}
