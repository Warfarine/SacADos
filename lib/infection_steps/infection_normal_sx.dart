import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/dialogue_box_generator.dart';
import 'package:test_app/info_box_generator.dart';
import 'package:test_app/l10n/app_localizations.dart';

class InfectionNormalSx extends StatelessWidget {
  InfectionNormalSx({super.key, required this.onLocaleChange});
  final void Function(Locale) onLocaleChange;
  final List<String> dischargeImages = [
    "images/graphic_images/dischargeClear.png",
    "images/graphic_images/dischargePink.png",
    "images/graphic_images/dischargeRed.png",
    "images/graphic_images/dischargePus.png",
  ];

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: MyAppBar(onLocaleChange: onLocaleChange),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: InfoBoxGenerator(
                            borderColor_: Colors.blueAccent,
                            imagePaths_: ['images/wounds_instructions/discharge.png'],
                            texts_: [localization.normalWound],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DialogueBoxGenerator(
                                boxImages_: dischargeImages,
                                boxTexts_: [
                                  localization.dischargeClear,
                                  localization.dischargePink,
                                  localization.dischargeRed,
                                  localization.dischargePus,
                                ],
                              );
                            },
                          );
                        },
                        child: Text(localization.normalDischarge),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}