import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/auth/auth_text_input.dart';
import 'package:app_travel/resources/containts.dart';
import 'package:flutter/material.dart';

class ManagePassWordPage extends StatefulWidget {
  const ManagePassWordPage({Key? key}) : super(key: key);

  @override
  _ManagePassWordPageState createState() => _ManagePassWordPageState();
}

class _ManagePassWordPageState extends State<ManagePassWordPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(imageUser))),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Text(
                      S.current.UserName,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              S.current.ManagePassword,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            AuthTextInput(
                visible: true,
                controller: passwordController,
                keyboardType: TextInputType.text,
                icon: Icons.lock),
            AuthTextInput(
                visible: true,
                controller: confirmPasswordController,
                keyboardType: TextInputType.text,
                icon: Icons.lock),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                height: 50,
                width: 170,
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
                        content: const Text('Change password successfully'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text(
                      S.current.SaveChanges,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
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
