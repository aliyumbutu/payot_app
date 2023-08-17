import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonetime/screens/home/homescreen.dart';
import 'package:payonetime/screens/home/settings.dart';
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
    TextEditingController Network = TextEditingController();
    TextEditingController MobileNumber = TextEditingController();
    TextEditingController Amount = TextEditingController();
    notifier = Provider.of<ColorNotifier>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: notifier.getprimeryColor,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Setting()));
          },
              icon: const Icon(Icons.help_outline)),
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
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            width: width/1.0,
            height: 350,
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
                  margin: const EdgeInsets.only(left: 10,right: 10,),

                  child: Customtextfild.textField(
                    Network,
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
                    MobileNumber,
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
                    Amount,
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
                  margin: const EdgeInsets.only(right: 10),
                  alignment: Alignment.bottomRight,
                  child:  const Text(
                    'Account balance: ₦ 20,000',
                    style: TextStyle(
                      color: Color(0xFF726666),
                      fontSize: 15,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                    },
                    child: Custombutton.button(notifier.getprimeryColor, 'Proceed', width/1.1),
                  ),
                )



              ],
              

            ),
          )
        ],
      ),
    );
  }
}
