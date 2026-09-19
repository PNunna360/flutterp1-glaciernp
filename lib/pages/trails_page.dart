import 'package:flutter/material.dart';

import '../data/trails_data.dart';
import '../models/trail.dart';
import '../widgets/detail_page.dart';
import '../widgets/header_banner.dart';
import '../widgets/info_card.dart';

class TrailsPage extends StatelessWidget {
  const TrailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 16),
      children: [
        const HeaderBanner(
          imageAsset: 'assets/images/image.png',
          title: 'Trails',
          subtitle: 'A sampling of the park\'s best-known hikes',
          height: 160,
        ),
        const SizedBox(height: 8),
        ...trails.map(
          (trail) => ParkInfoCard(
            title: trail.name,
            subtitle: '${trail.approxDistance} - ${trail.difficulty.label}',
            subtitleColor: trail.difficulty.color,
            description: trail.summary,
            imageAsset: trail.imageAsset,
            onTap: () => _openDetail(context, trail),
          ),
        ),
      ],
    );
  }

  void _openDetail(BuildContext context, Trail trail) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ParkDetailPage(
          title: trail.name,
          imageAsset: trail.imageAsset,
          infoLine: '${trail.approxDistance} - ${trail.difficulty.label}',
          infoLineColor: trail.difficulty.color,
          body: trail.details,
        ),
      ),
    );
  }
}
