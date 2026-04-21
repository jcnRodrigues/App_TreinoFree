import 'package:flutter/material.dart';

import '../data/training_data.dart';
import '../models/exercise.dart';
import 'exercise_detail_screen.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  String _levelLabel(Level level) {
    switch (level) {
      case Level.iniciante:
        return 'Iniciante';
      case Level.intermediario:
        return 'Intermediário';
      case Level.avancado:
        return 'Avançado';
    }
  }

  @override
  Widget build(BuildContext context) {
    final totalExercises = groupBlocks
        .map((block) => block.exercises.length)
        .reduce((value, element) => value + element);

    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mapa de exercícios',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text('Total mapeado: $totalExercises movimentos'),
                const SizedBox(height: 6),
                Text(
                  mapObservation,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        ...groupBlocks.map(
          (block) => Card(
            child: ExpansionTile(
              title: Text(block.name),
              subtitle: Text(block.focus),
              children: block.exercises
                  .map(
                    (exercise) => ListTile(
                      title: Text(exercise.name),
                      subtitle: Text(_levelLabel(exercise.level)),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) =>
                                ExerciseDetailScreen(exercise: exercise),
                          ),
                        );
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
