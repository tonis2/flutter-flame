import 'package:flame/game.dart';

import './components/player.dart';
import 'dart:ui';

class RPGGame extends FlameGame {
  late Size screenSize;
  late double tileSize;

  void render(Canvas canvas) {
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color.fromARGB(255, 66, 165, 245);
    canvas.drawRect(bgRect, bgPaint);
  }

  void update(double t) {}

  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 3;
  }
}
