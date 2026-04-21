import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:music_theory_helper/main.dart';

void main() {
  testWidgets('HomeScreen shows three navigation cards', (WidgetTester tester) async {
    await tester.pumpWidget(const MusicTheoryHelperApp());

    expect(find.text('Study'), findsOneWidget);
    expect(find.text('Quiz by Name'), findsOneWidget);
    expect(find.text('Quiz by Notes'), findsOneWidget);
  });

  testWidgets('Tapping Study navigates to StudyLandingScreen', (WidgetTester tester) async {
    await tester.pumpWidget(const MusicTheoryHelperApp());

    await tester.tap(find.text('Study'));
    await tester.pumpAndSettle();

    expect(find.text('Study – coming soon!'), findsOneWidget);
  });

  testWidgets('Tapping Quiz by Name navigates to QuizByNameLandingScreen', (WidgetTester tester) async {
    await tester.pumpWidget(const MusicTheoryHelperApp());

    await tester.tap(find.text('Quiz by Name'));
    await tester.pumpAndSettle();

    expect(find.text('Quiz by Name – coming soon!'), findsOneWidget);
  });

  testWidgets('Tapping Quiz by Notes navigates to QuizByNotesLandingScreen', (WidgetTester tester) async {
    await tester.pumpWidget(const MusicTheoryHelperApp());

    await tester.tap(find.text('Quiz by Notes'));
    await tester.pumpAndSettle();

    expect(find.text('Quiz by Notes – coming soon!'), findsOneWidget);
  });
}
