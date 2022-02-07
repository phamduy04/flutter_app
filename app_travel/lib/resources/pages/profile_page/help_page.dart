import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/pages/profile_page/setting_card.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  TextEditingController? searchController;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                S.current.FAQ,
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: width * 0.03,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                S.current.HelpCenter,
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: searchController,
                style: TextStyle(
                  fontSize: width * 0.038,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    hintText: S.current.Seach,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                S.current.TopQues,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: width * 0.04,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SettingCard(
                  iconData: Icons.info,
                  title: S.current.AboutAccInfor,
                  onpress: () {}),
              SettingCard(
                  iconData: Icons.email,
                  title: S.current.ChangeEmail,
                  onpress: () {}),
              SettingCard(
                  iconData: Icons.lock_outline,
                  title: S.current.ChangePassword,
                  onpress: () {}),
              const SizedBox(
                height: 15,
              ),
              Text(
                S.current.FAQQues,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: width * 0.04,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SettingCard(
                  iconData: Icons.info,
                  title: S.current.AboutAccInfor,
                  onpress: () {}),
              SettingCard(
                  iconData: Icons.email,
                  title: S.current.ChangeEmail,
                  onpress: () {}),
              SettingCard(
                  iconData: Icons.lock_outline,
                  title: S.current.ChangePassword,
                  onpress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
