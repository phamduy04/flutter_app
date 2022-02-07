import 'package:app_travel/controller/app_theme_provider.dart';
import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/pages/profile_page/account_setting_page.dart';
import 'package:app_travel/resources/pages/profile_page/allow_noti_setting.dart';
import 'package:app_travel/resources/pages/profile_page/help_page.dart';
import 'package:app_travel/resources/pages/profile_page/manage_password_page.dart';
import 'package:app_travel/resources/pages/profile_page/profile_settings.dart';
import 'package:app_travel/resources/pages/profile_page/setting_card.dart';
import 'package:app_travel/resources/pages/profile_page/privacy_page.dart';
import 'package:app_travel/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  var _noti = false;
  var _isTheme = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    bool themeVal = Theme.of(context).brightness == Brightness.dark;
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
                S.current.Account,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: width * 0.04,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              SettingCard(
                  iconData: Icons.settings_applications,
                  title: S.current.ProfileSet,
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ProfileSettings()));
                  }),
              SettingCard(
                  iconData: Icons.settings,
                  title: S.current.AccountSettings,
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const AccountSettingPage()));
                  }),
              SettingCard(
                  iconData: Icons.manage_accounts,
                  title: S.current.ManagePassword,
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ManagePassWordPage()));
                  }),
              const SizedBox(height: 20),
              Text(
                S.current.PushNoti,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: width * 0.04,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              SettingCard(
                  iconData: Icons.notifications_active,
                  title: S.current.AllowNoti,
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const AlowwNotificationSetting()));
                  }),
              MergeSemantics(
                child: ListTile(
                  title: Text(
                    S.current.Notification,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045,
                        color: Theme.of(context).primaryColor),
                  ),
                  trailing: CupertinoSwitch(
                    value: _noti,
                    onChanged: (bool value) {
                      setState(() {
                        _noti = value;
                      });
                      if (_noti == true) {
                        // ignore: prefer_const_constructors
                        final snackBar =
                            SnackBar(content: Text(S.current.TurnOnNoti));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                  ),
                  onTap: () {
                    setState(() {
                      _noti = !_noti;
                    });
                  },
                ),
              ),
              MergeSemantics(
                child: ListTile(
                  title: Text(
                    S.current.Theme,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045,
                        color: Theme.of(context).primaryColor),
                  ),
                  trailing: CupertinoSwitch(
                    value: themeVal,
                    onChanged: (value) {
                      Provider.of<AppThemeProvider>(context, listen: false)
                          .changTheme(value
                              ? AppTheme.darkThemeData
                              : AppTheme.lightThemeData);
                    },
                  ),
                  onTap: () {
                    setState(() {
                      _isTheme = !_isTheme;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text(
                S.current.OtherSettings,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: width * 0.04,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              SettingCard(
                  iconData: Icons.lock,
                  title: S.current.Privacy,
                  onpress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const PrivacyPage()));
                  }),
              SettingCard(
                  iconData: Icons.help,
                  title: S.current.Help,
                  onpress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const HelpPage()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
