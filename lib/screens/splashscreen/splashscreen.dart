import 'dart:async';
import 'package:flutter/material.dart';
import 'package:payonetime/screens/authscreens/signin.dart';
import 'package:provider/provider.dart';
import '../../utils/colornotifir.dart';
import '../../utils/mediaqury.dart';




class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  late ColorNotifier notifier;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>  SignIn(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    notifier = Provider.of<ColorNotifier>(context, listen: true);

    return Scaffold(
      backgroundColor: notifier.getbackgroudcolor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height / 3.2),
            Image.asset("assets/logo2.png", height: height / 4.5),
          ],
        ),
      ),
    );
  }
}
