import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/dialogue_box_generator.dart';
import 'package:test_app/l10n/app_localizations.dart';
import 'package:test_app/info_box_generator.dart';

class BurnSx extends StatelessWidget {
  BurnSx({super.key, required this.onLocaleChange});
  final void Function(Locale) onLocaleChange;
  final List<String> burnImages_ = [
    "images/graphic_images/1degree1.png",
    "images/graphic_images/1degree2.png",
    "images/graphic_images/1degree3.png",
    "images/graphic_images/2degree2.png",
    "images/graphic_images/2degree3.png",
    "images/graphic_images/2degree4.png",
    "images/graphic_images/2degree5.png",
    "images/graphic_images/3degree1.png",
    "images/graphic_images/3degree2.png",
    "images/graphic_images/3degree3.png",
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
                                localization_.burnsDef,
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
                          localization_.burnsSxHeader,
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
                        texts_: [localization_.burnsSx],
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
                                localization_.burnsWarning,
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
                                boxImages_: burnImages_,
                                boxTexts_: [
                                  localization_.burnsFirstDegree1,
                                  localization_.burnsFirstDegree2,
                                  localization_.burnsFirstDegree3,
                                  localization_.burnsSecondDegree1,
                                  localization_.burnsSecondDegree2,
                                  localization_.burnsSecondDegree3,
                                  localization_.burnsSecondDegree4,
                                  localization_.burnsThirdDegree1,
                                  localization_.burnsThirdDegree2,
                                  localization_.burnsThirdDegree3,
                                ],
                              );
                            },
                          );
                        },
                        child: Text(localization_.burnsImages),
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
