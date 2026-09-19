import '../models/trail.dart';

const String _imgPeaksValley = 'assets/images/IMG_7015.HEIC';
const String _avalancheLake = 'assets/images/IMG_6945.HEIC';
const String _imgMeadow = 'assets/images/IMG_7024.HEIC';
const String _imgHiddenLake = 'assets/images/Screenshot 2026-09-16 143125.jpg';
const String _icebergLake = 'assets/images/iceberg.jpg';

/// A representative (not exhaustive) set of well-known Glacier National Park
/// trails. Distances are approximate and rounded for a general-audience app.
const List<Trail> trails = [
  Trail(
    name: 'Highline Trail',
    approxDistance: 'About 11-12 miles round trip (Logan Pass to The Loop)',
    difficulty: TrailDifficulty.moderate,
    summary:
        'A famous ledge trail along the Garden Wall with sweeping valley '
        'views and a good chance of spotting mountain goats.',
    details:
        'The Highline Trail begins at Logan Pass and traces a narrow shelf '
        'along the Garden Wall high above the Going-to-the-Sun Road. Much of '
        'the route is relatively gentle, though the exposed opening stretch '
        '(with an optional handrail bolted into the rock) and the steep spur '
        'up to the Grinnell Glacier Overlook make parts of it feel more '
        'demanding. Hikers are often rewarded with wildflower meadows, '
        'long sightlines down into the valley, and frequent mountain goat '
        'and bighorn sheep sightings.',
    imageAsset: _imgPeaksValley,
  ),
  Trail(
    name: 'Grinnell Glacier Trail',
    approxDistance: 'Roughly 10-11 miles round trip',
    difficulty: TrailDifficulty.strenuous,
    summary:
        'Climbs through wildflower meadows and past waterfalls to an '
        'overlook above Upper Grinnell Lake and the Grinnell Glacier.',
    details:
        'Starting near Many Glacier, this trail gains steady elevation as it '
        'skirts several turquoise lakes before switchbacking up to a '
        'viewpoint overlooking Upper Grinnell Lake and what remains of the '
        'Grinnell Glacier. Like most of the park\'s glaciers, Grinnell has '
        'retreated substantially over the past century, and the hike is '
        'often cited as a vivid, accessible way to see that change firsthand.',
    imageAsset: _imgMeadow,
  ),
  Trail(
    name: 'Hidden Lake Overlook',
    approxDistance: 'About 2.7 miles round trip from Logan Pass',
    difficulty: TrailDifficulty.moderate,
    summary:
        'A short boardwalk-and-switchback climb to a classic view of Hidden '
        'Lake and Bearhat Mountain; popular with families.',
    details:
        'One of the most popular short hikes in the park, this trail leaves '
        'directly from the Logan Pass Visitor Center, crossing a wildflower '
        'meadow on boardwalk before climbing to an overlook above Hidden '
        'Lake. Mountain goats and bighorn sheep are frequently seen right '
        'along the trail, so hikers are asked to keep a respectful distance.',
    imageAsset: _imgHiddenLake,
  ),
  Trail(
    name: 'Avalanche Lake',
    approxDistance: 'About 5.5-6 miles round trip from Trail of the Cedars',
    difficulty: TrailDifficulty.moderate,
    summary:
        'An easy-to-moderate walk through old-growth cedar and hemlock '
        'forest to a glacially fed lake ringed by waterfalls.',
    details:
        'The route starts on the accessible Trail of the Cedars boardwalk '
        'before following Avalanche Creek gently uphill through towering, '
        'moss-draped old-growth forest. It opens onto Avalanche Lake, a '
        'basin lined with several thin waterfalls fed by snowmelt from the '
        'peaks above, making it a favorite for a moderate, scenic half-day '
        'hike.',
    imageAsset: _avalancheLake,
  ),
  Trail(
    name: 'Iceberg Lake Trail',
    approxDistance: 'Roughly 9-10 miles round trip from Many Glacier',
    difficulty: TrailDifficulty.moderate,
    summary:
        'A rolling trail through meadows and forest to a glacial lake that '
        'often holds floating ice well into summer.',
    details:
        'This Many Glacier-area trail climbs gradually through open '
        'meadows and forest with near-constant mountain views before '
        'arriving at Iceberg Lake, tucked beneath a dramatic amphitheater '
        'of cliffs. Chunks of ice calved from snowfields above can linger '
        'on the lake surface into midsummer, giving the trail its name.',
    imageAsset: _icebergLake,
  ),
  Trail(
    name: 'Sperry Chalet Trail',
    approxDistance: 'About 12-13 miles round trip from Lake McDonald',
    difficulty: TrailDifficulty.strenuous,
    summary:
        'A long, steady climb from Lake McDonald up to the historic '
        'backcountry Sperry Chalet.',
    details:
        'This is one of the park\'s longer day-hike options, gaining '
        'significant elevation as it climbs from the shores of Lake '
        'McDonald toward the historic Sperry Chalet, a backcountry lodge '
        'built in the early 1900s. The trail passes waterfalls and opens '
        'into alpine terrain near the top, and many hikers treat it as an '
        'overnight trip rather than a single long day.',
    imageAsset: _imgHiddenLake,
  ),
];
