import 'package:flutter/material.dart';

import '../../utils/mediaqury.dart';


class Custombutton {

  static Widget button(clr,text,wid){

    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: clr,
        ),
        height: height / 20,
        width: wid,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: height / 50,
                fontFamily: 'Kufam_Medium'),
          ),
        ),
      ),
    );
  }
}
class Custombuttonico{

  static Widget button(clr,text,wid, EdgeInsets edgeInsets){
    //notifier = Provider.of<ColorNotifier>( listen: true);
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: clr,
        ),
        height: height / 15,
        width: wid,
         child: Row(
          children: [

            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 20),

               child: const Icon(Icons.qr_code_rounded,color: Colors.white,size: 30,),

            ),
            const SizedBox(width: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: height / 50,
                    fontFamily: 'Kufam_Medium'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}