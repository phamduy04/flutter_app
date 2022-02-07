import 'dart:io';

import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/auth/body_sign_up.dart';
import 'package:app_travel/resources/containts.dart';
import 'package:app_travel/resources/widgets/utils/utils.dart';
import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  File? avatarImage1;
  File? avatarImage2;
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController confirmPasswordEditingController =
      TextEditingController();
  TextEditingController firstNameEditingController = TextEditingController();
  TextEditingController lastNameEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  S.current.ProfileSetting,
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: width * 0.03,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  S.current.UpdateYourProfile,
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  avatarImage1 != null
                      ? Expanded(
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 1.5, color: Colors.black),
                                image: avatarImage1 != null
                                    ? DecorationImage(
                                        fit: BoxFit.cover,
                                        image: FileImage(avatarImage1!))
                                    : null),
                          ),
                        )
                      : Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey),
                          child: const Center(
                            child: Icon(
                              Icons.person,
                              size: 50,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 120,
                      height: 50,
                      margin: const EdgeInsets.only(top: 20, right: 15),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.teal,
                              side: const BorderSide(
                                  width: 2, color: Colors.black12),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10)),
                          onPressed: () async {
                            Utils.showPickImageAlert(context,
                                onPickImage: (image) {
                              setState(() {
                                avatarImage1 = image;
                              });
                              Navigator.pop(context);
                            });
                          },
                          child: Text(
                            S.current.NewPictute,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: width * 0.5,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: avatarImage2 != null
                        ? DecorationImage(
                            fit: BoxFit.cover, image: FileImage(avatarImage2!))
                        : const DecorationImage(
                            image: AssetImage(pic2), fit: BoxFit.cover)),
              ),
              SizedBox(height: width * 0.04),
              Container(
                alignment: Alignment.centerRight,
                height: width * 0.12,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        side: const BorderSide(width: 2, color: Colors.black12),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10)),
                    onPressed: () async {
                      Utils.showPickImageAlert(context, onPickImage: (image) {
                        setState(() {
                          avatarImage2 = image;
                        });
                        Navigator.pop(context);
                      });
                    },
                    child: Text(
                      S.current.NewPictute,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              SizedBox(height: width * 0.06),
              BodySignUp(
                  emailEditingController: emailEditingController,
                  passwordEditingController: passwordEditingController,
                  confirmPasswordEditingController:
                      confirmPasswordEditingController,
                  firstNameEditingController: firstNameEditingController,
                  lastNameEditingController: lastNameEditingController),
              SizedBox(height: width * 0.06),
              Center(
                child: Container(
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          side:
                              const BorderSide(width: 2, color: Colors.black12),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10)),
                      onPressed: () {},
                      child: Text(
                        S.current.SaveChanges,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ),
              SizedBox(height: width * 0.06),
            ],
          ),
        ),
      ),
    );
  }
}
