import 'package:flutter/material.dart';
import 'package:test_app/carrousels/burns_carrousel.dart';
import 'package:test_app/carrousels/frostbite_carrousel.dart';
import 'package:test_app/carrousels/sunburn_carrousel.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/build_circular_card.dart';
import 'package:test_app/l10n/app_localizations.dart';

class TemperatureWound extends StatelessWidget {
  final void Function(Locale) onLocaleChange;
  const TemperatureWound({super.key, required this.onLocaleChange});

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
                          imagePath_: 'images/sunburn.png',
                          title_: localization_.sunburn,
                          label_: localization_.sunburnLabel,
                          onTap_: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SunburnCarrousel(
                                  onLocaleChange: onLocaleChange,
                                ),
                              ),
                            );
                          },
                        ),
                        buildCircularCard(
                          imagePath_: 'images/frostbite.png',
                          title_: localization_.frostbite,
                          label_: localization_.frostbiteLabel,
                          onTap_: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FrostBiteCarrousel(
                                  onLocaleChange: onLocaleChange,
                                ),
                              ),
                            );
                          },
                        ),
                        buildCircularCard(
                          imagePath_: 'images/burn.png',
                          title_: localization_.burns,
                          label_: localization_.burnsLabel,
                          onTap_: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BurnsCarrousel(
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
