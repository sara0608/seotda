import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class GameFlame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Screen'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // 게임 도중에 메인 메뉴로 돌아가려면 뒤로가기 버튼을 눌렀을 때 pop
            Navigator.pop(context);
          },
        ),
      ),
      body: GameWidget(
        game: _GameFlame(
          // onGameOver: () {
          //   // 게임이 끝나면 메인 메뉴로 돌아가기
          //   Navigator.pop(context);
          // },
        ),
      ),
    );
  }
}

class _GameFlame extends FlameGame {

  @override
  Future<void> onLoad() async {

  }
}