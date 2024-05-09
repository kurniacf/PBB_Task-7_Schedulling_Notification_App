import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:schedulling_notification_app/main.dart';

void main() {
  testWidgets('Scheduling & Notification App test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MainApp());

    // Verify that the title in the top bar is correct.
    expect(find.text('Scheduling & Notification App'), findsOneWidget);

    // You can also check for the presence of specific buttons or other widgets
    expect(find.byType(ElevatedButton), findsWidgets);
    expect(find.text('Normal Notification'), findsOneWidget);
  });
}
