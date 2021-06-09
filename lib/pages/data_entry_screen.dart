import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class DataEntryScreen extends StatefulWidget {
  @override
  _DataEntryScreenState createState() => _DataEntryScreenState();
}

class _DataEntryScreenState extends State<DataEntryScreen> {
  String src =
      'https://source.unsplash.com/random/1440x2560?v=${DateTime.now().millisecondsSinceEpoch}';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onDoubleTap: () {
          setState(() {
            src =
                'https://source.unsplash.com/random/1440x2560?v=${DateTime.now().millisecondsSinceEpoch}';
          });
        },
        child: Container(
          height: context.percentHeight * 100,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: NetworkImage(
                  src,
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.75), BlendMode.darken)),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                height: context.percentHeight * 100,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Write Title',
                          hintStyle: normalSizeText.copyWith(
                            color: Colors.white54,
                            fontSize: 30,
                          ),
                          border: InputBorder.none),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: normalSizeText.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 5),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildWordColumn(),
                          _buildWordColumn(),
                          _buildWordColumn(),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    )
                  ],
                ).p(24),
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextField _buildFactField() {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          hintText: 'Write a fact',
          hintStyle: normalSizeText.copyWith(
              color: Colors.white54, fontSize: 17, fontWeight: FontWeight.w500),
          border: InputBorder.none),
      maxLines: 1,
      textAlign: TextAlign.center,
      style: normalSizeText.copyWith(fontSize: 17, fontWeight: FontWeight.w500),
    );
  }

  Column _buildWordColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(0),
              hintText: 'Write Word',
              hintStyle: normalSizeText.copyWith(
                color: Colors.white54,
                fontSize: 35,
              ),
              border: InputBorder.none),
          maxLines: 1,
          textAlign: TextAlign.center,
          style: normalSizeText.copyWith(
              fontSize: 35, fontWeight: FontWeight.w700, letterSpacing: 1),
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(0),
              hintText: 'Write Meaning',
              hintStyle: normalSizeText.copyWith(color: Colors.white54),
              border: InputBorder.none),
          maxLines: 1,
          textAlign: TextAlign.center,
          style: normalSizeText.copyWith(
              fontSize: 25, fontWeight: FontWeight.w700, letterSpacing: 1),
        ),
        TextField(
          decoration: InputDecoration(
              hintText: 'Write Sentence Usage',
              hintStyle:
                  normalSizeText.copyWith(color: Colors.white54, fontSize: 15),
              border: InputBorder.none),
          maxLines: 2,
          textAlign: TextAlign.center,
          style: normalSizeText.copyWith(
              fontSize: 15, fontWeight: FontWeight.w600, letterSpacing: 1),
        ),
        // Container(
        //   height: 1,
        //   width: double.infinity,
        //   decoration: BoxDecoration(boxShadow: [
        //     BoxShadow(
        //         color: Colors.black26,
        //         spreadRadius: 1,
        //         blurRadius: 1,
        //         offset: Offset(1, 1))
        //   ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        // )
      ],
    );
  }
}

TextStyle normalSizeText = TextStyle(
  fontSize: 20,
  color: Colors.white,
  shadows: [
    Shadow(
      offset: const Offset(2.0, 2.0),
      blurRadius: 10.0,
      color: Colors.black.withOpacity(0.5), //color of shadow with opacity
    ),
  ],
);
