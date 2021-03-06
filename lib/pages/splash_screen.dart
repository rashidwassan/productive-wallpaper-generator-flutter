import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_daily_vocab_wallpaper_generator/pages/data_entry_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  static const String id = '/';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  _animateLogo() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
  }

  _navigate() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => DataEntryScreen()));
    });
  }

  late AnimationController _controller;
  late Animation _animation;
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
    _animateLogo();
    _navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/images/1.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/book_icon.png',
                width: _animation.value * (context.percentWidth * 65),
              ),
              16.heightBox,
              'InfoWall'.text.size(_animation.value * 26).white.makeCentered()
            ],
          ),
        ),
      ),
    );
  }
}
