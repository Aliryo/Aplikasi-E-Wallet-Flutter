import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeUser extends StatelessWidget {
  final String imageUrl;
  final String username;
  const HomeUser({
    Key? key,
    required this.imageUrl,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            margin: EdgeInsets.only(bottom: 13),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Text(
            '@$username',
            overflow: TextOverflow.ellipsis,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
