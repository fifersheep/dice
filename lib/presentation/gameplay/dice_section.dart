import 'package:flutter/widgets.dart';

class DiceSection extends StatelessWidget {
  const DiceSection({
    Key? key,
    required this.height,
    required this.dice,
  }) : super(key: key);

  final double height;
  final String dice;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        height: height,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        alignment: Alignment.center,
        child: Text(
          dice,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      );
}
