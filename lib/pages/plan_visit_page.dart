import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class PlanVisitPage extends StatelessWidget {
  const PlanVisitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text(
          'Plan Your Visit',
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        const _PlanSection(
          icon: Icons.calendar_month_outlined,
          title: 'Best Time to Visit',
          body:
              'Glacier is a highly seasonal park. Going-to-the-Sun Road '
              'typically opens in full (weather permitting) sometime in '
              'mid-to-late June and can start closing sections again by '
              'mid-October, depending on snowfall. Many high-country trails '
              'and facilities are only accessible in summer, so early '
              'summer through early fall is generally the most reliable '
              'window - check current conditions before you go, since dates '
              'vary from year to year.',
        ),
        const _PlanSection(
          icon: Icons.confirmation_number_outlined,
          title: 'Entrance & Timed Entry',
          body:
              'The park charges a standard entrance fee, and during the '
              'busiest summer months it has at times used a timed-entry '
              'reservation system for popular corridors like Going-to-the-Sun '
              'Road. Fees, reservation requirements, and rules change from '
              'year to year, so check nps.gov for current fees and entry '
              'requirements before your trip.',
        ),
        const _PlanSection(
          icon: Icons.backpack_outlined,
          title: 'What to Bring',
          body:
              'Weather in the high country can change quickly, so pack '
              'layers, a rain shell, and sturdy footwear even in summer. '
              'Bring plenty of water, sun protection, and snacks for any '
              'hike. Bear spray is strongly recommended for trail use, and '
              'it\'s worth knowing how to use it before you set out.',
        ),
        const _PlanSection(
          icon: Icons.eco_outlined,
          title: 'Leave No Trace',
          body:
              'Stay on marked trails, pack out all trash, store food '
              'securely, and give wildlife plenty of space. Small choices '
              'like these help keep the park\'s trails, meadows, and '
              'animals healthy for future visitors.',
        ),
        const SizedBox(height: 8),
        Card(
          color: AppColors.glacierBlueLight.withValues(alpha: 0.25),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.info_outline, color: AppColors.stoneGray),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Details like fees, reservations, road openings, and '
                    'closures change year to year - always confirm current '
                    'information at nps.gov before you travel.',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _PlanSection extends StatelessWidget {
  final IconData icon;
  final String title;
  final String body;

  const _PlanSection({
    required this.icon,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: AppColors.forestGreen),
              const SizedBox(width: 10),
              Text(
                title,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(body, style: theme.textTheme.bodyMedium?.copyWith(height: 1.4)),
        ],
      ),
    );
  }
}
