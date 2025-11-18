import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/l10n/app_localizations.dart';
import 'package:test_app/dialogue_box_generator.dart';
import 'package:test_app/info_box_generator.dart';

class BiteSteps extends StatelessWidget {
  BiteSteps({super.key, required this.onLocaleChange});
  final void Function(Locale) onLocaleChange;

  final List<String> bitesImages_ = [
    "images/graphic_images/bite1.png",
    "images/graphic_images/bite2.png",
    "images/graphic_images/bite3.png",
  ];

  final List<String> iconImages_ = [
    "images/wounds_instructions/hand-washing.png",
    "images/wounds_instructions/drying-hands.png",
    "images/wounds_instructions/hospital.png",
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
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      



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
                              localization_.biteWarning,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                      InfoBoxGenerator(
                        borderColor_: Colors.red,
                        imagePaths_: iconImages_,
                        texts_: [
                          localization_.bitesCare1,
                          localization_.bitesCare2,
                          localization_.bitesCare3,
                        ],
                      ),
                      
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DialogueBoxGenerator(
                                boxImages_: bitesImages_,
                                boxTexts_: [
                                  localization_.bitesImage1,
                                  localization_.bitesImage2,
                                  localization_.bitesImage3,
                                ],
                              );
                            },
                          );
                        },
                        child: Text(localization_.bitesImages),
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
