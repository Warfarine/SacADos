import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/info_box_generator.dart';
import 'package:test_app/l10n/app_localizations.dart';

class CutsStep2 extends StatelessWidget {
  CutsStep2({super.key, required this.onLocaleChange});

  final void Function(Locale) onLocaleChange;
  final List<String> iconImages_ = [
    "images/wounds_instructions/hand-washing.png",
    "images/wounds_instructions/drying-hands.png",
    "images/wounds_instructions/toomuchbleeding.png",
  ];

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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Text(
                            localization_.cutsStep1ok,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    InfoBoxGenerator(
                      borderColor_: Colors.blueAccent,
                      imagePaths_: iconImages_,
                      texts_: [
                        localization_.cutsStep2,
                        localization_.cutsStep3,
                        localization_.cutsStep4,
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      localization_.cutsStep4a,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                      softWrap: true,
                    ),
                    const SizedBox(height: 20),
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