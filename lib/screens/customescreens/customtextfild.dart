
import 'package:flutter/material.dart';
import '../../utils/mediaqury.dart';

class Customtextfild {
  static Widget textField(con, labletext, focuscolor, lablecolor, iconcolor,
      textcolor, bordercolor, h, w, labletxt, labletxtcolor, {required TextInputType keyboardType}) {
    return Container(
      color: Colors.transparent,
      height: h,
      width: w,
      child: TextField(
        controller: con,
        style: TextStyle(color: textcolor),
        onChanged: (value) {},
        // obscureText: hidePassword, //show/hide password
        decoration: InputDecoration(
          floatingLabelBehavior:FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

          hintText: labletext,
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          hintStyle: TextStyle(color: lablecolor, fontSize: height / 60),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: bordercolor, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: focuscolor, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

class Customtextbox {
  static Widget textField(con, labletext,bordercolor,focuscolor,
       h, w,TextInputType,

      ) {
    return Container(
      color: Colors.transparent,
      height: h,
      width: w,
      child: TextField(
        //cursorRadius: const Radius.elliptical(10, 10),
        keyboardType: TextInputType,
        controller: con,
        onChanged: (value) {},
        //obscureText: hidePassword, //show/hide password
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: labletext,
          labelStyle: const TextStyle(
            color: Color(0xff888b8c),
            fontFamily:'Kufam_Medium'
          ),

         // hintText: labletext,
          floatingLabelBehavior:FloatingLabelBehavior.auto,
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          //

          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          // hintStyle: TextStyle(color: lablecolor, fontSize: height / 60),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(15),
          // ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: bordercolor, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: focuscolor, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}










