import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import 'help.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Help()));
          },
              icon: const Icon(Icons.help_outline))
        ],
        backgroundColor: notifier.getprimeryColor,

        centerTitle: false,
        title: Text(
          EnString.notificatio,
          style: TextStyle(
            color: notifier.getwihitecolor,
            fontFamily: 'Kufam_Medium',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: ClipPath(
                  clipper: LowerNipMessageClipper(MessageType.receive),
                  child: Container(
                    height: height/6,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xffc0ddec),
                  ),
                ),


              ),
             

              Container(
                //color: Colors.red,
                height: height/10,
                width: MediaQuery.of(context).size.width,

                margin: const EdgeInsets.only(left:70,right: 20,top: 40),
                child: const Center(
                  child: Text(
                    'There Valued custumer pkwd sadkljashm  sdafnasdkjfndsafd adsjkfaflkasdf dslfkdsaf  fasdfmaskdf dfslfkasdf ;sadfkldf\ndfsldfdsfsdfs.',
                    style: TextStyle(
                      color: Color(0xFF1F1818),
                      fontSize: 15,
                      fontFamily: 'Kufam_Medium',
                      //fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )






            ],
          ),

        ),

      )
    );
  }
}
