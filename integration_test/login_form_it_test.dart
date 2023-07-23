import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:demo100/login_form.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Integration Test Form Login with HTTP Request',
      (WidgetTester tester) async {
    // Build the widget tree.
    await tester.pumpWidget(MaterialApp(home: LoginForm()));

    // Simulasikan input username dan password.
    final usernameField = find.byKey(const Key('username_field'));
    final passwordField = find.byKey(const Key('password_field'));
    await tester.enterText(usernameField, 'your_username');
    await tester.enterText(passwordField, 'your_password');

    // Tap tombol login.
    final loginButton = find.byType(ElevatedButton);
    await tester.tap(loginButton);

    // Tunggu respon HTTP dari server simulasi.
    await tester.pumpAndSettle();

    // Verifikasi apakah login berhasil atau gagal.
    // Contoh: Cek apakah widget setelah login berhasil tampil atau tidak.
    final loggedInWidget = find.text('Welcome, your_username');
    expect(loggedInWidget, findsOneWidget);

    // Contoh: Cek apakah pesan kesalahan tampil saat login gagal.
    final errorWidget =
        find.text('Failed to login. Invalid username or password.');
    expect(errorWidget, findsNothing);
  });
}
