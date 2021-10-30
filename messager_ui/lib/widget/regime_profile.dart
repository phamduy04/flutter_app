import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messager_ui/models/regime.dart';

class RegimeProfiles extends StatefulWidget {
  const RegimeProfiles({Key? key}) : super(key: key);

  @override
  _RegimeProfilesState createState() => _RegimeProfilesState();
}

class _RegimeProfilesState extends State<RegimeProfiles> {
  Color selection = Colors.black;
  bool _values = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.0 * Regimetuychon.length,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: Regimetuychon.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Regimetuychon[index].icon,
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      Regimetuychon[index].nameRegime,
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
