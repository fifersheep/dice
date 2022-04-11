import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

enum SelectorStatus { Active, Disabled, Error }

class Selector extends StatelessWidget {
  const Selector({
    Key? key,
    required this.value,
    required this.status,
    required this.options,
    required this.onChanged,
  }) : super(key: key);

  final SelectorStatus status;
  final int? value;
  final List<int> options;
  final void Function(int?) onChanged;

  @override
  Widget build(BuildContext context) {
    final color = _colorFor(context, status);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: DropdownButton(
        value: value,
        icon: Icon(
          Icons.arrow_drop_down_circle_outlined,
          color: color,
        ),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: color, fontSize: 18),
        underline: Container(
          height: 2,
          color: color,
        ),
        onChanged: status == SelectorStatus.Active ? onChanged : null,
        items: options
            .map((int value) => DropdownMenuItem(
                  value: value,
                  child: Text(value.toString()),
                ))
            .toList(),
      ),
    );
  }

  Color _colorFor(BuildContext context, SelectorStatus status) {
    switch (status) {
      case SelectorStatus.Active:
        return ThemeColors.textOnPrimary;
      case SelectorStatus.Error:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
