enum Level { iniciante, intermediario, avancado }

class Exercise {
  const Exercise({
    required this.name,
    required this.group,
    required this.description,
    required this.steps,
    required this.muscles,
    required this.level,
  });

  final String name;
  final String group;
  final String description;
  final List<String> steps;
  final List<String> muscles;
  final Level level;
}

class GroupBlock {
  const GroupBlock({
    required this.name,
    required this.focus,
    required this.exercises,
  });

  final String name;
  final String focus;
  final List<Exercise> exercises;
}

class TrainingGuideline {
  const TrainingGuideline({
    required this.level,
    required this.sets,
    required this.reps,
    required this.rest,
    required this.focus,
  });

  final String level;
  final String sets;
  final String reps;
  final String rest;
  final String focus;
}
