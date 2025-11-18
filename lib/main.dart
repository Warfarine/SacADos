import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:device_preview/device_preview.dart';
import 'l10n/app_localizations.dart';
import 'carrousels/onboarding_screen.dart';

void main() {
  // Toggle DevicePreview using environment variable
  const bool enableDevicePreview = bool.fromEnvironment('ENABLE_DEVICE_PREVIEW', defaultValue: false);
  
  runApp(
    DevicePreview(
      enabled: enableDevicePreview,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Locale _locale = const Locale('fr');

  void _setLocale(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // DevicePreview
      locale: _locale,
      builder: DevicePreview.appBuilder,
      supportedLocales: const [
        Locale('en'),
        Locale('fr'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: OnboardingScreen(
        onLocaleChange: _setLocale,
      ),
    );
  }
}