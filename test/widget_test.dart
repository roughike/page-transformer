import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main() {
  testWidgets('smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(new MyApp());

    await tester.fling(
        find.byType(PageView), const Offset(-401.0, 0.0), 1000.0);
    await tester.fling(
        find.byType(PageView), const Offset(-401.0, 0.0), 1000.0);

    await tester.pump();
    await tester.pump();

    expect(find.text('SPIRIT'), findsOneWidget);
  });
}
