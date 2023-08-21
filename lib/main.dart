
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonetime/screens/home/homescreen.dart';
import 'package:payonetime/screens/home/paymentcomple.dart';
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
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blueAccent,
          )
        ),
        home:const Splashscreen(),

        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}