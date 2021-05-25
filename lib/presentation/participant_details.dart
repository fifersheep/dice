import 'package:flutter/material.dart';

class ParticipantDetails extends StatelessWidget {
  const ParticipantDetails({required this.name, required this.isActive});

  final String name;
  final bool isActive;

  @override
  Widget build(BuildContext context) => Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: isActive ? () {} : null,
                child: Text("Bet"),
              ),
            ),
          ],
        ),
      );
}
