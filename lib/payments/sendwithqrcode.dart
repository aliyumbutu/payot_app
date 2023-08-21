import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonetime/payments/passcoderequest.dart';
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
          EnString.sendingqr,
          style: TextStyle(
            color: notifier.getwihitecolor,
            fontFamily: 'Kufam_Medium',
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
                        width: width/9.0,
                        height: height/15,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFCFE8F2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                       Column(
                          children: [
                            Text(EnString.aliyu,style: const TextStyle(
                              fontFamily: 'Kufam_Medium',
                              fontSize: 18
                            ),),
                            const Text("081018383488",style: TextStyle(
                              fontFamily: 'Kufam_Medium',
                              fontSize: 20,
                            ),)
                          ],

                      )

                    ],
                  ),
                  const SizedBox(height: 10,),

                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20),
                      child: Customtextbox.textField(
                        EnterAmount,
                        EnString.enteramt,
                        notifier.getvisacolor,
                        notifier.getvisacolor,
                        height / 12,
                        width / 1.1,
                        TextInputType.number,


                      )
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 20,right: 20),
                      child: Customtextbox.textField(
                        addcomment,
                        EnString.addcommt,
                        notifier.getvisacolor,
                        notifier.getvisacolor,
                        height / 12,
                        width / 1.1,
                        TextInputType.text,


                      )
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const PasscodeRequest()));

                    },
                    child: Custombutton.button(notifier.getprimeryColor, EnString.proceed,width/1.2),
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
