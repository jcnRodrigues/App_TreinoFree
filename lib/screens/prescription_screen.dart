import 'package:flutter/material.dart';

import '../data/training_data.dart';

class PrescriptionScreen extends StatelessWidget {
  const PrescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Text(
              'Séries, repetições e descanso por nível',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        const SizedBox(height: 8),
        ...guidelines.map(
          (item) => Card(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.level,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text('Séries: ${item.sets}'),
                  Text('Repetições: ${item.reps}'),
                  Text('Intervalo: ${item.rest}'),
                  const SizedBox(height: 6),
                  Text('Foco: ${item.focus}'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
