import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class GameFlame extends StatefulWidget {
  const GameFlame({super.key});
  @override
  State<GameFlame> createState() => _GameFlame();
}

class _GameFlame extends State<GameFlame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(
        game: seotda(),
        overlayBuilderMap: {
          'back_button' : (BuildContext context, seotda game){
              return Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_left_sharp, size: 60, color: Colors.black,),
                  onPressed: ()=>{
                    Navigator.pop(context)
                  },
                ),
              );
          }
        },
      ),
    );
  }
}

class seotda extends FlameGame with HasGameRef {
  late SpriteComponent backButton, background;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    background = SpriteComponent()
      ..sprite = await gameRef.loadSprite('step1/background.png')
      ..size = size; // 전체 화면 크기에 맞게 설정

    add(background);
    overlays.add("back_button");

  }

}