import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DataEntryScreen extends StatefulWidget {
  @override
  _DataEntryScreenState createState() => _DataEntryScreenState();
}

class _DataEntryScreenState extends State<DataEntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                'Please Enter Details'
                    .text
                    .white
                    .size(23)
                    .textStyle(TextStyle(shadows: [
                      Shadow(
                        offset: const Offset(2.0, 2.0),
                        blurRadius: 7.0,
                        color: Colors.black
                            .withOpacity(0.5), //color of shadow with opacity
                      ),
                    ]))
                    .bold
                    .makeCentered()
              ],
            ),
          ).p(24),
        ),
      ),
    );
  }
}
