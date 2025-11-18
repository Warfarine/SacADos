import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/l10n/app_localizations.dart';
import 'package:test_app/info_box_generator.dart';

class BurnTx extends StatelessWidget {
  BurnTx({super.key, required this.onLocaleChange});
  final void Function(Locale) onLocaleChange;
  final List<String> iconImages_ = [
    "images/wounds_instructions/burn-clothes.png",
    "images/wounds_instructions/cool-down.png",
    "images/wounds_instructions/hand-washing.png",
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          localization_.burnsTxHeader,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      InfoBoxGenerator(
                        borderColor_: Colors.blueAccent,
                        texts_: [
                          localization_.burnsTxStep1,
                          localization_.burnsTxStep2,
                          localization_.burnsTxStep3,
                          localization_.burnsTxStep4
                          ],
                        imagePaths_: iconImages_,
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
