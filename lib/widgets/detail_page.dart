import 'package:flutter/material.dart';

/// A generic detail page used for both trail and viewpoint detail views:
/// a header image, a title, an optional subtitle/info line, and a body of
/// descriptive text.
class ParkDetailPage extends StatelessWidget {
  final String title;
  final String? infoLine;
  final Color? infoLineColor;
  final String body;
  final String imageAsset;

  const ParkDetailPage({
    super.key,
    required this.title,
    required this.body,
    required this.imageAsset,
    this.infoLine,
    this.infoLineColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 240,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(title),
              background: Image.asset(imageAsset, fit: BoxFit.cover),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                if (infoLine != null) ...[
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 18,
                        color: infoLineColor ?? theme.colorScheme.secondary,
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          infoLine!,
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: infoLineColor ?? theme.colorScheme.secondary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
                Text(body, style: theme.textTheme.bodyLarge?.copyWith(height: 1.5)),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
