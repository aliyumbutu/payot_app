import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonetime/screens/customescreens/custtombutton.dart';
import 'package:provider/provider.dart';

import '../../payments/passcoderequest.dart';
import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/customtextfild.dart';
import 'help.dart';

class Internet extends StatefulWidget {
  const Internet({super.key});

  @override
  State<Internet> createState() => _InternetState();
}

class _InternetState extends State<Internet> {
  late ColorNotifier notifier;

  @override
  Widget build(BuildContext context) {
    TextEditingController network = TextEditingController();
    TextEditingController package = TextEditingController();
    TextEditingController amount = TextEditingController();
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Help()));
          },
              icon: const Icon(Icons.help))
        ],
        backgroundColor: notifier.getprimeryColor,

        centerTitle: false,
        title: Text(
          EnString.Internet,
          style: TextStyle(
            color: notifier.getwihitecolor,
            fontFamily: 'Kufam_Medium',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:Container(
          margin: const EdgeInsets.all(20),
          width: width/1.0,
          height: height/2,
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.7799999713897705),
            shape:RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 50,),

              Container(
                  margin: const EdgeInsets.only(left: 20,right:20),
                  child: Customtextbox.textField(
                    network,
                    EnString.network,
                    notifier.getvisacolor,
                    notifier.getvisacolor,
                    height / 12,
                    width / 1.1,
                    TextInputType.text,



                  )
              ),
              const SizedBox(height: 20,),
              Container(
                  margin: const EdgeInsets.only(left: 20,right:20),
                  child: Customtextbox.textField(
                    package,
                    EnString.subpackqge,
                    notifier.getvisacolor,
                    notifier.getvisacolor,
                    height / 12,
                    width / 1.1,
                    TextInputType.text,



                  )
              ),
              const SizedBox(height: 20,),

              Container(
                  margin: const EdgeInsets.only(left: 20,right:20),
                  child: Customtextbox.textField(
                    amount,
                    EnString.amount,
                    notifier.getvisacolor,
                    notifier.getvisacolor,
                    height / 12,
                    width / 1.1,
                    TextInputType.number,



                  )
              ),

              const SizedBox(height: 10,),

               Container(
                 margin: const EdgeInsets.only(right: 20),
                 child:  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [


                    Text(EnString.balace,style: const TextStyle(
                      fontFamily: "Kufam_Medium"
                    ),),

                  ],

                ),
               ),
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const PasscodeRequest()));
                },
                child: Custombutton.button(notifier.getprimeryColor, EnString.proceed, width/1.1),
              )

            ],
          ),

        ) ,
      ),

    );
  }
}
