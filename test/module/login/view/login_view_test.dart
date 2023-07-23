import 'package:demo100/module/login/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('login view ...', (tester) async {
    // TODO: Implement test
    await tester.pumpWidget(const MaterialApp(
      home: LoginView(),
    ));

    expect(find.byKey(const ValueKey("email")), findsOneWidget);
    expect(find.byKey(const ValueKey("password")), findsOneWidget);
    expect(find.byKey(const ValueKey("login_button")), findsOneWidget);
  });
}
