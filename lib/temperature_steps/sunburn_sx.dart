import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/dialogue_box_generator.dart';
import 'package:test_app/l10n/app_localizations.dart';
import 'package:test_app/info_box_generator.dart';

class SunburnSx extends StatelessWidget {
  SunburnSx({super.key, required this.onLocaleChange});
  final void Function(Locale) onLocaleChange;
  final List<String> sunburnImages_ = [
    "images/graphic_images/sunburn2.png",
    "images/graphic_images/sunburn4.png",
    "images/graphic_images/sunburn5.png",
    "images/graphic_images/sunburn3.png",
    "images/graphic_images/sunburn6.png",
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
                                localization_.sunburnDef,
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
                          localization_.sunburnSxHeader,
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
                        texts_: [localization_.sunburnSx],
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
                                localization_.severeSunburnSx,
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
                                boxImages_: sunburnImages_,
                                boxTexts_: [
                                  localization_.sunburnImage1,
                                  localization_.sunburnImage2,
                                  localization_.sunburnImage3,
                                  localization_.sunburnImage4,
                                  localization_.sunburnImage5,
                                ],
                              );
                            },
                          );
                        },
                        child: Text(localization_.sunburnImages),
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
