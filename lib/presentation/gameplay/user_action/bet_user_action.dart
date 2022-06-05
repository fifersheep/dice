import 'package:collection/collection.dart';
import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

import 'draw_user_action_divider.dart';

class BetUserAction extends StatefulWidget {
  const BetUserAction({
    Key? key,
    required this.betOptions,
  }) : super(key: key);

  final List<int> valueOptions = const [1, 2, 3, 4, 5, 6];
  final List<int> betOptions;

  @override
  _BetUserActionState createState() => _BetUserActionState();
}

class _BetUserActionState extends State<BetUserAction> {
  int? selectedValueOption = null;
  int? selectedBetOption = null;

  @override
  Widget build(BuildContext context) => SizedBox.expand(
        child: Stack(alignment: Alignment.center, clipBehavior: Clip.none, children: [
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
          ...widget.valueOptions.mapIndexed((index, valueOption) {
            final step = 360 / widget.valueOptions.length;
            final degrees = step * index - (step * 1.5);
            return _buildButton(degrees, 95, valueOption == selectedValueOption, "$valueOption", () {
              setState(() {
                selectedValueOption = valueOption;
              });
            });
          }).toList(),
          ...widget.betOptions.mapIndexed((index, betOption) {
            final step = 360 / widget.betOptions.length;
            final degrees = step * index - (step * 2);
            return _buildButton(degrees, 165, betOption == selectedBetOption, "$betOption", () {
              setState(() {
                selectedBetOption = betOption;
              });
            });
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
        ]),
      );

  Widget _buildButton(double angle, double distance, bool isSelected, String label, void Function() onPressed) {
    final double rad = radians(angle);
    final foregroundColor = isSelected ? ThemeColors.green : ThemeColors.white;
    final backgroundColor = isSelected ? ThemeColors.white : ThemeColors.green;
    return Transform.translate(
      offset: Offset.fromDirection(
        rad,
        distance,
      ),
      child: FloatingActionButton(
        child: Text(label),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        onPressed: onPressed,
        elevation: 0,
      ),
    );
  }
}
