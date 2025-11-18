import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_app/intro_screens/intropage1.dart';
import 'package:test_app/intro_screens/intropage2.dart';

class OnboardingScreen extends StatefulWidget {
  final void Function(Locale) onLocaleChange;
  const OnboardingScreen({super.key, required this.onLocaleChange});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller_ = PageController();
  int currentPageIndex = 0;
  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      FirstPage(onLocaleChange: widget.onLocaleChange),
      SecondPage(onLocaleChange: widget.onLocaleChange),
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
                  // Back button (not on first page)
                  if (currentPageIndex > 0)
                    _buildCircleButton(
                      icon: Icons.arrow_back,
                      onPressed: () {
                        controller_.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                    )
                  else
                    const SizedBox(width: 50),

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

                  // Next button (not on last page)
                  if (currentPageIndex < totalPages - 1)
                    _buildCircleButton(
                      icon: Icons.arrow_forward,
                      onPressed: () {
                        controller_.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                    )
                  else
                    const SizedBox(width: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper to create circular buttons
  Widget _buildCircleButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.pink,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon),
        color: Colors.white,
        iconSize: 32,
        onPressed: onPressed,
      ),
    );
  }
}
