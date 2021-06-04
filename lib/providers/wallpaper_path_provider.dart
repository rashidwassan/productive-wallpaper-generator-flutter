import 'package:flutter/material.dart';

class WallpaperProvider with ChangeNotifier {
  int wallpaper_no = 1;

  void changeToNextWallpaper() {
    if (wallpaper_no == 14) wallpaper_no = 0;
    wallpaper_no = wallpaper_no + 1;
    notifyListeners();
  }

  void changeToPreviousWallpaper() {
    if (wallpaper_no == 1) wallpaper_no = 14;
    wallpaper_no = wallpaper_no - 1;
    notifyListeners();
  }
}
