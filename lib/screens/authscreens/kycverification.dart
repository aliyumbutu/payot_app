
import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../home/profilesetting.dart';

class KycVerification extends StatefulWidget {
  const KycVerification({super.key});

  @override
  State<KycVerification> createState() => _KycVerification();
}

class _KycVerification extends State<KycVerification> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(

        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.help))
        ],
        backgroundColor: notifier.getprimeryColor,

        centerTitle: false,
        title: Text(
          EnString.kycverfi,
          style: TextStyle(
            color: notifier.getwihitecolor,
            fontFamily: 'Kufam_Medium',
          ),
        ),
      ),
      body:    Column(
        children: [
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.all(10),
            width: width/1.0,
            height: height/4.0,
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.7799999713897705),
              shape:RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child:
              Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    height: height/5.0,
                    width: width,
                    decoration: BoxDecoration(
                      color: notifier.getwihitecolor,
                    ),


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(height: 10,),
                        GestureDetector(
                          onTap: () {

                          },
                          child: settingtype(Icons.account_box, EnString.addbvn),
                        ),
                        const Padding(
                          padding:  EdgeInsets.only(left: 40),
                          child: Divider(),
                        ),

                       // const SizedBox(height: 20),
                        GestureDetector(

                          onTap: () {

                          },

                          child: settingtype(Icons.speed_sharp, EnString.increslmt),
                        ),
                        const Padding(
                          padding:  EdgeInsets.only(left: 40),
                          child: Divider(),
                        ),
                        // SizedBox(height:20,),


                        GestureDetector(
                          onTap: () {

                          },
                          child: settingtype(Icons.star, EnString.upgtobuss),
                        ),


                      ],
                    ),

                  ),

                ],

              ),

          )






        ],
      ),







    );
  }
  Column _buildButtonColumnShareDocument(Color color,  color1,  String label) {
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
  Widget settingtype(icon, title) {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          SizedBox(width: width / 20),
          Icon(
            icon,
            size: height / 40,
            color: notifier.getblack,
          ),
          // Image.asset(
          //   image,
          //   height: height / 27,
          //   color: notifier.getblack,
          // ),
          SizedBox(width: width / 30),
          Text(
            title,
            style: TextStyle(
              color: notifier.getblack,
              fontSize: height / 50,
              fontFamily: 'Kufam_Medium',
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: height / 40,
            color: notifier.getblack,
          ),
          SizedBox(width: width / 20)
        ],
      ),
    );
  }
}
