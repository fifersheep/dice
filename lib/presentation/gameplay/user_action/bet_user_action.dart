import 'dart:math';

import 'package:collection/collection.dart';
import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class BetUserAction extends StatefulWidget {
  const BetUserAction({Key? key}) : super(key: key);

  final List<int> quantityOptions = const [1, 2, 3, 4, 5, 6];
  final List<int> valueOptions = const [4, 5, 6, 7, 8, 9];

  @override
  _BetUserActionState createState() => _BetUserActionState();
}

class _BetUserActionState extends State<BetUserAction> {
  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: FloatingActionButton(
              child: const Text("Raise"),
              backgroundColor: ThemeColors.white,
              onPressed: () {},
              elevation: 0,
            ),
          ),
          ...widget.quantityOptions.mapIndexed((index, element) {
            final n = widget.quantityOptions.length;
            final step = 360 / n;
            final degrees = step * index;
            return _buildButton(degrees, 100, ThemeColors.white, "$element");
          }).toList(),
          ...widget.valueOptions.mapIndexed((index, element) {
            final n = widget.quantityOptions.length;
            final step = 360 / n;
            final degrees = step * index + (step / 2);
            return _buildButton(degrees, 170, ThemeColors.white, "$element");
          }).toList(),
        ],
      );

  Widget _buildButton(double angle, double distance, Color color, String label) {
    final double rad = radians(angle);
    return Transform(
      transform: Matrix4.identity()
        ..translate(
          (distance) * cos(rad),
          (distance) * sin(rad),
        ),
      child: FloatingActionButton(
        child: Text(label),
        backgroundColor: color,
        onPressed: () {},
        elevation: 0,
      ),
    );
  }
}
