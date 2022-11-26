import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferResult extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String username;
  final bool isSelected;
  final bool isVertify;
  final VoidCallback? onTap;
  const TransferResult({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.username,
    this.isSelected = false,
    this.isVertify = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 22),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
            child: isVertify
                ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 15,
                        ),
                      ),
                    ),
                  )
                : null,
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            '@$username',
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
