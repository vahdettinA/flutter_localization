import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Türkçe'),
                  value: 'tr',
                  onTap: () {
                    LocaleNotifier.of(context)?.change('tr');
                  },
                ),
                PopupMenuItem(
                  child: Text('English'),
                  value: 'en',
                  onTap: () {
                    LocaleNotifier.of(context)?.change('en');
                  },
                ),
                PopupMenuItem(
                  child: Text('Arabic'),
                  value: 'ar',
                  onTap: () {
                    LocaleNotifier.of(context)?.change('ar');
                  },
                )
              ];
            })
          ],
          title: LocaleText('welcome'),
        ),
        body: Column(
          children: [
            LocaleText('login'),
            LocaleText('setting'),
          ],
        ));
  }
}
