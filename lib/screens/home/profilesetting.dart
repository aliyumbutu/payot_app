import 'package:flutter/material.dart';
import 'package:payonetime/screens/authscreens/otp.dart';
import 'package:payonetime/screens/home/settings.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/customtextfild.dart';
import '../customescreens/custtombutton.dart';
import 'homescreen.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  late ColorNotifier notifier;
  TextEditingController name = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController gender = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
          EnString.profilesetss,
          style: TextStyle(
            color: notifier.getwihitecolor,
            fontFamily: 'Kufam_Medium',
          ),
        ),

      ),

      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          width: width/1.0,
          height: height/1.5,
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.7799999713897705),
            shape:RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 30,),

               Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(EnString.name,style: const TextStyle(
                        fontFamily: "Kufam_Bold"
                      ),)
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                  margin: const EdgeInsets.only(left: 20,right:20),
                  child: Customtextfild.textField(name, "", notifier.getvisacolor, notifier.getvisacolor, notifier.getvisacolor, notifier.getvisacolor, notifier.getvisacolor,
                      height/12, width/1.1, EnString.name, notifier.getvisacolor, keyboardType: TextInputType.text),
              ),

               Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(EnString.phonenumber,style: const TextStyle(
                          fontFamily: "Kufam_Bold"
                      ),)
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20,right:20),
                child: Customtextfild.textField(phonenumber, "", notifier.getvisacolor, notifier.getvisacolor, notifier.getvisacolor, notifier.getvisacolor, notifier.getvisacolor,
                    height/12, width/1.1, EnString.name, notifier.getvisacolor, keyboardType: TextInputType.text),
              ),
               Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(EnString.email,style: const TextStyle(
                          fontFamily: "Kufam_Bold"
                      ),)
                  ),
                ],
              ),

              Container(
                  margin: const EdgeInsets.only(left: 20,right:20),
                child: Customtextfild.textField(email, "", notifier.getvisacolor, notifier.getvisacolor, notifier.getvisacolor, notifier.getvisacolor, notifier.getvisacolor,
                    height/12, width/1.1, EnString.name, notifier.getvisacolor, keyboardType: TextInputType.text),
              ),
               Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                      child: Text(EnString.gender,style: const TextStyle(
                          fontFamily: "Kufam_Bold"
                      ),)
                  ),
                ],
              ),


              Container(
                  margin: const EdgeInsets.only(left: 20,right:20),
                child: Customtextfild.textField(gender,"", notifier.getvisacolor, notifier.getvisacolor, notifier.getvisacolor, notifier.getvisacolor, notifier.getvisacolor,
                    height/12, width/1.1, EnString.name, notifier.getvisacolor, keyboardType: TextInputType.text),
              ),
               GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Otp()));
                },
                child: Custombutton.button(notifier.getprimeryColor, 'Save', width/1.2),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Otp()));
                    },
                    child: Custombutton.button(notifier.getprimeryColor, 'Upgrade Account', width/2.5),
                  ),
                   GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                    },
                    child: Custombutton.button(notifier.getred, 'Close Account', width/2.5),
                  ),
                ],
              )
            ],
          ),
        ),


      ),


    );
  }
}
