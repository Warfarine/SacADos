import 'package:flutter/material.dart';
import 'package:test_app/carrousels/foot_fungus_carrousel.dart';
import 'package:test_app/carrousels/nail_fungus_carrousel.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/l10n/app_localizations.dart';
import 'package:test_app/build_circular_card.dart';

class FeetTopic1 extends StatelessWidget {
  final void Function(Locale) onLocaleChange;
  const FeetTopic1({super.key, required this.onLocaleChange});

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
                          imagePath_: 'images/feet_instructions/footfungus.png',
                          title_: localization_.athleteFoot,
                          label_: localization_.athleteFootLabel,
                          onTap_: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FootFungusCarrousel(
                                  onLocaleChange: onLocaleChange,
                                ),
                              ),
                            );
                          },
                        ),
                        buildCircularCard(
                          imagePath_: 'images/feet_instructions/nailfungus.png',
                          title_: localization_.nailFungus,
                          label_: localization_.nailFungusLabel,
                          onTap_: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NailFungusCarrousel(
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