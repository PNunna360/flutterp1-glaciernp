import 'package:flutter/material.dart';

/// A simple photo grid. Images that fail to decode (e.g. HEIC files on
/// platforms without HEIC support) fall back to a placeholder tile instead
/// of crashing.
class GalleryGrid extends StatelessWidget {
  final List<String> imageAssets;

  const GalleryGrid({super.key, required this.imageAssets});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: imageAssets.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
      ),
      itemBuilder: (context, index) {
        final asset = imageAssets[index];
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            asset,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                alignment: Alignment.center,
                child: Icon(
                  Icons.image_not_supported_outlined,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
