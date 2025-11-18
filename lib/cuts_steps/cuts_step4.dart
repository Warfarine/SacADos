import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/info_box_generator.dart';
import 'package:test_app/l10n/app_localizations.dart';

class CutsStep4 extends StatelessWidget {
  const CutsStep4({super.key, required this.onLocaleChange});
  final void Function(Locale) onLocaleChange;

  @override
  Widget build(BuildContext context) {
    final localization_ = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: MyAppBar(onLocaleChange: onLocaleChange),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Center(
                      child: 
                        InfoBoxGenerator(
                          borderColor_: Colors.blueAccent,
                          texts_: [localization_.cutsStep6],
                        ),
                    ),
                    Image.asset(
                      'images/wounds_instructions/bandage.png',
                      width: 300,
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}