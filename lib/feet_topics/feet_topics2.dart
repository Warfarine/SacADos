import 'package:flutter/material.dart';
import 'package:test_app/carrousels/blister_carrousel.dart';
import 'package:test_app/carrousels/callus_carrousel.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/l10n/app_localizations.dart';
import 'package:test_app/build_circular_card.dart';

class FeetTopic2 extends StatelessWidget {
  final void Function(Locale) onLocaleChange;
  const FeetTopic2({super.key, required this.onLocaleChange});

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
                          imagePath_: 'images/feet_instructions/callus.png',
                          title_: localization_.callus,
                          label_: localization_.callusLabel,
                          onTap_: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CallusCarrousel(
                                  onLocaleChange: onLocaleChange,
                                ),
                              ),
                            );
                          },
                        ),
                        buildCircularCard(
                          imagePath_: 'images/feet_instructions/blister.png',
                          title_: localization_.blister,
                          label_: localization_.blisterLabel,
                          onTap_: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlisterCarrousel(
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