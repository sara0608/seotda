import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'game/gameFlame.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fitWidth
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GameFlame()),
                  );
                },
                child: Text('Game start',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  shadowColor: Colors.grey
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
