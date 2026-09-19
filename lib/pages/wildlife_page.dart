import 'package:flutter/material.dart';

import '../data/wildlife_data.dart';
import '../theme/app_colors.dart';

class WildlifePage extends StatelessWidget {
  const WildlifePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text(
          'Wildlife & Nature',
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Glacier is home to a wide range of animals adapted to its alpine '
          'and forested terrain. A few of the most commonly seen (or hoped '
          'for) are below, along with general safety notes - always check '
          'current park guidance for up-to-date advice.',
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: 20),
        ...wildlifeList.map(
          (animal) => Card(
            margin: const EdgeInsets.only(bottom: 14),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: AppColors.earthBrown.withValues(
                          alpha: 0.15,
                        ),
                        foregroundColor: AppColors.earthBrown,
                        child: Icon(animal.icon),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          animal.name,
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(animal.description, style: theme.textTheme.bodyMedium),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerLow,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: theme.colorScheme.outlineVariant,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.shield_outlined,
                          size: 18,
                          color: AppColors.forestGreen,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            animal.safetyNote,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
