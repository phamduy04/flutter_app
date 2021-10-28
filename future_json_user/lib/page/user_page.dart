import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:future_json_user/models/user.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key, required this.users}) : super(key: key);
  final Users users;
  @override
  Widget build(BuildContext context) {
    final Color color = Colors.white;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: color,
            )),
        title: Text('User Page',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 23, color: color)),
        actions: [
          Icon(Icons.calendar_today_rounded, size: 30, color: color),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            color: Colors.blue,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  buildinForUser(
                      text: 'name', icon: Icons.person_pin, title: users.name),
                  SizedBox(
                    height: 30,
                  ),
                  buildinForUser(
                      text: 'user name',
                      icon: Icons.person_pin,
                      title: users.username),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      height: 410,
                      child: Card(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10))),
                                child: Row(
                                  children: [
                                    Text('address',
                                        style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )),
                            Column(
                              children: [
                                Listitle(
                                  iconData: Icons.streetview,
                                  titleAddress: 'street',
                                  subTitleAdress: users.address.street,
                                ),
                                Listitle(
                                  iconData: Icons.maps_home_work,
                                  titleAddress: 'suite',
                                  subTitleAdress: users.address.suite,
                                ),
                                Listitle(
                                  iconData: Icons.location_city,
                                  titleAddress: 'city',
                                  subTitleAdress: users.address.city,
                                ),
                                Listitle(
                                  iconData: Icons.map_rounded,
                                  titleAddress: 'zipcode',
                                  subTitleAdress: users.address.zipcode,
                                ),
                                builAddressGeo()
                              ],
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  buildinForUser(
                    text: 'phone',
                    icon: Icons.call,
                    title: users.phone,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  buildinForUser(
                    text: 'website',
                    icon: Icons.web,
                    title: users.website,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  buildUserCompany(users: users)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget builAddressGeo() {
    return ListTile(
      leading: Icon(Icons.mp_sharp, size: 30),
      title: Text(users.address.geo.toString()),
      subtitle: Row(
        children: [
          Text(users.address.geo.lat.toString()),
          SizedBox(
            width: 15,
          ),
          Text(users.address.geo.lng.toString()),
        ],
      ),
      trailing: Icon(
        Icons.arrow_forward,
        size: 30,
      ),
    );
  }
}

class buildUserCompany extends StatelessWidget {
  const buildUserCompany({
    Key? key,
    required this.users,
  }) : super(key: key);

  final Users users;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 270,
        child: Card(
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Row(
                    children: [
                      Text('company',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Column(children: [
                Listitle(
                  iconData: Icons.business_outlined,
                  titleAddress: 'name',
                  subTitleAdress: users.company.name,
                ),
                Listitle(
                  iconData: Icons.bungalow_outlined,
                  titleAddress: 'catchPhrase',
                  subTitleAdress: users.company.catchPhrase,
                ),
                Listitle(
                  iconData: Icons.bubble_chart,
                  titleAddress: 'bs',
                  subTitleAdress: users.company.bs,
                ),
              ]),
            ])));
  }
}

class Listitle extends StatelessWidget {
  final IconData iconData;
  final String titleAddress;
  final String subTitleAdress;

  const Listitle({
    Key? key,
    required this.iconData,
    required this.titleAddress,
    required this.subTitleAdress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 30,
      ),
      title: Text(titleAddress),
      subtitle: Text(subTitleAdress),
      trailing: Icon(
        Icons.arrow_forward,
        size: 30,
      ),
    );
  }
}

class buildinForUser extends StatelessWidget {
  const buildinForUser(
      {Key? key, required this.text, required this.icon, required this.title})
      : super(key: key);
  final String text;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Row(
                children: [
                  Text(text,
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ],
              )),
          ListTile(
            leading: Icon(
              icon,
              size: 30,
            ),
            title: Text(title),
            trailing: Icon(
              Icons.arrow_forward,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
