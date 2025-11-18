import 'package:flutter/material.dart';
import 'package:test_app/carrousels/feet_carrousel.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/carrousels/skin_protection_carrousel.dart';
import 'package:test_app/carrousels/wound_care_carrousel.dart';
import 'package:test_app/build_circular_card.dart';
import 'package:test_app/l10n/app_localizations.dart';

class SecondPage extends StatelessWidget {
  final void Function(Locale) onLocaleChange;
  const SecondPage({super.key, required this.onLocaleChange});

  @override
  Widget build(BuildContext context) {
    final localization_ = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: MyAppBar(onLocaleChange: onLocaleChange),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 60),
                          Text(
                            localization_.helpGen,
                            style: const TextStyle(
                              fontSize: 28,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 80),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 80,
                      runSpacing: 100,
                      children: [
                        buildCircularCard(
                          imagePath_: "images/bandage-roll.png",
                          title_: localization_.helpWound,
                          label_: " ",
                          onTap_: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WoundCareCarrousel(
                                  onLocaleChange: onLocaleChange,
                                ),
                              ),
                            );
                          },
                        ),

                        buildCircularCard(
                          imagePath_: "images/diabetic-foot.png",
                          title_: localization_.helpFootCare,
                          label_: " ",
                          onTap_: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FeetCarrousel(
                                  onLocaleChange: onLocaleChange,
                                ),
                              ),
                            );
                          },
                        ),

                        buildCircularCard(
                          imagePath_: "images/body-lotion.png",
                          title_: localization_.helpPrevention,
                          label_: " ",
                          onTap_: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SkinProtectionCarrousel(
                                  onLocaleChange: onLocaleChange),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
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
