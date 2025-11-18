import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/dialogue_box_generator.dart';
import 'package:test_app/l10n/app_localizations.dart';
import 'package:test_app/info_box_generator.dart';

class FrostbiteSx extends StatelessWidget {
  FrostbiteSx({super.key, required this.onLocaleChange});
  final void Function(Locale) onLocaleChange;
  final List<String> frostbiteImages_ = [
    "images/graphic_images/degree1frost1.png",
    "images/graphic_images/degree1frost2.png",
    "images/graphic_images/degree1frost3.png",
    "images/graphic_images/degree2frost1.png",
    "images/graphic_images/degree2frost2.png",
    "images/graphic_images/degree2frost3.png",
    "images/graphic_images/degree3frost1.png",
    "images/graphic_images/degree3frost2.png",
    "images/graphic_images/degree4frost1.png",
    "images/graphic_images/degree4frost2.png",
    "images/graphic_images/thaw.png",
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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/question.png',
                              width: 65,
                              height: 65,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(width: 20),
                            Flexible(
                              flex: 2,
                              child: Text(
                                localization_.frostbiteDef,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Text(
                          localization_.frostbiteSxHeader,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      ),
                      InfoBoxGenerator(
                        borderColor_: Colors.red,
                        imagePaths_: ["images/symptoms.png"],
                        texts_: [localization_.frostbiteSx],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 20),
                            Image.asset(
                              'images/warning.png',
                              width: 75,
                              height: 75,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(width: 20),
                            Flexible(
                              flex: 2,
                              child: Text(
                                localization_.frostbiteSevereSx,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DialogueBoxGenerator(
                                boxImages_: frostbiteImages_,
                                boxTexts_: [
                                  localization_.frostFirstDegree1,
                                  localization_.frostFirstDegree2, 
                                  localization_.frostFirstDegree3, 
                                  localization_.frostSecondDegree1, 
                                  localization_.frostSecondDegree2, 
                                  localization_.frostSecondDegree3,
                                  localization_.frostThirdDegree1, 
                                  localization_.frostThirdDegree2,
                                  localization_.frostFourthDegree1, 
                                  localization_.frostFourthDegree2, 
                                  localization_.frostThaw,
                                ],
                              );
                            },
                          );
                        },
                        child: Text(localization_.frostbiteImages),
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
