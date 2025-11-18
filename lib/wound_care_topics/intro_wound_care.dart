import 'package:flutter/material.dart';
import 'package:test_app/carrousels/bites_carrousel.dart';
import 'package:test_app/carrousels/cuts_carrousel.dart';
import 'package:test_app/carrousels/infection_carrousel.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/build_circular_card.dart';
import 'package:test_app/l10n/app_localizations.dart';

class IntroWoundCare extends StatelessWidget {
  final void Function(Locale) onLocaleChange;
  const IntroWoundCare({super.key, required this.onLocaleChange});

  @override
Widget build(BuildContext context) {
  final localization_ = AppLocalizations.of(context)!;

  return Scaffold(
    appBar: MyAppBar(onLocaleChange: onLocaleChange),
    backgroundColor: Colors.white,
    body: LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 60,
                    runSpacing: 40,
                    children: [
                      buildCircularCard(
                        imagePath_: 'images/infection.png',
                        title_: localization_.infection,
                        label_: localization_.defInfection,
                        onTap_: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InfectionCarrousel(
                                onLocaleChange: onLocaleChange,
                              ),
                            ),
                          );
                        },
                      ),
                      buildCircularCard(
                        imagePath_: 'images/cut.png',
                        title_: localization_.cuts,
                        label_: localization_.defCuts,
                        onTap_: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CutsCarrousel(
                                onLocaleChange: onLocaleChange,
                              ),
                            ),
                          );
                        },
                      ),
                      buildCircularCard(
                        imagePath_: 'images/bite.png',
                        title_: localization_.bites,
                        label_: localization_.bitesLabel,
                        onTap_: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BitesCarrousel(
                                onLocaleChange: onLocaleChange,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
}