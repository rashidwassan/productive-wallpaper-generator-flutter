import 'package:flutter/material.dart';
import 'package:flutter_daily_vocab_wallpaper_generator/providers/wallpaper_path_provider.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class DataEntryScreen extends StatefulWidget {
  @override
  _DataEntryScreenState createState() => _DataEntryScreenState();
}

class _DataEntryScreenState extends State<DataEntryScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WallpaperProvider(),
      builder: (context, child) => Scaffold(
        body: Consumer<WallpaperProvider>(
          builder: (context, value, child) => GestureDetector(
            onDoubleTap: () {
              value.changeWallpaper();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/${value.wallpaper_no}.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
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
                          Column(
                            children: [
                              _buildFactField(),
                              _buildFactField(),
                            ],
                          ),
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
      blurRadius: 7.0,
      color: Colors.black.withOpacity(0.5), //color of shadow with opacity
    ),
  ],
);
