import 'package:flutter/material.dart';
import 'package:payonetime/screens/authscreens/setpasscode.dart';
import 'package:payonetime/screens/home/settings.dart';

import 'package:payonetime/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import '../../utils/color.dart';
import '../../utils/colornotifir.dart';
import '../authscreens/signin.dart';
import '../customescreens/custtombutton.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();


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
              height: 170,
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
                      const SizedBox(height: 30,),
                       Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        IconButton(
                            onPressed: (){

                            },
                            icon: const Icon(Icons.account_circle,size: 50,color: Colors.white,))
                        ],

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Setting()
                            ),);
                          },
                              icon:const Icon(Icons.notifications,size: 30,color: Colors.white,)),
                          IconButton(onPressed: (){},
                              icon: const Icon(Icons.help,size: 30,color: Colors.white,))

                        ],
                      ),

                      Expanded(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
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
                  height: 130,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.7799999713897705),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child:  Stack(
                    children: [
                       const Padding(
                         padding: EdgeInsets.only(left: 20,top: 10),
                         child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Money Transfer',
                            style: TextStyle(
                              color: Color(0xFF5E5353),
                              fontSize: 15,
                              fontFamily: 'Gilroy_Medium',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),
                       ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildButtonColumn(notifier.getwihitecolor, notifier.getblack,Icons.qr_code_rounded, 'Scan & Pay'),
                          _buildButtonColumn(notifier.getwihitecolor, notifier.getblack,Icons.contact_phone, 'To number'),
                          _buildButtonColumn(notifier.getwihitecolor, notifier.getblack,Icons.house, 'To Bank'),
                        ],
                      ),
                    ],
                  ),
                  ),

            SizedBox(height: height/50),
            Container(
              width: width/1.1,
              height: 130,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.7799999713897705),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child:  Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Recharge & Bills',
                        style: TextStyle(
                          color: Color(0xFF5E5353),
                          fontSize: 15,
                          fontFamily: 'Gilroy_Medium',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildButtonColumn(notifier.getwihitecolor, notifier.getblack,Icons.phone_android_rounded, 'Airtime'),
                      _buildButtonColumn(notifier.getwihitecolor, notifier.getblack,Icons.map_rounded, 'Internet'),
                      _buildButtonColumn(notifier.getwihitecolor, notifier.getblack,Icons.light
                          , 'Electricity'),
                    ],
                  ),
                ],
              ),

            ),
            SizedBox(height: height/70),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
            ),
            SizedBox(height: height/70),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const SetPascscode(),
                  ),
                );
              },

              child: Custombuttonico.button(primeryColor, "Scan & Pay", width/2.0,const EdgeInsets.only(left: 50))),

            SizedBox(height: height/50)
          ],

        ),

      ),
    );
  }
  Column _buildButtonColumn(Color color,  color1, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 30),
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
        Icon(icon, color: color)),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: "Gilroy-Medium",
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: color1,
            ),
          ),
        ),
      ],
    );
  }

}

