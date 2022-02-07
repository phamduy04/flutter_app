import 'package:app_travel/controller/change_language_provider.dart';
import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/views/nav_screen.dart';
import 'package:app_travel/views/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  Locale? dropdownValue = const Locale("en");
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChangLanguageProvider(),
      child: Consumer<ChangLanguageProvider>(
        builder: (context, value, child) => FutureBuilder(
            future: S.load(value.locale),
            builder: (context, index) {
              return GestureDetector(
                onTap: () {
                  print(value.locale);
                },
                child: Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    toolbarHeight: 70,
                    backgroundColor: Colors.teal,
                    leading: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SplashScreen()));
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        )),
                    title: Text(
                      S.current.Language,
                      style: const TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    actions: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            CupertinoIcons.globe,
                            size: 24,
                            color: Colors.teal,
                          ),
                        ),
                      )
                    ],
                  ),
                  body: SafeArea(
                    child: ListTile(
                        leading: Text(
                          S.current.Language,
                          style: const TextStyle(fontSize: 18),
                        ),
                        trailing: DropdownButton<Locale>(
                          value: dropdownValue,
                          onChanged: (Locale? newValue) {
                            // print("value:" + widget.dropdownValue.toString());
                            Provider.of<ChangLanguageProvider>(context,
                                    listen: false)
                                .changeLanguage(newValue!);
                          },
                          items: const [
                            DropdownMenuItem<Locale>(
                              child: Text("English",
                                  style: TextStyle(fontSize: 14)),
                              value: Locale("en"),
                            ),
                            DropdownMenuItem<Locale>(
                              child: Text("Vietnamese",
                                  style: TextStyle(fontSize: 14)),
                              value: Locale("vi"),
                            )
                          ],
                        )),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
