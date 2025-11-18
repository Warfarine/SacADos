import 'package:flutter/material.dart';
import 'package:test_app/l10n/app_localizations.dart';

class DialogueBoxGenerator extends StatelessWidget {
  final List<String> boxImages_;
  final List<String> boxTexts_;

  const DialogueBoxGenerator({
    super.key,
    required this.boxImages_,
    required this.boxTexts_,
  });

  @override
  Widget build(BuildContext context) {
    final localization_ = AppLocalizations.of(context)!;
    final ScrollController scrollController = ScrollController();

    final maxDialogHeight = MediaQuery.of(context).size.height * 0.7;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: maxDialogHeight),
        child: Stack(
          children: [
            Scrollbar(
              controller: scrollController,
              thumbVisibility: true,
              child: SingleChildScrollView(
                controller: scrollController,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final maxGridHeight = constraints.maxHeight - 80;

                          return ConstrainedBox(
                            constraints: BoxConstraints(maxHeight: maxGridHeight),
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: const AlwaysScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: 0.65,
                              ),
                              itemCount: boxImages_.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        boxImages_[index],
                                        height: 150, 
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      boxTexts_[index],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          );
                        },
                      ),
                      const Divider(height: 1),
                      SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text(
                            localization_.close,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Top-right close button
            Positioned(
              top: 4,
              right: 4,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}