import 'package:app_travel/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlowwNotificationSetting extends StatefulWidget {
  const AlowwNotificationSetting({Key? key}) : super(key: key);

  @override
  _AlowwNotificationSettingState createState() =>
      _AlowwNotificationSettingState();
}

class _AlowwNotificationSettingState extends State<AlowwNotificationSetting> {
  var _account = false;
  var _recommend = true;
  var _travelNew = true;
  var _maketing = false;
  var _appFilter = false;
  var _updateAuto = true;
  var _vibrate = false;
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
              Text(
                S.current.EmailNoti,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                title: Text(
                  S.current.AccAcctivity,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Theme.of(context).primaryColor),
                ),
                trailing: CupertinoSwitch(
                  value: _account,
                  onChanged: (bool value) {
                    setState(() {
                      _account = value;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _account = !_account;
                  });
                },
              ),
              ListTile(
                title: Text(
                  S.current.RecommendedForYou,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Theme.of(context).primaryColor),
                ),
                trailing: CupertinoSwitch(
                  value: _recommend,
                  onChanged: (bool value) {
                    setState(() {
                      _recommend = value;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _recommend = !_recommend;
                  });
                },
              ),
              ListTile(
                title: Text(
                  S.current.TravelNews,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Theme.of(context).primaryColor),
                ),
                trailing: CupertinoSwitch(
                  value: _travelNew,
                  onChanged: (bool value) {
                    setState(() {
                      _travelNew = value;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _travelNew = !_travelNew;
                  });
                },
              ),
              ListTile(
                title: Text(
                  S.current.MarketingPreference,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Theme.of(context).primaryColor),
                ),
                trailing: CupertinoSwitch(
                  value: _maketing,
                  onChanged: (bool value) {
                    setState(() {
                      _maketing = value;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _maketing = !_maketing;
                  });
                },
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                S.current.APPNoti,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                title: Text(
                  S.current.AppFilterUpdate,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Theme.of(context).primaryColor),
                ),
                trailing: CupertinoSwitch(
                  value: _appFilter,
                  onChanged: (bool value) {
                    setState(() {
                      _appFilter = value;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _appFilter = !_appFilter;
                  });
                },
              ),
              ListTile(
                title: Text(
                  S.current.UpdateAutomatically,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Theme.of(context).primaryColor),
                ),
                trailing: CupertinoSwitch(
                  value: _updateAuto,
                  onChanged: (bool value) {
                    setState(() {
                      _updateAuto = value;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _updateAuto = !_updateAuto;
                  });
                },
              ),
              ListTile(
                title: Text(
                  S.current.VibrateNoti,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Theme.of(context).primaryColor),
                ),
                trailing: CupertinoSwitch(
                  value: _vibrate,
                  onChanged: (bool value) {
                    setState(() {
                      _vibrate = value;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _vibrate = !_vibrate;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
