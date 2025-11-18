import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_app/cuts_steps/cuts_step1.dart';
import 'package:test_app/cuts_steps/cuts_step1_addendum.dart';
import 'package:test_app/cuts_steps/cuts_step2.dart';
import 'package:test_app/cuts_steps/cuts_step3.dart';
import 'package:test_app/cuts_steps/cuts_step4.dart';
import 'package:test_app/cuts_steps/cuts_step4examples.dart';
import 'package:test_app/cuts_steps/cuts_step5.dart';

class CutsCarrousel extends StatefulWidget {
  final void Function(Locale) onLocaleChange;
  const CutsCarrousel({super.key, required this.onLocaleChange});

  @override
  CutsCarrouselState createState() => CutsCarrouselState();
}

class CutsCarrouselState extends State<CutsCarrousel> {
  final PageController controller_ = PageController();
  int currentPageIndex = 0;
  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      CutsStep1(onLocaleChange: widget.onLocaleChange),
      CutsStep1Extra(onLocaleChange: widget.onLocaleChange),
      CutsStep2(onLocaleChange: widget.onLocaleChange),
      CutsStep3(onLocaleChange: widget.onLocaleChange),
      CutsStep4(onLocaleChange: widget.onLocaleChange),
      CutsStep4Examples(onLocaleChange: widget.onLocaleChange),
      CutsStep5(onLocaleChange: widget.onLocaleChange),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final int totalPages = pages.length;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller_,
              onPageChanged: (index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              children: pages,
            ),
          ),

          // Bottom controls
          SafeArea(
            minimum: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCircleButton(
                    icon: Icons.arrow_back,
                    onPressed: () {
                      if (currentPageIndex == 0) {
                        Navigator.pop(
                          context,
                        ); 
                      } else {
                        controller_.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),

                  // Page indicator
                  SmoothPageIndicator(
                    controller: controller_,
                    count: totalPages,
                    effect: const WormEffect(
                      dotHeight: 12,
                      dotWidth: 12,
                      spacing: 8,
                      activeDotColor: Colors.pink,
                      dotColor: Colors.grey,
                    ),
                  ),

                  // NEXT or green CHECK button
                  if (currentPageIndex < totalPages - 1)
                    buildCircleButton(
                      icon: Icons.arrow_forward,
                      onPressed: () {
                        controller_.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                    )
                  else
                    buildGreenCheckButton(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCircleButton({
    required IconData icon,
    required VoidCallback onPressed,
    bool faded = false,
  }) {
    return Opacity(
      opacity: faded ? 0.4 : 1.0,
      child: Container(
        decoration: BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
        child: IconButton(
          icon: Icon(icon),
          color: Colors.white,
          iconSize: 32,
          onPressed: onPressed, 
        ),
      ),
    );
  }

  // Green checkmark button for the last page
  Widget buildGreenCheckButton(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: IconButton(
        icon: const Icon(Icons.check_rounded),
        color: Colors.white,
        iconSize: 36,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
