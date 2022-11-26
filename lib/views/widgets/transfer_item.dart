import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String username;
  final bool isSelected;
  final bool isVertify;
  final VoidCallback? onTap;
  const TransferItem({
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 18),
        padding: EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: Border.all(
            color: isSelected ? blueColor : whiteColor,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              margin: EdgeInsets.only(right: 14),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
            Spacer(),
            if (isVertify)
              Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 14,
                    color: greenColor,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Verified',
                    style: greenTextStyle.copyWith(
                      fontSize: 11,
                      fontWeight: medium,
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
