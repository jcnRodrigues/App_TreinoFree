import 'package:flutter/material.dart';

import '../data/training_data.dart';
import 'benefits_screen.dart';
import 'fundamentals_screen.dart';
import 'map_screen.dart';
import 'prescription_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Mapa'),
              Tab(text: 'Fundamentos'),
              Tab(text: 'Prescrição'),
              Tab(text: 'Benefícios'),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: Text(
                appSubtitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  MapScreen(),
                  FundamentalsScreen(),
                  PrescriptionScreen(),
                  BenefitsScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
