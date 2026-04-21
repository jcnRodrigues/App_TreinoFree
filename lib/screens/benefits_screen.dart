import 'package:flutter/material.dart';

import '../data/training_data.dart';

class BenefitsScreen extends StatelessWidget {
  const BenefitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  'Impacto na saúde',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Treinar vai além de estética: melhora marcadores de saúde, '
                  'funcionalidade e qualidade de vida.',
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        ...benefitRows.map(
          (row) => Card(
            child: ListTile(title: Text(row.key), subtitle: Text(row.value)),
          ),
        ),
        const SizedBox(height: 8),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Etiqueta na academia',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                ...gymEtiquette.map((rule) => Text('• $rule')),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
