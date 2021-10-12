import 'dart:math';

import 'package:collection/collection.dart';
import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

import 'draw_user_action_divider.dart';

class BetUserAction extends StatefulWidget {
  const BetUserAction({Key? key}) : super(key: key);

  final List<int> quantityOptions = const [1, 2, 3, 4, 5, 6];
  final List<int> valueOptions = const [4, 5, 6, 7, 8, 9];

  @override
  _BetUserActionState createState() => _BetUserActionState();
}

class _BetUserActionState extends State<BetUserAction> {
  @override
  Widget build(BuildContext context) => Stack(alignment: Alignment.center, children: [
        SizedBox(
          height: 100,
          width: 100,
          child: FloatingActionButton(
            child: const Text("Raise"),
            foregroundColor: ThemeColors.green,
            backgroundColor: ThemeColors.white,
            onPressed: () {},
            elevation: 0,
          ),
        ),
        ...widget.valueOptions.mapIndexed((index, element) {
          final n = widget.quantityOptions.length;
          final step = 360 / n;
          final degrees = step * index + (step / 2);
          return _buildButton(degrees, 95, ThemeColors.primary, "$element");
        }).toList(),
        ...widget.quantityOptions.mapIndexed((index, element) {
          final n = widget.quantityOptions.length;
          final step = 360 / n;
          final degrees = step * index;
          return _buildButton(degrees, 165, ThemeColors.primary, "$element");
        }).toList(),
        CustomPaint(
          painter: DrawUserActionDivider(
            radius: 130,
            size: MediaQuery.of(context).size,
          ),
        ),
        CustomPaint(
          painter: DrawUserActionDivider(
            radius: 200,
            size: MediaQuery.of(context).size,
          ),
        ),
      ]);

  Widget _buildButton(double angle, double distance, Color color, String label) {
    final double rad = radians(angle);
    return Transform(
      transform: Matrix4.identity()
        ..translate(
          (distance) * cos(rad),
          (distance) * sin(rad),
        ),
      child: FloatingActionButton(
        child: Text(
          label,
          style: TextStyle(
            color: ThemeColors.white,
          ),
        ),
        backgroundColor: color,
        onPressed: () {},
        elevation: 0,
      ),
    );
  }
}
