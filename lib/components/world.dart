import 'package:flame/components.dart';
import 'package:flame/sprite.dart';

class World extends SpriteComponent with HasGameRef {
  late final Sprite grass;
  late final Sprite sign;
  late final Sprite chair;

  @override
  Future<void>? onLoad() async {
    final spriteSheet = SpriteSheet(
      image: await gameRef.images.load('assets/images/roguelikeSheet_transparent.png'),
      srcSize: Vector2(16.0, 16.0),
    );

    grass = spriteSheet.getSprite(1, 6);
    sign = spriteSheet.getSprite(1, 19);
    chair = spriteSheet.getSprite(3, 22);

    // final composition = ImageComposition()
    // ..add(image1, Vector2(0, 0))
    // ..add(image2, Vector2(64, 0));
    // ..add(image3,
    //   Vector2(128, 0),
    //   source: Rect.fromLTWH(32, 32, 64, 64),
    // );

    // Image image = await composition.compose();
  }
}
