import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onPressed;
  const HomeItem({
    Key? key,
    required this.iconUrl,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Center(
              child: Image.asset(
                iconUrl,
                width: 26,
                height: 26,
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
