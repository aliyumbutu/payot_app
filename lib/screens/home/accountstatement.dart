
import 'package:flutter/material.dart';
import 'package:payonetime/screens/customescreens/custtombutton.dart';
import 'package:payonetime/screens/home/settings.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../authscreens/otp.dart';
import '../customescreens/customtextfild.dart';


class AccountStatement extends StatefulWidget {
  const AccountStatement({super.key});

  @override
  State<AccountStatement> createState() => _AccountStatementState();
}

class _AccountStatementState extends State<AccountStatement> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    TextEditingController startdate = TextEditingController();
    TextEditingController enddate = TextEditingController();
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const Setting()));
          },
              icon: const Icon(Icons.help))
        ],
        backgroundColor: notifier.getprimeryColor,

        centerTitle: false,
        title: Text(
          EnString.accstmt,
          style: TextStyle(
            color: notifier.getwihitecolor,
            fontFamily: 'Kufam_Medium',
          ),
        ),

      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        width: width/1.0,
        height: height/2.2,
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
              Row(
               children: [
                 Container(

                   margin: const EdgeInsets.only(left: 20),
                   child:  Text(
                    EnString.startdate,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Kufam_Medium',

                    ),
                   ),
                 ),
               ],
             ),
            const SizedBox(height: 10,),

            Container(
                margin: const EdgeInsets.only(left: 20,right:20),
                child: Customtextbox.textField(
                  startdate,
                  EnString.startdate,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  height / 12,
                  width / 1.1,
                  TextInputType.datetime,


                )
            ),

            const SizedBox(height: 10,),
             Row(

              children: [
                Container(

                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    EnString.endsdate,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Kufam_Medium',

                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),


            Container(
                margin: const EdgeInsets.only(left: 20,right:20),
                child: Customtextbox.textField(
                  enddate,
                  EnString.endsdate,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  height / 12,
                  width / 1.1,
                  TextInputType.datetime,


                )
            ),

            const SizedBox(height: 20,),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Otp()));
              },
              child: Custombutton.button(notifier.getprimeryColor, EnString.downloadc, width/1.2),
            )

          ],

        ),
      ),


    );
  }
}
