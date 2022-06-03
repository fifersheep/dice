import 'package:dice/presentation/constants/colors.dart';
import 'package:dice/presentation/gameplay/dice_section.dart';
import 'package:flutter/material.dart';

class ParticipationDetails extends StatelessWidget {
  const ParticipationDetails({
    required this.name,
    required this.currentBet,
    required this.diceQuantity,
    required this.isActive,
    this.diceValues,
  });

  final String name;
  final String currentBet;
  final int diceQuantity;
  final bool isActive;
  final String? diceValues;

  @override
  Widget build(BuildContext context) {
    final color = isActive ? ThemeColors.white : ThemeColors.white50;
    final textStyle = TextStyle(
      fontSize: diceValues == null ? 24 : 42,
      color: color,
    );

    return Column(
      children: [
        Text(
          currentBet,
          style: textStyle,
        ),
        diceValues != null
            ? DiceSection(
                dice: diceValues!,
              )
            : CustomPaint(
                painter: DiceQuantityPainter(diceQuantity, color),
                size: const Size(80, 20),
              ),
        Text(
          name,
          style: textStyle,
        ),
      ],
    );
  }
}

class DiceQuantityPainter extends CustomPainter {
  DiceQuantityPainter(this.diceQuantity, this.color);

  final int diceQuantity;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    const double filledCircleRadius = 3;
    final Paint paint = Paint()..color = ThemeColors.white;
    dot(double x, double y) => canvas.drawCircle(
          Offset(x, y),
          filledCircleRadius,
          paint,
        );

    final spacing = size.width / 5;
    for (var i = 0; i < diceQuantity; i++) {
      dot(spacing * i + spacing / 2 + spacing / 2 * (5 - diceQuantity), size.height / 2);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
