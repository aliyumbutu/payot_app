
import 'package:flutter/material.dart';
import 'package:payonetime/screens/home/homescreen.dart';
import 'package:payonetime/screens/home/settings.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';

class Paymentcomple extends StatefulWidget {
  const Paymentcomple({super.key});

  @override
  State<Paymentcomple> createState() => _PaymentcompleState();
}

class _PaymentcompleState extends State<Paymentcomple> {
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
              icon: const Icon(Icons.help))
        ],
        centerTitle: false,
        title: Text(
          EnString.paymcomplte,
          style: TextStyle(
            color: notifier.getwihitecolor,
            fontFamily: 'Kufam_Medium',
          ),
        ),

      ),

      body: Column(
        children: [
          const SizedBox(height:30,),
          Container(
            margin: const EdgeInsets.all(20),
            width: width/1.0,
            height: 392,
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.7799999713897705),
              shape:RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
                  borderRadius: BorderRadius.circular(10),
              ),
            ),
            child:  Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20,bottom: 10),
                  width: 98,
                  height: 98,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFCFE8F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text(
                  'Aliyu Muhammad',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Kufam_Bold',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10,),
                const Text(
                  '08068199866',
                  style: TextStyle(
                    color: Color(0xFF726666),
                    fontSize: 20,
                    fontFamily: 'Kufam_Bold',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 30),

                const Text(
                  '₦5000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF007CBB),
                    fontSize: 40,
                    fontFamily: 'Kufam_Bold',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  'Sent Successfully',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF007CBB),
                    fontSize: 15,
                    fontFamily: 'Kufam_Medium',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                        child: _buildButtonColumnPayC(notifier.getwihitecolor, notifier.getwihitecolor, 'Home')),
                    _buildButtonColumnPayC(notifier.getwihitecolor, notifier.getwihitecolor, 'Pay Again'),
                    _buildButtonColumnPayC(notifier.getwihitecolor, notifier.getwihitecolor,'Share'),
                  ],

                ),

              ],

            ),

          )
        ],


      ),
    );
  }
  Column _buildButtonColumnPayC(Color color,  color1,  String label) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20,),

        Container(
          width: 70,
          height: 40,
          decoration: ShapeDecoration(
            color: notifier.getprimeryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontFamily: "Kufam_Medium",
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: color1,
              ),
            ),
          ),



        ),

      ],
    );
  }
}
