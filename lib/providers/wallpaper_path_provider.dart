import 'package:flutter/material.dart';

class WallpaperProvider with ChangeNotifier {
  int wallpaper_no = 1;

  void changeWallpaper() {
    if (wallpaper_no == 6) wallpaper_no = 0;
    wallpaper_no = wallpaper_no + 1;
    notifyListeners();
  }
}
