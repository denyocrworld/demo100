import 'package:demo100/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('product list view ...', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ProductListView(),
    ));
    await tester.pumpAndSettle();

    var i = 3;
    final widgetToScrollTo = find.byKey(ValueKey("item_$i"));
    expect(tester.ensureVisible(widgetToScrollTo), completes);
    await tester.ensureVisible(widgetToScrollTo);
    expect(tester.ensureVisible(widgetToScrollTo), completes);
    expect(find.byKey(ValueKey("item_$i")), findsOneWidget);
  });
}
/*
Unit Test
  v http request
Widget Test
  x http request
Integration
  v http request

Login
  email
  password
  klik login button

Dashboard
  expect(ada profile card)
*/