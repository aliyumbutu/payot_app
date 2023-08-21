import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/customescreens/customtextfild.dart';
import '../screens/customescreens/custtombutton.dart';
import '../screens/home/settings.dart';
import '../utils/colornotifir.dart';
import '../utils/enlanguage.dart';
import '../utils/mediaqury.dart';

class SendtoBank extends StatefulWidget {
  const SendtoBank({super.key});

  @override
  State<SendtoBank> createState() => _SendtoBankState();
}

class _SendtoBankState extends State<SendtoBank> {
  late ColorNotifier notifier;
  TextEditingController SelectBank = TextEditingController();
  TextEditingController AccountNumber = TextEditingController();
  TextEditingController Amount = TextEditingController();
  TextEditingController AddComment = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: notifier.getprimeryColor,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Setting()));
          },
              icon: const Icon(Icons.help_outline))

        ],
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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          width: width/1.0,
          height: height/1.9,
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
              Container(
                margin: const EdgeInsets.only(left: 10,right: 10,),

                child: Customtextfild.textField(
                  SelectBank,
                  EnString.FirstName,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  notifier.getblack,
                  notifier.getvisacolor,
                  height / 12,
                  width / 1.1,
                  EnString.number,
                  notifier.getvisacolor,
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10,right: 10,),

                child: Customtextfild.textField(
                  AccountNumber,
                  EnString.FirstName,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  notifier.getblack,
                  notifier.getvisacolor,
                  height / 12,
                  width / 1.1,
                  EnString.number,
                  notifier.getvisacolor,
                  keyboardType: TextInputType.text,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const Text(
                      "Aliyu Muhammad"
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(left: 10,right: 10,),

                child: Customtextfild.textField(
                  Amount,
                  EnString.FirstName,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  notifier.getblack,
                  notifier.getvisacolor,
                  height / 12,
                  width / 1.1,
                  EnString.number,
                  notifier.getvisacolor,
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10,right: 10,),

                child: Customtextfild.textField(
                  AddComment,
                  EnString.FirstName,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  notifier.getblack,
                  notifier.getvisacolor,
                  height / 12,
                  width / 1.1,
                  EnString.number,
                  notifier.getvisacolor,
                  keyboardType: TextInputType.text,
                ),
              ),

              GestureDetector(
                onTap: (){

                },
                child: Custombutton.button(notifier.getprimeryColor, EnString.login,width/1.2),
              )


            ],

          ),
        ),
      ),

    );
  }
}