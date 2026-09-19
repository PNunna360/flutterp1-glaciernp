import 'package:flutter/material.dart';

import '../data/gallery_images.dart';
import '../theme/app_colors.dart';
import '../widgets/gallery_grid.dart';
import '../widgets/header_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const _facts = [
    _Fact(
      icon: Icons.handshake_outlined,
      title: 'An International Peace Park',
      body:
          'Glacier sits right beside Canada\'s Waterton Lakes National Park. '
          'In 1932 the two were jointly designated the Waterton-Glacier '
          'International Peace Park, and together they are also recognized '
          'as a UNESCO World Heritage Site.',
    ),
    _Fact(
      icon: Icons.route_outlined,
      title: 'Going-to-the-Sun Road',
      body:
          'This roughly 50-mile alpine road crosses the Continental Divide '
          'at Logan Pass and is considered one of the most scenic drives in '
          'North America. It is typically only fully open from around '
          'mid-to-late June through mid-October.',
    ),
    _Fact(
      icon: Icons.ac_unit,
      title: 'Vanishing Glaciers',
      body:
          'The park is named for the glaciers that carved its peaks and '
          'valleys. Their numbers have shrunk dramatically since the early '
          '1900s, and only a couple dozen or so named glaciers are thought '
          'to remain today.',
    ),
    _Fact(
      icon: Icons.hiking_outlined,
      title: 'Hundreds of Miles of Trails',
      body:
          'More than 700 miles of maintained trails wind through the '
          'park\'s forests, alpine meadows, and high mountain passes.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const HeaderBanner(
          imageAsset: 'assets/images/IMG_7024.HEIC',
          title: 'Glacier National Park',
          subtitle: 'Northwestern Montana, USA',
          height: 260,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Glacier National Park protects a rugged stretch of the '
                'Rocky Mountains in northwestern Montana, hard against the '
                'Canadian border. Carved by ice over millennia, its jagged '
                'peaks, turquoise lakes, and remaining glaciers make it one '
                'of the most dramatic landscapes in the U.S. National Park '
                'System.',
                style: theme.textTheme.bodyLarge?.copyWith(height: 1.5),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  _StatChip(
                    icon: Icons.place_outlined,
                    label: 'Northwestern Montana, on the Canadian border',
                  ),
                  _StatChip(
                    icon: Icons.event_outlined,
                    label: 'Established 1910',
                  ),
                  _StatChip(
                    icon: Icons.straighten_outlined,
                    label: 'Roughly 1 million acres (~1,600 sq mi)',
                  ),
                ],
              ),
              const SizedBox(height: 28),
              Text('Did You Know?', style: theme.textTheme.headlineSmall),
              const SizedBox(height: 12),
              ..._facts.map(
                (fact) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _FactTile(fact: fact),
                ),
              ),
              const SizedBox(height: 28),
              Text('Photo Gallery', style: theme.textTheme.headlineSmall),
              const SizedBox(height: 8),
              Text(
                'A mix of park scenery.',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 12),
              GalleryGrid(imageAssets: galleryImages),
            ],
          ),
        ),
      ],
    );
  }
}

class _Fact {
  final IconData icon;
  final String title;
  final String body;

  const _Fact({required this.icon, required this.title, required this.body});
}

class _FactTile extends StatelessWidget {
  final _Fact fact;

  const _FactTile({required this.fact});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: theme.colorScheme.surfaceContainerLow,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.forestGreen.withValues(alpha: 0.12),
              foregroundColor: AppColors.forestGreen,
              child: Icon(fact.icon),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fact.title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(fact.body, style: theme.textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _StatChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Chip(
      avatar: Icon(icon, size: 18, color: AppColors.glacierBlue),
      label: Text(label),
      backgroundColor: theme.colorScheme.surfaceContainerLow,
    );
  }
}
