import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  final String imageUrl;
  final String item;
  final String subtitle;
  final bool isSelected;
  final VoidCallback? onTap;
  const CustomItem({
    Key? key,
    required this.imageUrl,
    required this.item,
    required this.subtitle,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: isSelected ? blueColor : whiteColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                item,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                subtitle,
                style: greyTextStyle.copyWith(fontSize: 12),
              ),
            ],
          )
        ],
      ),
    );
  }
}
