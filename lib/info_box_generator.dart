import 'package:flutter/material.dart';

class InfoBoxGenerator extends StatelessWidget {
  final Color borderColor_;
  final List<String>? imagePaths_;
  final List<String> texts_;
  final double height_;
  final double width_;
  const InfoBoxGenerator({
    super.key,
    required this.borderColor_,
    this.imagePaths_,
    required this.texts_,
    this.height_ = 100.0,
    this.width_ = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    final images = imagePaths_ ?? [];
    return Padding(
      padding: const EdgeInsets.all(16.0), // smaller outer padding
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: borderColor_, width: 3.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0), // inner padding
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 24.0,
            runSpacing: 24.0,
            children: List.generate(texts_.length, (index) {
              final hasImage =
                  index < images.length && images[index].isNotEmpty;
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (hasImage) ...[
                    Image.asset(
                      images[index],
                      key: ValueKey(images[index]),
                      width: width_,
                      height: height_,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 24.0),
                  ],
                  Flexible(
                    child: Text(
                      texts_[index],
                      softWrap: true,
                      style: const TextStyle(fontSize: 18.0, height: 2.0),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}