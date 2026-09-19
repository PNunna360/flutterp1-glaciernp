import 'package:flutter/material.dart';

import '../models/wildlife_animal.dart';

const List<WildlifeAnimal> wildlifeList = [
  WildlifeAnimal(
    name: 'Grizzly Bear',
    description:
        'Glacier is one of the few places in the lower 48 states with a '
        'healthy population of grizzly bears, often seen foraging on open '
        'slopes and avalanche chutes, especially in early morning or '
        'evening.',
    safetyNote:
        'Carry bear spray and know how to use it, make noise on the trail, '
        'hike in groups where possible, and keep a large, respectful '
        'distance if you spot one. Check current park guidance for exact '
        'recommended distances.',
    icon: Icons.pets,
  ),
  WildlifeAnimal(
    name: 'Mountain Goat',
    description:
        'The park\'s unofficial mascot, mountain goats are commonly seen on '
        'steep, rocky slopes near Logan Pass and Hidden Lake, remarkably '
        'sure-footed on terrain that looks nearly vertical.',
    safetyNote:
        'Goats may approach trails seeking salt from sweat or urine on '
        'rocks - never let them get close, and never feed or approach '
        'wildlife for a photo.',
    icon: Icons.terrain,
  ),
  WildlifeAnimal(
    name: 'Bighorn Sheep',
    description:
        'Often spotted grazing in alpine meadows or resting on rocky '
        'outcrops, bighorn sheep are recognizable by their heavy, curled '
        'horns, especially on the rams.',
    safetyNote:
        'Give them plenty of space and stay on marked trails so grazing '
        'areas and lambing sites aren\'t disturbed.',
    icon: Icons.landscape,
  ),
  WildlifeAnimal(
    name: 'Moose',
    description:
        'Moose favor wetter, low-lying habitat such as marshes and lake '
        'edges, and are most often seen around dawn or dusk in areas like '
        'Fishercap Lake near Many Glacier.',
    safetyNote:
        'Moose can be surprisingly aggressive if they feel threatened, '
        'particularly cows with calves - keep well back and never position '
        'yourself between a moose and water or a calf.',
    icon: Icons.forest,
  ),
];
