import 'package:collection/collection.dart';
import 'package:dice/domain/bet_placement/bet_placement_bloc.dart';
import 'package:dice/domain/bet_placement/bet_placement_event.dart';
import 'package:dice/domain/bet_placement/bet_placement_state.dart';
import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

import 'draw_user_action_divider.dart';

class BetUserAction extends StatefulWidget {
  const BetUserAction({
    Key? key,
    required this.gameId,
    required this.numberOfDice,
    required this.highestBetQuantity,
  }) : super(key: key);

  final int gameId;
  final int numberOfDice;
  final int? highestBetQuantity;

  @override
  State<BetUserAction> createState() => _BetUserActionState();
}

class _BetUserActionState extends State<BetUserAction> {
  final bloc = BetPlacementBloc();

  @override
  void initState() {
    bloc.add(BetPlacementEvent.bettingAvailable(
      widget.gameId,
      widget.numberOfDice,
      widget.highestBetQuantity,
    ));
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BetPlacementState>(
        stream: bloc.stream,
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (data is BetPlacementPayload) {
            final selectedBetOption = data.selectedBetOption;
            final selectedValueOption = data.selectedValueOption;
            final betSelected = selectedBetOption != null && selectedValueOption != null;
            final backgroundColor = betSelected ? ThemeColors.white : ThemeColors.white50;
            final onPressed = !betSelected
                ? null
                : () {
                    bloc.add(const BetPlacementEvent.placeBet());
                  };

            return SizedBox.expand(
              child: Stack(alignment: Alignment.center, clipBehavior: Clip.none, children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: FloatingActionButton(
                    foregroundColor: ThemeColors.green,
                    backgroundColor: backgroundColor,
                    onPressed: onPressed,
                    elevation: 0,
                    child: Text(data.placeBetLabel),
                  ),
                ),
                ...data.valueOptions.mapIndexed((index, valueOption) {
                  final step = 360 / data.valueOptions.length;
                  final degrees = step * index - (step * 1.5);
                  return _buildButton(degrees, 95, valueOption == selectedValueOption, "$valueOption", () {
                    bloc.add(BetPlacementEvent.valueOptionSelected(valueOption, widget.numberOfDice));
                  });
                }).toList(),
                ...data.betOptions.mapIndexed((index, betOption) {
                  final step = 360 / data.betOptions.length;
                  final degrees = step * index - (step * 2);
                  return _buildButton(degrees, 165, betOption == selectedBetOption, "$betOption", () {
                    setState(() {
                      bloc.add(BetPlacementEvent.betOptionSelected(betOption));
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
          } else {
            return const CircularProgressIndicator();
          }
        });
  }

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
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        onPressed: onPressed,
        elevation: 0,
        child: Text(label),
      ),
    );
  }
}
