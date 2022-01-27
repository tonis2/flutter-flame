import 'package:flame/components.dart';
import 'package:flame/sprite.dart';

class Player extends SpriteComponent with HasGameRef {
  SpriteComponent npc = SpriteComponent();
  late SpriteAnimation moveDown;
  late SpriteAnimation moveUp;
  late SpriteAnimation moveRight;
  late SpriteAnimation moveLeft;
  @override
  Future<void> onLoad() async {
    super.onLoad();
    var spriteSheet = SpriteSheet(
      image: await gameRef.images.load('assets/images/npc.png'),
      srcSize: Vector2.all(32.0),
    );

    // var spriteData = SpriteAnimationData.sequenced(amount: 4, stepTime: 0.03, textureSize: Vector2(150.0, 150.0));
    // moveDown = spriteSheet.createAnimation(row: 1, stepTime: 0.03);
    // moveLeft = spriteSheet.createAnimation(row: 2, stepTime: 0.03);
    // moveRight = spriteSheet.createAnimation(row: 3, stepTime: 0.03);
    // moveUp = spriteSheet.createAnimation(row: 4, stepTime: 0.03);
    // sprite = moveUp;
    sprite = spriteSheet.getSprite(1, 3);
    position = gameRef.size / 2;
  }

  void movePlayer(double delta) {
    // switch (direction) {
    //   case Direction.up:
    //     animation = _runUpAnimation;
    //     moveUp(delta);
    //     break;
    //   case Direction.down:
    //     animation = _runDownAnimation;
    //     moveDown(delta);
    //     break;
    //   case Direction.left:
    //     animation = _runLeftAnimation;
    //     moveLeft(delta);
    //     break;
    //   case Direction.right:
    //     animation = _runRightAnimation;
    //     moveRight(delta);
    //     break;
    //   case Direction.none:
    //     animation = _standingAnimation;
    //     break;
    // }
  }
}
