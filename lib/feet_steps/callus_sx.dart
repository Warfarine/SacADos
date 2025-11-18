import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/dialogue_box_generator.dart';
import 'package:test_app/l10n/app_localizations.dart';
import 'package:test_app/info_box_generator.dart';

class CallusSx extends StatelessWidget {
  CallusSx({super.key, required this.onLocaleChange});
  final void Function(Locale) onLocaleChange;
  final List<String> callusImages_ = [
    "images/graphic_images/cc1.png",
    "images/graphic_images/cc2.png",
    "images/graphic_images/cc3.png",
    "images/graphic_images/cc4.png",
    "images/graphic_images/cc5.png",
    "images/graphic_images/cc6.png",
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
                                localization_.callusDef,
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
                      const SizedBox(height: 20),
                      Flexible(
                        flex: 2,
                        child: Text(
                          localization_.callusSxHeader,
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
                        texts_: [localization_.callusSx],
                      ),

                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DialogueBoxGenerator(
                                boxImages_: callusImages_,
                                boxTexts_: [
                                  localization_.callusImage1,
                                  localization_.callusImage2,
                                  localization_.callusImage3,
                                  localization_.callusImage4,
                                  localization_.callusImage5,
                                  localization_.callusImage6,
                                ],
                              );
                            },
                          );
                        },
                        child: Text(localization_.callusImages),
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
