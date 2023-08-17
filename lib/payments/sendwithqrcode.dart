import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/customescreens/customtextfild.dart';
import '../screens/customescreens/custtombutton.dart';
import '../screens/home/settings.dart';
import '../utils/colornotifir.dart';
import '../utils/enlanguage.dart';
import '../utils/mediaqury.dart';

class SendWithQrCode extends StatefulWidget {
  const SendWithQrCode({super.key});


  @override
  State<SendWithQrCode> createState() => _SendWithQrCodeState();

}
class _SendWithQrCodeState extends State<SendWithQrCode> {
  late ColorNotifier notifier;
  TextEditingController EnterAmount = TextEditingController();
  TextEditingController addcomment = TextEditingController();
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
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: width/1.0,
              height: height/2.2,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.7799999713897705),
                shape:RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50, color: Color(0x8CD1C9C9)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40,bottom: 10,left: 20),
                        width: width/5.0,
                        height: height/10,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFCFE8F2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      const Column(
                          children: [
                            Text('Aliyu Muhammad'),
                            Text("081018383488")
                          ],

                      )

                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.only(left: 10,right: 10,),

                    child: Customtextfild.textField(
                      EnterAmount,
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
                      addcomment,
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
            )
          ],
        ),
      ),

    );
  }
}
