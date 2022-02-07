import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/auth/auth_text_input.dart';
import 'package:app_travel/resources/containts.dart';
import 'package:flutter/material.dart';

class AccountSettingPage extends StatefulWidget {
  const AccountSettingPage({Key? key}) : super(key: key);

  @override
  _AccountSettingPageState createState() => _AccountSettingPageState();
}

class _AccountSettingPageState extends State<AccountSettingPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController? emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: width * 0.2,
                    width: width * 0.2,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(pic2), fit: BoxFit.cover)),
                    child: null,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.current.AccountSetting,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.05,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Text(
                        S.current.UpdateInfor,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.04,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: width * 0.04),
            AuthTextInput(
                controller: userNameController,
                keyboardType: TextInputType.name,
                icon: Icons.person),
            SizedBox(height: width * 0.04),
            AuthTextInput(
                controller: emailController!,
                keyboardType: TextInputType.emailAddress,
                icon: Icons.email),
            SizedBox(height: width * 0.06),
            Center(
              child: SizedBox(
                height: width * 0.12,
                width: 150,
                // padding: EdgeInsets.only(left: width * 0.5),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        side: const BorderSide(width: 2, color: Colors.black12),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10)),
                    onPressed: () {
                      // ignore: prefer_const_constructors
                      final snackBar = SnackBar(
                        content: const Text('Logged in successfully'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text(
                      S.current.SignIn,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
