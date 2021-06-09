import 'package:flutter/material.dart';
import 'package:flutter_daily_vocab_wallpaper_generator/pages/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(WallpaperApp());
}

class WallpaperApp extends StatefulWidget {
  @override
  _WallpaperAppState createState() => _WallpaperAppState();
}

class _WallpaperAppState extends State<WallpaperApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      home: SplashScreen(),
    );
  }
}
