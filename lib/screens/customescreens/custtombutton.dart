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
        height: height / 15,
        width: wid,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: height / 50,
                fontFamily: 'Gilroy_Medium'),
          ),
        ),
      ),
    );
  }
}