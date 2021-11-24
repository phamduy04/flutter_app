import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuItem(
          imageSvg: "assets/icons/bookmark_fill.svg",
          title: "Saved Recipes",
        ),
        SizedBox(
          height: 15,
        ),
        MenuItem(imageSvg: "assets/icons/chef_color.svg", title: "Super Plan"),
        SizedBox(
          height: 15,
        ),
        MenuItem(
            imageSvg: "assets/icons/language.svg", title: "Change Language"),
        SizedBox(
          height: 15,
        ),
        MenuItem(imageSvg: "assets/icons/info.svg", title: "help"),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final String imageSvg, title;
  const MenuItem({
    Key? key,
    required this.imageSvg,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(imageSvg),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
