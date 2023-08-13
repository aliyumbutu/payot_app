import 'package:flutter/material.dart';
import 'package:payonetime/utils/mediaqury.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../authscreens/signin.dart';
import '../customescreens/custtomtransaction.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  static List<Payments> mailList = [
    Payments(payto: 'Paid to Aliyu Muhammad', date: '12 Jun, 8:30 PM', amount: '-₦100,00'

    ),
    Payments(payto: 'Send from Aliyu Muhammad', date: '12 Jun, 8:30 PM', amount: '+₦10,000'
    ),

    Payments(payto: 'Paid to Aliyu Muhammad', date: '12 Jun, 8:30 PM', amount: '-₦30,000'
    ),

  ];
}

class _HomeScreenState extends State<HomeScreen> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFF007cbb),
              height: 190,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: Customshape(),
                    child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xFF1587c1),
                    ),
                  ),
                  ClipPath(
                    clipper:Customshape(),
                    child: Container(
                      height: 210,
                      width: MediaQuery.of(context).size.width/1.3,
                      color:const Color(0xFF2791c7) ,
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(25),
                              child: RichText(
                                text: const TextSpan(
                                    children: [
                                      TextSpan(text: 'Balance \n', style: TextStyle(color: Colors.white,fontSize: 20,)),
                                      TextSpan(text: '₦10,000', style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),

                                    ]
                                ),
                              ),
                            ),

                          )
                      ),
                    ],
                  ),



                ],
              ),
            ),
            SizedBox(height: height/50),
            Container(
              width: width/1.1,
              height: 120,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.7799999713897705),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

            //    child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     _buildButtonColumn(notifier.getprimeryColor, Icons.qr_code, 'CALL'),
            //     _buildButtonColumn(notifier.getprimeryColor, Icons.contact_phone, 'ROUTE'),
            //     _buildButtonColumn(notifier.getprimeryColor, Icons.house, 'SHARE'),
            //   ],
            // ),

             child:   Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Stack(
                   children: [
                     Container(
                       width: 70,
                       height: 70,
                       decoration: ShapeDecoration(
                         color: notifier.getprimeryColor,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15),
                         ),
                       ),
                       child:
                        Icon(Icons.qr_code_2_outlined,color: notifier.getwihitecolor,size: 40),
                     ),
                   ],
                 ),
                 Container(
                   width: 70,
                   height: 70,
                   decoration: ShapeDecoration(
                     color: notifier.getprimeryColor,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15),
                     ),
                   ),
                   child:
                   Icon(Icons.contact_phone,color: notifier.getwihitecolor,size: 40),
                 ),
                 Container(
                   width: 70,
                   height: 70,
                   decoration: ShapeDecoration(
                     color: notifier.getprimeryColor,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15),
                     ),
                   ),
                   child:
                   Icon(Icons.house,color: notifier.getwihitecolor,size: 40),
                 ),
               ],


             ),

              ),



            SizedBox(height: height/50),
            Container(
              width: width/1.1,
              height: 120,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.7799999713897705),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: notifier.getprimeryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child:
                        Icon(Icons.qr_code_2_outlined,color: notifier.getwihitecolor,size: 40),
                      ),
                    ],
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: ShapeDecoration(
                      color: notifier.getprimeryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child:
                    Icon(Icons.contact_phone,color: notifier.getwihitecolor,size: 40),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: ShapeDecoration(
                      color: notifier.getprimeryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child:
                    Icon(Icons.house,color: notifier.getwihitecolor,size: 40),
                  ),
                ],


              ),
            ),
            SizedBox(height: height/50),
            Container(
              width: width/1.1,
              height: 261,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.7799999713897705),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),



            ),
            SizedBox(height: height/50),
            Container(
              width: 203,
              height: 50,
              decoration: ShapeDecoration(
                color: const Color(0xFF007CBB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: height/50)
          ],

        ),

      ),
    );
  }

}

