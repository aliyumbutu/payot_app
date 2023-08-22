
import 'package:flutter/material.dart';
import 'package:payonetime/payments/passcoderequest.dart';
import 'package:payonetime/screens/home/help.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/customtextfild.dart';
import '../customescreens/custtombutton.dart';

class AirtimeRecharge extends StatefulWidget {
  const AirtimeRecharge({super.key});

  @override
  State<AirtimeRecharge> createState() => _AirtimeRechargeState();
}

class _AirtimeRechargeState extends State<AirtimeRecharge> {
  late ColorNotifier notifier;


  @override
  Widget build(BuildContext context) {
    TextEditingController network = TextEditingController();
    TextEditingController mobilenumbet = TextEditingController();
    TextEditingController amount = TextEditingController();
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: notifier.getprimeryColor,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Help()));
          },
              icon: const Icon(Icons.help)),
        ],
        centerTitle: false,
        title: Text(
          EnString.airtimrch,
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
              height: height/2.1,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.7799999713897705),
                shape:RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                children: [

                  const SizedBox(height: 40,),

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
                        mobilenumbet,
                        EnString.number,
                        notifier.getvisacolor,
                        notifier.getvisacolor,
                        height / 12,
                        width / 1.1,
                        TextInputType.phone,


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
                    margin: const EdgeInsets.only(right: 10),
                    alignment: Alignment.bottomRight,
                    child:   Text(
                      EnString.balace,
                      style: const TextStyle(
                        color: Color(0xFF726666),
                        fontSize: 15,
                        fontFamily: 'Kufam_Medium',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const PasscodeRequest()));
                      },
                      child: Custombutton.button(notifier.getprimeryColor, EnString.proceed, width/1.1),
                    ),
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
