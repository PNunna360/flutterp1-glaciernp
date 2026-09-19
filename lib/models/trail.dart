import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

enum TrailDifficulty { easy, moderate, strenuous }

extension TrailDifficultyLabel on TrailDifficulty {
  String get label {
    switch (this) {
      case TrailDifficulty.easy:
        return 'Easy';
      case TrailDifficulty.moderate:
        return 'Moderate';
      case TrailDifficulty.strenuous:
        return 'Strenuous';
    }
  }

  Color get color {
    switch (this) {
      case TrailDifficulty.easy:
        return AppColors.difficultyEasy;
      case TrailDifficulty.moderate:
        return AppColors.difficultyModerate;
      case TrailDifficulty.strenuous:
        return AppColors.difficultyStrenuous;
    }
  }
}

class Trail {
  final String name;
  final String approxDistance;
  final TrailDifficulty difficulty;
  final String summary;
  final String details;
  final String imageAsset;

  const Trail({
    required this.name,
    required this.approxDistance,
    required this.difficulty,
    required this.summary,
    required this.details,
    required this.imageAsset,
  });
}
