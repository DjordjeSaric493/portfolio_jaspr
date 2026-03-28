import 'dart:async';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

@client
class PongInfo extends StatefulComponent {
  const PongInfo({super.key});

  @override
  State<PongInfo> createState() => _PongGameState();
}

class _PongGameState extends State<PongInfo> {
  double ballX = 0;
  double ballY = -0.9;
  double ballXDirection = 0.02;
  double ballYDirection = 0.02;
  double playerX = 0;
  double playerWidth = 0.3;

  int hitCount = 0;
  bool isGameOver = false;

  Timer? gameLoop;

  void startGame() {
    gameLoop?.cancel();
    gameLoop = Timer.periodic(const Duration(milliseconds: 16), (timer) {
      setState(() {
        ballX += ballXDirection;
        ballY += ballYDirection;

        // Bounce from side walls
        if (ballX >= 1 - 0.05) {
          ballX = 1 - 0.05;
          ballXDirection = -ballXDirection;
        }
        if (ballX <= -1 + 0.05) {
          ballX = -1 + 0.05;
          ballXDirection = -ballXDirection;
        }

        // Bounce from top wall
        if (ballY <= -1 + 0.05) {
          ballY = -1 + 0.05;
          ballYDirection = -ballYDirection;
        }

        // Bounce from player (bottom)
        if (ballY >= 0.85 && ballX >= playerX - playerWidth / 2 && ballX <= playerX + playerWidth / 2) {
          ballY = 0.85;
          ballYDirection = -ballYDirection;
          hitCount++;
          // Increase speed slightly
          ballXDirection *= 1.05;
          ballYDirection *= 1.05;
        }

        // Game over check
        if (ballY > 1.1) {
          isGameOver = true;
          gameLoop?.cancel();
        }
      });
    });
  }

  void moveLeft() {
    setState(() {
      playerX -= 0.1;
      if (playerX < -1 + playerWidth / 2) playerX = -1 + playerWidth / 2;
    });
  }

  void moveRight() {
    setState(() {
      playerX += 0.1;
      if (playerX > 1 - playerWidth / 2) playerX = 1 - playerWidth / 2;
    });
  }

  void restartGame() {
    setState(() {
      ballX = 0;
      ballY = -0.9;
      ballXDirection = 0.02;
      ballYDirection = 0.02;
      hitCount = 0;
      isGameOver = false;
    });
    startGame();
  }

  @override
  void initState() {
    super.initState();
    startGame();
  }

  @override
  void dispose() {
    gameLoop?.cancel();
    super.dispose();
  }

  @override
  Component build(BuildContext context) {
    return div([
      div([
        // Score
        div([text('Score: $hitCount')], classes: 'pong-score'),

        // Game Area
        div([
          if (!isGameOver)
            div([],
                classes: 'pong-ball',
                attributes: {
                  'style': 'left: ${(ballX + 1) * 50}%; top: ${(ballY + 1) * 50}%;',
                }),
          div([],
              classes: 'pong-player',
              attributes: {
                'style': 'left: ${(playerX + 1) * 50}%; transform: translateX(-50%); width: ${playerWidth * 50}%;',
              }),
        ], classes: 'pong-area'),

        // Controls
        div([
          button([i([], classes: 'fa-solid fa-arrow-left')], classes: 'pong-btn', events: {'click': (e) => moveLeft()}),
          button([i([], classes: 'fa-solid fa-arrow-right')],
              classes: 'pong-btn', events: {'click': (e) => moveRight()}),
        ], classes: 'pong-controls'),

        // Game Over Overlay
        if (isGameOver)
          div([
            h2([text('GAME OVER')], attributes: {'style': 'color: #ff4444;'}),
            p([text('Score: $hitCount')], attributes: {'style': 'font-size: 1.5rem; margin: 10px 0;'}),
            button([text('Restart')], classes: 'pong-restart-btn', events: {'click': (e) => restartGame()}),
          ], classes: 'pong-overlay'),
      ], classes: 'pong-game-container')
    ], classes: 'page-container');
  }
}
