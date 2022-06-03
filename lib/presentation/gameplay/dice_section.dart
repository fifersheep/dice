import 'package:flutter/widgets.dart';

class DiceSection extends StatelessWidget {
  const DiceSection({
    Key? key,
    required this.dice,
  }) : super(key: key);

  final String dice;

  @override
  Widget build(BuildContext context) => Container(
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
