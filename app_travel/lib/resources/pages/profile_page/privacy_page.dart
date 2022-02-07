import 'package:app_travel/generated/l10n.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  _PrivacyPageState createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
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
                S.current.Privacy,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.06,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                S.current.PrivacyDes,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: width * 0.04,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                S.current.PrivacyDes,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: width * 0.04,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                S.current.PrivacyDes,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: width * 0.04,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
