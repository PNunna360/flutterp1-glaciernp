// Basic smoke test for the Glacier National Park app shell.

import 'package:flutter_test/flutter_test.dart';

import 'package:flutterp1/main.dart';

void main() {
  testWidgets('App launches showing the Overview page and bottom nav', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Overview (Summary) page is shown first.
    expect(find.text('Glacier National Park'), findsWidgets);
    expect(find.text('Did You Know?'), findsOneWidget);

    // Bottom navigation links to the other sections.
    expect(find.text('Trails'), findsWidgets);
    expect(find.text('Viewpoints'), findsWidgets);
    expect(find.text('Wildlife & Nature'), findsWidgets);
    expect(find.text('Plan Your Visit'), findsWidgets);

    // Navigating to Trails shows trail cards.
    await tester.tap(find.text('Trails').last);
    await tester.pumpAndSettle();
    expect(find.text('Highline Trail'), findsOneWidget);
  });
}
