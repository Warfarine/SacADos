import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/dialogue_box_generator.dart';
import 'package:test_app/l10n/app_localizations.dart';
import 'package:test_app/info_box_generator.dart';

class FootFungusSx extends StatelessWidget {
  FootFungusSx({super.key, required this.onLocaleChange});
  final void Function(Locale) onLocaleChange;
  final List<String> afImages_ = [
    "images/graphic_images/athletefoot1.png",
    "images/graphic_images/athletefoot2.png",
    "images/graphic_images/athletefoot3.png",
    "images/graphic_images/athletefoot4.png",
    "images/graphic_images/athletefoot5.png",
    "images/graphic_images/athletefoot6.png",
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
                                localization_.athleteFootDef,
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
                                localization_.athleteFootSxHeader,
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
                        texts_: [localization_.athleteFootSx],
                      ),
  
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DialogueBoxGenerator(
                                boxImages_: afImages_,
                                boxTexts_: [
                                  localization_.afimage1,
                                  localization_.afimage2,
                                  localization_.afimage3,
                                  localization_.afimage4,
                                  localization_.afimage5,
                                  localization_.afimage6,
                                ],
                              );
                            },
                          );
                        },
                        child: Text(localization_.athleteFootImages),
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
