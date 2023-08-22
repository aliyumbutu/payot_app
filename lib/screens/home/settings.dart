
import 'package:flutter/material.dart';
import 'package:payonetime/screens/authscreens/kycverification.dart';
import 'package:payonetime/screens/home/help.dart';
import 'package:payonetime/screens/home/profilesetting.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../authscreens/setpasscode.dart';
import 'accountlimit.dart';
import 'accountstatement.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _Setting();
}

class _Setting extends State<Setting> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return  Scaffold(
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
          "Settings",
          style: TextStyle(
            color: notifier.getwihitecolor,
            fontFamily: 'Kufam_Medium',
          ),
        ),
      ),
      body:    SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 10,),
            const Text(
              'Aliya Muhammad',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Kufam_Medium',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '019191083929',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Kufam_Medium',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: PrettyQr(
                    image: const AssetImage('assets/logo2.png'),
                    typeNumber: 3,
                    size: 150,
                    data: 'https://payonetime.ng',
                    errorCorrectLevel: QrErrorCorrectLevel.M,
                    roundEdges: true,
                  ),
                )


              ],
            ),
            const SizedBox(height: 5),

            const Text(
              'Scan and Pay me with this QR',
              style: TextStyle(
                color: Color(0xFF5F5353),
                fontSize: 15,
                fontFamily: 'Krona One',
                fontWeight: FontWeight.w400,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildButtonColumnShareDocument(notifier.getwihitecolor, notifier.getwihitecolor, 'Share'),
                    _buildButtonColumnShareDocument(notifier.getwihitecolor, notifier.getwihitecolor, 'Download')

                  ],
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.all(20),
                  height: height/2.2,
                  width: width,
                  decoration: BoxDecoration(
                    color: notifier.getwihitecolor,
                  ),


                  child: Column(
                    children: [
                       SizedBox(height: height/70,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileSettings(),
                            ),
                          );
                        },
                        child: settingtype(Icons.settings, EnString.profilesetss),
                      ),
                      const Padding
                        (padding: EdgeInsets.only(left: 20,right: 20),
                        child: Divider(),
                      ),

                      SizedBox(height: height/70),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const KycVerification(),
                            ),
                          );
                        },
                        child: settingtype(Icons.verified, EnString.kycup),
                      ),
                      const Padding
                        (padding: EdgeInsets.only(left: 20,right: 20),
                        child: Divider(),
                      ),
                       SizedBox(height:height/70,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AccountStatement(),
                            ),
                          );
                        },
                        child: settingtype(Icons.document_scanner, EnString.downlodstm),
                      ),
                      const Padding
                        (padding: EdgeInsets.only(left: 20,right: 20),
                        child: Divider(),
                      ),
                      SizedBox(height: height/70),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SetPascscode(),
                            ),
                          );
                        },
                        child: settingtype(Icons.lock_person_sharp, EnString.chagss),
                      ),
                      const Padding
                        (padding: EdgeInsets.only(left: 20,right: 20),
                        child: Divider(),
                      ),
                      SizedBox(height: height/70),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AccountLimit(),
                            ),
                          );
                        },
                        child: settingtype(Icons.info_outline, EnString.acclmt),
                      ),
                      const Padding
                        (padding: EdgeInsets.only(left: 20,right: 20),
                        child: Divider(),
                      ),
                      SizedBox(height: height/70),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Help(),
                            ),
                          );
                        },
                        child: settingtype(Icons.help_outline_rounded, EnString.help),
                      ),
                      const Padding
                        (padding: EdgeInsets.only(left: 20,right: 20),
                        child: Divider(),
                      ),
                      SizedBox(height: height/70),
                      GestureDetector(
                        onTap: () {

                        },
                        child: settingtype(Icons.settings, EnString.aboutus),
                      ),

                      SizedBox(height: height/70,),
                      Container(
                        width: 130,
                        height: 22,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        child: const SizedBox(
                          height: 50,
                          child: (
                              Text(
                                '(C)Payonetime Nigeria',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF007CBB),
                                  fontSize: 12,
                                  fontFamily: 'Gilroy-Bold',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                          ),
                        ),
                      )




                    ],
                  ),

                ),

              ],

            )


          ],
        ),


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
