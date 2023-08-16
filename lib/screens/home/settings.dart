
import 'package:flutter/material.dart';
import 'package:payonetime/screens/home/profilesettings.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';

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
    return  Scaffold(
      appBar: AppBar(

        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.help_outline))
        ],
        backgroundColor: notifier.getprimeryColor,

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
      body:    SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 20,),
            const Text(
              'Aliya Muhammad',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Gilroy-Medium',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '019191083929',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Gilroy-Medium',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: PrettyQr(
                    image: const AssetImage('assets/logo2.png'),
                    typeNumber: 3,
                    size: 200,
                    data: 'https://payonetime.ng',
                    errorCorrectLevel: QrErrorCorrectLevel.M,
                    roundEdges: true,
                  ),
                )


              ],
            ),
            const SizedBox(height: 10),

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
                const SizedBox(height: 20),
                Container(
                  height: height/2.0,
                  width: width,
                  decoration: BoxDecoration(
                    color: notifier.getwihitecolor,
                  ),


                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileSettings(),
                            ),
                          );
                        },
                        child: settingtype(Icons.settings, EnString.editprofile),
                      ),

                      SizedBox(height: height/50),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileSettings(),
                            ),
                          );
                        },
                        child: settingtype(Icons.verified, EnString.kyc),
                      ),
                      const SizedBox(height:20,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileSettings(),
                            ),
                          );
                        },
                        child: settingtype(Icons.document_scanner, EnString.statement),
                      ),
                      SizedBox(height: height/50),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileSettings(),
                            ),
                          );
                        },
                        child: settingtype(Icons.lock_person_sharp, EnString.changepss),
                      ),
                      SizedBox(height: height/50),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileSettings(),
                            ),
                          );
                        },
                        child: settingtype(Icons.info_outline, EnString.accLmt),
                      ),
                      SizedBox(height: height/50),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileSettings(),
                            ),
                          );
                        },
                        child: settingtype(Icons.help_outline_rounded, EnString.help),
                      ),
                      SizedBox(height: height/50),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileSettings(),
                            ),
                          );
                        },
                        child: settingtype(Icons.settings, EnString.about),
                      ),
                      SizedBox(height: height/20,),
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
                fontFamily: "Gilroy-Medium",
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
              fontFamily: 'Gilroy_Medium',
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
