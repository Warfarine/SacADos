import 'package:flutter/material.dart';
import 'package:test_app/carrousels/infection_carrousel.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/info_box_generator.dart';
import 'package:test_app/l10n/app_localizations.dart';

class CutsStep5 extends StatelessWidget {
  const CutsStep5({super.key, required this.onLocaleChange});
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    const SizedBox(height: 20),
                    InfoBoxGenerator(
                      borderColor_: Colors.blueAccent,
                      texts_: [localization_.cutsStep7],
                      imagePaths_: ['images/wounds_instructions/hand-washing.png'],
                    ),

                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InfectionCarrousel(
                                onLocaleChange: onLocaleChange),
                          ),
                        );
                      },
                      child: Text(localization_.linkToInfection),
                    ),

                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Text(
                            localization_.cutsStep8,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            softWrap: true,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          'images/heal.png',
                          width: 75,
                          height: 75,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}