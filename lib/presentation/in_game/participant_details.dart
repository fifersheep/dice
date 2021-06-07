import 'package:flutter/material.dart';

import 'selector.dart';

class ParticipantDetails extends StatefulWidget {
  const ParticipantDetails({required this.name, required this.isActive});

  final String name;
  final bool isActive;

  @override
  _ParticipantDetailsState createState() => _ParticipantDetailsState();
}

class _ParticipantDetailsState extends State<ParticipantDetails> {
  int? quantity = 3;
  int? value = 6;

  @override
  Widget build(BuildContext context) {
    final quantitySelector = Selector(
      value: quantity,
      status: widget.isActive ? SelectorStatus.Active : SelectorStatus.Disabled,
      options: [3, 4, 5, 6, 7],
      onChanged: (newValue) {
        setState(() {
          quantity = newValue;
        });
      },
    );

    final valueSelector = Selector(
      value: value,
      status: widget.isActive ? SelectorStatus.Active : SelectorStatus.Disabled,
      options: [1, 2, 3, 4, 5, 6],
      onChanged: (newValue) {
        setState(() {
          value = newValue;
        });
      },
    );

    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              widget.name,
              style: TextStyle(
                fontSize: 24,
                color: widget.isActive ? Theme.of(context).primaryColor : null,
              ),
            ),
          ),
          Spacer(),
          quantitySelector,
          valueSelector,
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: widget.isActive
                  ? () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("You have chosen $quantity $value's"),
                          duration: const Duration(milliseconds: 2000),
                        ),
                      );
                    }
                  : null,
              child: Text("Bet"),
            ),
          ),
        ],
      ),
    );
  }
}
