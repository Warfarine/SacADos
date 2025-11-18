import 'package:flutter/material.dart';

Widget buildCircularCard({
  required String imagePath_,
  required String title_,
  required String label_,
  required VoidCallback onTap_,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      PhysicalModel(
        shape: BoxShape.circle,
        elevation: 10,
        shadowColor: Colors.black45,
        color: Colors.white70,
        child: Material(
          color: Colors.transparent,
          shape: const CircleBorder(),
          child: InkWell(
            onTap: onTap_,
            customBorder: const CircleBorder(),
            child: Ink.image(
              image: AssetImage(imagePath_),
              width: 125,
              height: 125,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const SizedBox(height: 20),
      Text(title_, style: const TextStyle(fontSize: 22, color: Colors.black)),
      Text(
        label_,
        style: const TextStyle(fontSize: 16, color: Colors.black),
      ),
    ],
  );
}