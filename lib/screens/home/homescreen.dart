import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonetime/payments/scanandpay.dart';
import 'package:payonetime/payments/sendtobank.dart';
import 'package:payonetime/payments/sendtonumber.dart';
import 'package:payonetime/screens/home/airtimerecharge.dart';
import 'package:payonetime/screens/home/electricity.dart';
import 'package:payonetime/screens/home/internet.dart';
import 'package:payonetime/screens/home/settings.dart';
import 'package:payonetime/utils/enlanguage.dart';
import 'package:payonetime/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import '../../utils/color.dart';
import '../../utils/colornotifir.dart';
import '../authscreens/signin.dart';
import '../customescreens/custtombutton.dart';
import 'help.dart';
import 'notification.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> trnax=[
    {
      'trnx_name': 'Paid to Garba Aliyu',
      'amount': -100,
      'lastSeen': DateTime.now().subtract(const Duration(hours: 2)),
    },
    {
      'trnx_name': 'Send from Aliyu Mudi',
      'amount': 700,
      'lastSeen': DateTime.now().subtract(const Duration(hours: 2)),
    },
    {
      'trnx_name': 'Paid to jatau Mugu',
      'amount': -300,
      'lastSeen': DateTime.now().subtract(const Duration(hours: 2)),
    },


  ];
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    bool checkTrnx = false;
    return  Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFF007cbb),
              height: height/4.5,
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
                  // ClipPath(
                  //   clipper:Customshape(),
                  //   child: Container(
                  //     height: 210,
                  //     width: MediaQuery.of(context).size.width/1.3,
                  //     color:const Color(0xFF2791c7) ,
                  //   ),
                  // ),
                  Column(

                    children: [
                      const SizedBox(height: 20,),
                       Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Setting()));

                            },
                            icon: const Icon(Icons.account_circle,size: 30,color: Colors.white,)),

                          const Expanded(
                              child: Align(
                                alignment: Alignment.topRight,


                              )),
                          const SizedBox(height: 90,),


                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,

                                child: Container(
                                  margin: const EdgeInsets.only(top: 10,right: 5),
                                  //color: Colors.red,
                                  //width: 48,
                                  height: 50,

                                  child: Row(
                                   mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Notifications()));
                                      },
                                          icon: const Icon(Icons.notifications,size: 27,color: Colors.white,)),
                                      IconButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Help()));
                                      },
                                          icon: const Icon(Icons.help,size: 27,color: Colors.white,)),


                                    ],
                                  ),
                                ),


                              // child: IconButton(
                              //     onPressed: (){
                              //
                              //     },
                              //     icon: const Icon(Icons.account_circle,size: 50,color: Colors.white,)),
                            ),
                          ),
                        ],

                      ),



                      Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Row(

                                children: [

                                  RichText(
                                    text:  TextSpan(
                                        children: [
                                          const TextSpan(text: 'Balance \n', style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "Kufam_Medium")),
                                          TextSpan(text: '₦${EnString.tenk}', style: const TextStyle(color: Colors.white,fontSize: 27,fontFamily: "Kufam_Medium"),),


                                        ]
                                    ),

                                  ),
                                  SizedBox(
                                    height: 20,


                                    child: IconButton(
                                        onPressed: (){

                                        },
                                        icon: const Icon(Icons.remove_red_eye,size: 30,color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ),


                          )

                      ),
                      const SizedBox(height: 20,)
                    ],

                  ),

                ],
              ),
            ),
            SizedBox(height: height/60),

                Container(
                  width: width/1.1,
                  height: height/7.5,
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
                         padding: EdgeInsets.only(left: 20,top: 5),
                         child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Money Transfer',
                            style: TextStyle(
                              color: Color(0xFF5E5353),
                              fontSize: 15,
                              fontFamily: 'Kufam_Bold',
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),
                       ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ScanAndPay()),
                              );

                            },
                            child: _buildButtonColumn(notifier.getwihitecolor, notifier.getblack,Icons.qr_code_scanner_rounded, 'Scan & Pay'),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, CupertinoPageRoute(builder: (context)=>const SendToNumber()),
                              );

                            },
                           child: _buildButtonColumn(notifier.getwihitecolor, notifier.getblack,Icons.contacts_outlined, 'To number'),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, CupertinoPageRoute(builder: (context)=>const SendtoBank()),
                              );

                            },
                            child: _buildButtonColumn(notifier.getwihitecolor, notifier.getblack,Icons.account_balance, 'To Bank'),
                          ),

                        ],
                      ),
                    ],
                  ),
                  ),

            SizedBox(height: height/70),
            Container(
              width: width/1.1,
              height: height/7.5,
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
                    padding: EdgeInsets.only(left: 20,top: 5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Recharge & Bills',
                        style: TextStyle(
                          color: Color(0xFF5E5353),
                          fontSize: 15,
                          fontFamily: 'Kufam_Bold',
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>const AirtimeRecharge()));
                        },
                          child: _buildButtonColumn(notifier.getwihitecolor, notifier.getblack,Icons.phone_android_rounded, 'Airtime')),
                      

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Internet()));
                        },
                          child: _buildButtonColumn(notifier.getwihitecolor, notifier.getblack,Icons.language_outlined, 'Internet',)),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Electricity()));
                        },
                        child: _buildButtonColumn(notifier.getwihitecolor, notifier.getblack,Icons.electric_meter, 'Electricity'),
                      ),
                    ],
                  ),
                ],
              ),

            ),
            SizedBox(height: height/130),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width/1.1,
                height: height/2.7,
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
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10,top: 10,),
                        child: Text("Payment History",style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF5E5353),fontFamily: "Kufam_Bold",),),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: trnax.length,
                          itemBuilder: (BuildContext context, int index) {

                            if(trnax[index]["amount"]<0){
                              checkTrnx=false;
                            }else{
                              checkTrnx=true;
                            }
                            return GestureDetector(
                              onTap: (){},
                              child: SizedBox(
                                height: height/9.4,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: const Icon(Icons.person),
                                      trailing:  Text(
                                        "NGN ${trnax[index]["amount"]}",
                                        style: checkTrnx?const TextStyle(color: Color(0xFF007cbb), fontSize: 13):const TextStyle(color: Colors.red, fontSize: 15),
                                      ),
                                      title: Text(trnax[index]["trnx_name"],style: const TextStyle(fontFamily: "Kufam_Medium"),),
                                      subtitle: Text(trnax[index]["lastSeen"].toString(),style: const TextStyle(fontFamily: "Kufam_Medium")),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 40,),
                                      child:
                                      Divider(),
                                    ),

                                  ],
                                ),
                              ),
                            );

                          }),
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      margin: const EdgeInsets.only(top: 10,bottom: 10),
                      width: width/5,
                      height: height/45,
                      decoration: ShapeDecoration(
                        color: const Color(0xffa6d4ef),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      child: GestureDetector(
                        onTap: (){},
                        child: const SizedBox(

                          height: 50,
                          child: (
                              Text(
                                'view more',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Kufam_Bold',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                          ),
                        ),
                      ),
                    )

                  ],
                ),


              ),
            ),
            SizedBox(height: height/200),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const ScanAndPay(),
                  ),
                );
              },

              // child:
              // Custombuttonico.button(primeryColor, "Scan & Pay", width/2.0,const EdgeInsets.only(left: 70))
              child: Container(
                alignment: Alignment.center,
                child: Custombuttonico.button(primeryColor, "Scan & Pay", width/2.5, const EdgeInsets.only(left: 5)),
              ),

            ),

            SizedBox(height: height/70)
          ],

        ),

      ),
    );
  }
  Column _buildButtonColumn(Color color,  color1, IconData icon,  String label) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 30),
        Container(
            width: 50,
            height: 50,
            decoration: ShapeDecoration(
              color: notifier.getprimeryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child:

        Icon(icon, color: color,size: 40,)),
        Container(
          margin: const EdgeInsets.only(top: 8),
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
      ],
    );
  }

}

