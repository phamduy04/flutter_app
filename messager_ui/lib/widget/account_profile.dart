import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messager_ui/models/regime.dart';

class AccountProfile extends StatefulWidget {
  const AccountProfile({Key? key}) : super(key: key);

  @override
  _AccountProfileState createState() => _AccountProfileState();
}

class _AccountProfileState extends State<AccountProfile> {
  Color selection = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.0 * RegimeTaiKhoan.length,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: RegimeTaiKhoan.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RegimeTaiKhoan[index].icon,
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      RegimeTaiKhoan[index].nameRegime,
                      style: TextStyle(
                        fontSize: 20,
                        color: selection,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
