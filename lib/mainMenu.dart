import 'package:flutter/material.dart';
// import 'game_screen.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => GameScreen()),
                // );
              },
              child: Text('Start Game'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 다른 메뉴 버튼 기능 (예: 설정, 기록 보기 등)
              },
              child: Text('Other Button'),
            ),
          ],
        ),
      ),
    );
  }
}