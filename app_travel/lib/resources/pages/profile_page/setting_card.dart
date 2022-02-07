import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  const SettingCard(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onpress})
      : super(key: key);
  final IconData iconData;
  final String title;
  final Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          onTap: onpress,
          leading: Icon(
            iconData,
            size: 24,
            color: Colors.teal,
          ),
          title: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Theme.of(context).primaryColor),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Theme.of(context).primaryColor,
          )),
    );
  }
}
