import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/plan_visit_page.dart';
import 'pages/trails_page.dart';
import 'pages/viewpoints_page.dart';
import 'pages/wildlife_page.dart';
import 'theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glacier National Park',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.forestGreen,
          secondary: AppColors.glacierBlue,
        ),
        appBarTheme: const AppBarTheme(centerTitle: true),
      ),
      home: const _AppShell(),
    );
  }
}

class _NavDestination {
  final String title;
  final Widget page;
  final IconData icon;
  final IconData selectedIcon;

  const _NavDestination({
    required this.title,
    required this.page,
    required this.icon,
    required this.selectedIcon,
  });
}

class _AppShell extends StatefulWidget {
  const _AppShell();

  @override
  State<_AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<_AppShell> {
  int _selectedIndex = 0;

  static const _destinations = [
    _NavDestination(
      title: 'Glacier National Park',
      page: HomePage(),
      icon: Icons.landscape_outlined,
      selectedIcon: Icons.landscape,
    ),
    _NavDestination(
      title: 'Trails',
      page: TrailsPage(),
      icon: Icons.hiking_outlined,
      selectedIcon: Icons.hiking,
    ),
    _NavDestination(
      title: 'Viewpoints',
      page: ViewpointsPage(),
      icon: Icons.photo_camera_outlined,
      selectedIcon: Icons.photo_camera,
    ),
    _NavDestination(
      title: 'Wildlife & Nature',
      page: WildlifePage(),
      icon: Icons.pets_outlined,
      selectedIcon: Icons.pets,
    ),
    _NavDestination(
      title: 'Plan Your Visit',
      page: PlanVisitPage(),
      icon: Icons.map_outlined,
      selectedIcon: Icons.map,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_destinations[_selectedIndex].title)),
      body: IndexedStack(
        index: _selectedIndex,
        children: [for (final d in _destinations) d.page],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) =>
            setState(() => _selectedIndex = index),
        destinations: [
          for (final d in _destinations)
            NavigationDestination(
              icon: Icon(d.icon),
              selectedIcon: Icon(d.selectedIcon),
              label: d.title == 'Glacier National Park' ? 'Overview' : d.title,
            ),
        ],
      ),
    );
  }
}
