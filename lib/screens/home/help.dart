import 'package:flutter/material.dart';
import 'package:payonetime/screens/customescreens/custtombutton.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../authscreens/otp.dart';
import '../customescreens/customtextfild.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    TextEditingController subject = TextEditingController();
    TextEditingController message = TextEditingController();
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(

        backgroundColor: notifier.getprimeryColor,

        centerTitle: false,
        title: Text(
          EnString.help,
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
          height: height/1.3,
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.7799999713897705),
            shape:RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 25,),
              Text(EnString.call,style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFF1587c1),
                  fontFamily: 'Kufam_Medium'
              ),),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.only(left: 5,right: 5),
                child: Text(EnString.weareavailable,style: const TextStyle(
                    fontSize: 15,
                    fontFamily: 'Kufam_Medium'
                ),),
              ),
              const SizedBox(height: 10,),
              Text(EnString.contact,style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Kufam_Medium'
              ),),
              const SizedBox(height: 10,),
              Text(EnString.emailus,style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFF1587c1),
                  fontFamily: 'Kufam_Medium'
              ),),
              const SizedBox(height: 10,),
              Text(EnString.mail,style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Kufam_Medium'
              ),),

              const SizedBox(height: 15,),

              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20,),
                    child: Text(EnString.sendmessage,style: const TextStyle(
                      fontSize: 15,
                        color: Color(0xFF1587c1),
                      fontFamily: 'Kufam_Medium'
                    ),),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                  margin: const EdgeInsets.only(left: 20,right:20),
                  child: Customtextbox.textField(
                    subject,
                    EnString.subject,
                    notifier.getvisacolor,
                    notifier.getvisacolor,
                    height / 12,
                    width / 1.1,
                    TextInputType.text,



                  )
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20,top:5 ),
                height: height/5,
               // color: Colors.blueAccent,
                margin: const EdgeInsets.all(10),
                child: TextField(
                  controller: message,
                  keyboardType: TextInputType.multiline,
                  maxLines: 10,
                  decoration: const InputDecoration(
                      hintText: "message",
                      //labelText: 'Message',
                    border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color:Color(0xFF1587c1) )
                      ),

                  ),


                ),



              ),

              GestureDetector(
                onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Otp()));

                },
                child: Custombutton.button(notifier.getprimeryColor, EnString.sendmessage, width/1.2),

              )

            ],
          ),
        ),
      )
    );
  }
}
