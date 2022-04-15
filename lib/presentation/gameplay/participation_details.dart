import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

class ParticipationDetails extends StatelessWidget {
  const ParticipationDetails({
    required this.name,
    required this.currentBet,
    this.size = 24,
    required this.isActive,
  });

  final String name;
  final String currentBet;
  final double size;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: size,
      color: isActive ? ThemeColors.white : ThemeColors.white50,
    );

    return Column(
      children: [
        Text(
          currentBet,
          style: textStyle,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: textStyle,
        ),
      ],
    );
  }
}
