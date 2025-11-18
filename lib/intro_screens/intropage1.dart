import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/l10n/app_localizations.dart';
import 'package:test_app/custom_app_bar.dart';

class FirstPage extends StatelessWidget {
  final void Function(Locale) onLocaleChange;
  const FirstPage({super.key, required this.onLocaleChange});

  @override
  Widget build(BuildContext context) {
    final localization_ = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: MyAppBar(onLocaleChange: onLocaleChange),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity, 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width:
                  MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  localization_.disclaimer,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 60.0),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  localization_.hello,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20.0),
              Image.asset(
                "images/first-aid-kit.gif",
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height * 0.30,
                opacity: const AlwaysStoppedAnimation(0.9),
              ),

              const SizedBox(height: 10.0),
              Text(
                localization_.creation,
                textAlign: TextAlign.center,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
