import '../models/viewpoint.dart';

const String _imgPeaksValley = 'assets/images/IMG_7093.jpg';
const String _imgMeadow = 'assets/images/IMG_7024.HEIC';
const String _imgHiddenLake = 'assets/images/Screenshot 2026-09-16 143125.jpg';

/// A representative (not exhaustive) set of well-known Glacier National
/// Park viewpoints and scenic stops.
const List<Viewpoint> viewpoints = [
  Viewpoint(
    name: 'Logan Pass',
    area: 'Along Going-to-the-Sun Road, on the Continental Divide',
    summary:
        'The highest point reachable by car on Going-to-the-Sun Road, '
        'ringed by alpine peaks and meadows.',
    details:
        'Logan Pass sits on the Continental Divide and marks the highest '
        'point along Going-to-the-Sun Road accessible by vehicle. The '
        'visitor center here is the trailhead for several popular hikes, '
        'and the surrounding meadows and slopes are known for mountain '
        'goat and bighorn sheep sightings. Parking fills up quickly on '
        'summer days, so an early start or a shuttle is generally a good '
        'idea.',
    imageAsset: _imgHiddenLake,
  ),
  Viewpoint(
    name: 'Wild Goose Island Overlook',
    area: 'St. Mary Lake, east side of the park',
    summary:
        'A roadside pull-off with a postcard view of a tiny wooded island '
        'in the middle of St. Mary Lake.',
    details:
        'This small overlook along St. Mary Lake frames Wild Goose Island, '
        'a tiny tree-covered island that has become one of the most '
        'photographed spots in the park, especially in early morning light '
        'with the peaks of the Continental Divide behind it.',
    imageAsset: _imgPeaksValley,
  ),
  Viewpoint(
    name: 'Many Glacier Valley',
    area: 'Northeast side of the park',
    summary:
        'A glacially carved valley ringed by dramatic peaks, often called '
        'the "heart" of the park for its scenery and wildlife.',
    details:
        'Many Glacier is a valley of jagged peaks, hanging glaciers, and '
        'a string of alpine lakes, anchored by the historic Many Glacier '
        'Hotel. It is a popular base for hikes like Grinnell Glacier and '
        'Iceberg Lake, and is frequently mentioned as one of the most '
        'scenic and wildlife-rich corners of the park.',
    imageAsset: _imgMeadow,
  ),
  Viewpoint(
    name: 'Two Medicine Lake',
    area: 'Southeast side of the park',
    summary:
        'A quieter valley with a scenic lake, boat tours, and views of '
        'peaks like Sinopah Mountain.',
    details:
        'Two Medicine is generally less crowded than Many Glacier or the '
        'Going-to-the-Sun Road corridor, while offering similarly dramatic '
        'scenery around its namesake lake. It has strong ties to Blackfeet '
        'history and culture and offers boat tours, several trailheads, and '
        'classic views of Sinopah Mountain reflected in the water on calm '
        'mornings.',
    imageAsset: _imgPeaksValley,
  ),
  Viewpoint(
    name: 'Jackson Glacier Overlook',
    area: 'Along Going-to-the-Sun Road, east of Logan Pass',
    summary:
        'A roadside overlook offering one of the most accessible views of '
        'an actual glacier from a car.',
    details:
        'This pull-off along Going-to-the-Sun Road offers a distant but '
        'clear view of Jackson Glacier without any hiking required, making '
        'it a popular stop for visitors who want to see a glacier directly '
        'from the road. Interpretive signage explains how the glacier has '
        'changed over time.',
    imageAsset: _imgMeadow,
  ),
  Viewpoint(
    name: 'Sun Point',
    area: 'St. Mary Lake, along Going-to-the-Sun Road',
    summary:
        'A short walk from the road to sweeping views across St. Mary Lake '
        'and the surrounding peaks.',
    details:
        'Sun Point is reached via a short, mostly flat walk from a parking '
        'area along Going-to-the-Sun Road, opening onto wide views across '
        'St. Mary Lake toward the mountains that ring it. It is a good '
        'option for visitors who want a big payoff view without a long '
        'hike.',
    imageAsset: _imgHiddenLake,
  ),
];
