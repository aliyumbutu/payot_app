import 'package:flutter/material.dart';
import 'package:payonetime/screens/home/help.dart';
import 'package:payonetime/screens/home/settings.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../utils/colornotifir.dart';
import '../utils/mediaqury.dart';


class ScanAndPay extends StatefulWidget {
  const ScanAndPay({super.key});

  @override
  State<ScanAndPay> createState() => _ScanAndPay();

}

class _ScanAndPay extends State<ScanAndPay> {
  late ColorNotifier notifier;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    controller?.resumeCamera();
    // const size = MediaQuery.of(context).size;
    // height = MediaQuery.of(context).size.height,
    // width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: notifier.getprimeryColor,
        title:  const Text("Scan and Pay",style: TextStyle(
          fontFamily: "Kufam_Medium"
        ),),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Help()));
          },
              icon: const Icon(Icons.help))
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 5,
              child: _buildQrView(context)),

          Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  _buildButtonColumnqr(notifier.getwihitecolor, notifier.getblack,Icons.image, 'Upload from gallery'),
                  _buildButtonColumnqr(notifier.getwihitecolor, notifier.getblack,Icons.flashlight_on, 'Turn On Light'),

                ],
              )
            ],

          ),
          const SizedBox(height: 10,)

        ],

      ),

    );

  }
  Widget _buildQrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.blue.shade900,
        borderRadius: 16,
        borderLength: 32,
        borderWidth: 8,
        cutOutSize: MediaQuery.of(context).size.width * 0.75,
      ),

    );
  }
  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
return Container();

          });
    });
  }
  Column _buildButtonColumnqr(Color color,  color1, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 30),
        Container(
            width: 70,
            height: 70,
            decoration: ShapeDecoration(
              color: notifier.getprimeryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child:
            Icon(icon, color: color)),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: "Kufam_Medium",
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: color1,
            ),
          ),
        ),
      ],
    );
  }




}

