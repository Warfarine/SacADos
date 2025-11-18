import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/l10n/app_localizations.dart';
import 'package:test_app/dialogue_box_generator.dart';
import 'package:test_app/info_box_generator.dart';

class CutsStep1 extends StatelessWidget {
  CutsStep1({super.key, required this.onLocaleChange});
  final void Function(Locale) onLocaleChange;
  final List<String> lacerationImages_ = [
    "images/graphic_images/laceration1.png",
    "images/graphic_images/laceration2.png",
    "images/graphic_images/laceration3.png",
  ];

  final List<String> minorWounds_ = [
    "images/graphic_images/minorcut1.png",
    "images/graphic_images/minorcut2.png",
    "images/graphic_images/minorcut3.png",
    "images/graphic_images/minorcut4.png",
    "images/graphic_images/minorcut5.png",
  ];

  final List<String> iconImages_ = [
    "images/wounds_instructions/wound_size.png",
    "images/wounds_instructions/subcutaneous.png",
    "images/wounds_instructions/dirtyhand.png",
  ];

  @override
  Widget build(BuildContext context) {
    final localization_ = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: MyAppBar(onLocaleChange: onLocaleChange),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    crossAxisAlignment:
                        CrossAxisAlignment.center, 
                    children: [
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12.0,
                        ),
                        child: Text(
                          localization_.cutsStep1a,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      InfoBoxGenerator(
                        borderColor_: Colors.red,
                        imagePaths_: iconImages_,
                        texts_: [
                          localization_.cutsStep1b,
                          localization_.cutsStep1c,
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        localization_.cutsStep1e,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return DialogueBoxGenerator(
                                boxImages_: lacerationImages_,
                                boxTexts_: [
                                  localization_.laceration1,
                                  localization_.laceration2,
                                  localization_.laceration3,
                                ],
                              );
                            },
                          );
                        },
                        child: Text(localization_.cutsImages),
                      ),

                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return DialogueBoxGenerator(
                                boxImages_: minorWounds_,
                                boxTexts_: [
                                  localization_.minorCuts1,
                                  localization_.minorCuts2,
                                  localization_.minorCuts3,
                                  localization_.minorCuts4,
                                  localization_.minorCuts5,
                                ],
                              );
                            },
                          );
                        },
                        child: Text(localization_.minorCutsImages),
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
