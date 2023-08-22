import 'package:flutter/material.dart';

import '../../utils/mediaqury.dart';
import '../customescreens/model.dart';



class Passcode extends StatefulWidget {
  const Passcode({Key? key}) : super(key: key);

  @override

  _Passcode createState() => _Passcode();
}



class _Passcode extends State<Passcode> {

  late List<List<dynamic>> keys;
  late String passcode;


  @override
  void initState() {
    super.initState();
    keys = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9'],
      [
        '.',
        '0',
        const Icon(
          Icons.backspace,
          color: Colors.black,
        )
      ],
    ];
    passcode = '';
  }

  onKeyTap(val) {
    if (val == '0' && passcode.isEmpty) {
      return;
    }
    setState(() {
      passcode = passcode + val;
    });
  }

  onBackspacePress() {
    if (passcode.isEmpty) {
      return;
    }

    setState(() {
      passcode = passcode.substring(0, passcode.length - 1);
    });
  }

  renderKeyboard() {
    return keys
        .map(
          (x) => Row(
        children: x.map(
              (y) {
            return Expanded(
              child: KeyboardKey(
                label: y,
                value: y,
                onTap: (val) {
                  if (val is Widget) {
                    onBackspacePress();
                  } else {
                    onKeyTap(val);
                  }
                },
              ),
            );
          },
        ).toList(),
      ),
    )
        .toList();
  }

  renderpasscode() {
    String display = 'Enter your Passcode';
    TextStyle style = const TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    );

    if (passcode.isNotEmpty) {
      // NumberFormat f = NumberFormat('#,###');
      display = passcode;
      // display = f.format(int.parse(passcode));
      style = style.copyWith(
        color: Colors.black,
      );
    }

    return Expanded(
      child: Center(
        child: Text(
          display,
          style: style,
        ),
      ),
    );
  }

  renderConfirmButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: GestureDetector(
        onTap: passcode.isNotEmpty ? () {} : null,
        child: Container(
          height: 50.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: passcode.isNotEmpty ? const Color(0xFF2791c7) : Colors.grey,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              'Submit',
              style: TextStyle(
                color: passcode.isNotEmpty ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xffa6d4ef),
          child: Column(
            children: [
              renderpasscode(),
              ...renderKeyboard(),
              const SizedBox(
                height: 10,
              ),
              renderConfirmButton(),
            ],
          ),
        ),
      ),
    );
  }
}
