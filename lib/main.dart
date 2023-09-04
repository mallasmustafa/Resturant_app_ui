
import 'package:flutter/material.dart';
import 'package:restaurant_app/responsive/desktop_scaffold.dart';
import 'package:restaurant_app/responsive/mobile_scaffold.dart';
import 'package:restaurant_app/responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Restaurant UI',
        themeMode: ThemeMode.system,
        home: ResponsiveLayout(mobileScaffold: MobileScaffold(), desktopScaffold: DesktopScaffold()),
);
  }
}
