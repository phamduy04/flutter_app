import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemButton extends StatelessWidget {
  const ItemButton({
    Key? key,
    required this.MealTitle,
    required this.shareLink,
    required this.BrowsLink,
    required this.isThereBrowserlink,
  }) : super(key: key);
  final String shareLink;
  final String BrowsLink;
  final String MealTitle;
  final bool isThereBrowserlink;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isThereBrowserlink
            ? IconButton(
                onPressed: (() async {
                  final String url = BrowsLink;

                  await launch(
                    url,
                    forceSafariVC:
                        false, // false : lunching your url in another Browser of iOS
                    forceWebView:
                        false, //  false :lunching your url in another Browser of Android
                    enableJavaScript: true, // Android
                  );
                }),
                icon: const Icon(
                  Icons.language_rounded,
                  size: 25,
                ),
                color: Colors.blue,
              )
            : Container(),
        const SizedBox(
          width: 5,
        ),
        IconButton(
          onPressed: () {
            Share.share(
              'Look How to Cook this $MealTitle ? check it Now $shareLink',
            );
          },
          icon: const Icon(
            Icons.share,
            size: 25,
          ),
          color: Colors.green,
        ),
      ],
    );
  }
}
