
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonetime/screens/authscreens/register.dart';
import 'package:payonetime/screens/splashscreen/splashscreen.dart';
import 'package:payonetime/utils/colornotifir.dart';
import 'package:provider/provider.dart';
//
// void goFullScreen(){
//   document.documentElement?.requestFullscreen();
// }

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ColorNotifier(),
        ),
      ],
      child:const MaterialApp(
        // home: Onbonding(),
        home:Splashscreen(),
        //Onbonding(),
        //Splshscreen(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}