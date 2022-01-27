import 'package:flame/components.dart';
import '../game.dart';
import 'dart:ui';

class World extends SpriteComponent with HasGameRef {
  late Rect bgRect;
  final RPGGame game;

  World(this.game) {
    // bgRect = Rect.fromLTWH(
    //   0,
    //   game.screenSize.height - (game.tileSize * 23),
    //   game.tileSize * 9,
    //   game.tileSize * 23,
    // );
  }

  void render(Canvas c) {}

  void update(double t) {}
}
