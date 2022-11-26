import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTips extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Uri? url;
  const HomeTips({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(url!)) {
          launchUrl(
            url!,
            mode: LaunchMode.externalApplication,
          );
        }
      },
      child: Container(
        width: 170,
        height: 200,
        padding: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 110,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
