
import 'package:flutter/material.dart';
import 'package:payonetime/screens/customescreens/custtombutton.dart';
import 'package:provider/provider.dart';
import '../../payments/passcoderequest.dart';
import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/customtextfild.dart';
import 'help.dart';

class Electricity extends StatefulWidget {
  const Electricity({super.key});

  @override
  State<Electricity> createState() => _Electricity();
}

class _Electricity extends State<Electricity> {
  late ColorNotifier notifier;

  @override
  Widget build(BuildContext context) {
    TextEditingController serviceprovider = TextEditingController();
    TextEditingController package = TextEditingController();
    TextEditingController meternumber = TextEditingController();
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
              icon: const Icon(Icons.help_outline))
        ],
        backgroundColor: notifier.getprimeryColor,

        centerTitle: false,
        title: Text(
          EnString.electicity,
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
          height: height/1.5,
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
                    serviceprovider,
                    EnString.provider,
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
                    meternumber,
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
                    package,
                    EnString.mnuber,
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
                    amount,
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
                child: Custombutton.button(notifier.getprimeryColor, EnString.proceed, width/1.2),
              )

            ],
          ),

        ) ,
      ),

    );
  }
}
