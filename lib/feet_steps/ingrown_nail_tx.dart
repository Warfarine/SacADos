import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/l10n/app_localizations.dart';
import 'package:test_app/info_box_generator.dart';

class IngrownNailTx extends StatelessWidget {
  const IngrownNailTx({super.key, required this.onLocaleChange});
  final void Function(Locale) onLocaleChange;

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
                          localization_.ingrownNailTxHeader,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 16),
                      InfoBoxGenerator(
                        borderColor_: Colors.blueAccent,
                        texts_: [localization_.ingrownNailTx],
                        imagePaths_: ['images/treatment.png'],
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
                                localization_.ingrownNailWarning,
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
