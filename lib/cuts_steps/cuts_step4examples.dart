import 'package:flutter/material.dart';
import 'package:test_app/custom_app_bar.dart';
import 'package:test_app/l10n/app_localizations.dart';

class CutsStep4Examples extends StatelessWidget {
  const CutsStep4Examples({super.key,required this.onLocaleChange,});
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
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
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
                            localization_.cutsStep6Examples,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 80,
                      runSpacing: 100,
                      children: [
                        Image.asset(
                          'images/wounds_instructions/dressinghowto.png',
                          width: 400,
                          height: 400,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'images/wounds_instructions/compressandtape.png',
                          width: 300,
                          height: 300,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'images/wounds_instructions/compressandroll.png',
                          width: 300,
                          height: 300,
                          fit: BoxFit.contain,
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