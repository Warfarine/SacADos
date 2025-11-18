import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final void Function(Locale) onLocaleChange;

  const MyAppBar({
    super.key,
    this.title = "Ma santé dans mon sac",
    required this.onLocaleChange,
  });

  @override
  Widget build(BuildContext context) {
    final currentLocale = Localizations.localeOf(context);

    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.purple[100],
      title: Text("Ma santé dans mon sac 🎒"),
      actions: [
        DropdownButtonHideUnderline(
          child: DropdownButton<Locale>(
            value: currentLocale,
            icon: Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
              ), 
              child: const Icon(Icons.language, color: Colors.white),
            ),
            onChanged: (Locale? newLocale) {
              if (newLocale != null) {
                onLocaleChange(newLocale);
              }
            },
            items: const [
              DropdownMenuItem(value: Locale('en'), child: Text('English ')),
              DropdownMenuItem(value: Locale('fr'), child: Text('Français ')),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
