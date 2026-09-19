import 'package:flutter/material.dart';

import '../data/viewpoints_data.dart';
import '../models/viewpoint.dart';
import '../widgets/detail_page.dart';
import '../widgets/header_banner.dart';
import '../widgets/info_card.dart';

class ViewpointsPage extends StatelessWidget {
  const ViewpointsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 16),
      children: [
        const HeaderBanner(
          imageAsset: 'assets/images/Screenshot 2026-09-16 143125.jpg',
          title: 'Famous Viewpoints',
          subtitle: 'Scenic overlooks and stops worth the visit',
          height: 160,
        ),
        const SizedBox(height: 8),
        ...viewpoints.map(
          (viewpoint) => ParkInfoCard(
            title: viewpoint.name,
            subtitle: viewpoint.area,
            description: viewpoint.summary,
            imageAsset: viewpoint.imageAsset,
            onTap: () => _openDetail(context, viewpoint),
          ),
        ),
      ],
    );
  }

  void _openDetail(BuildContext context, Viewpoint viewpoint) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ParkDetailPage(
          title: viewpoint.name,
          imageAsset: viewpoint.imageAsset,
          infoLine: viewpoint.area,
          body: viewpoint.details,
        ),
      ),
    );
  }
}
