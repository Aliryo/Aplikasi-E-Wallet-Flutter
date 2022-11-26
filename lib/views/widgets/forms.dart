import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final bool isShowTitle;
  final TextEditingController? controller;
  const CustomFormField({
    Key? key,
    required this.title,
    this.obscureText = false,
    this.isShowTitle = true,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowTitle)
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        if (isShowTitle)
          SizedBox(
            height: 8,
          ),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          style: GoogleFonts.poppins(),
          decoration: InputDecoration(
            hintText: !isShowTitle ? title : null,
            contentPadding: EdgeInsets.all(12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
      ],
    );
  }
}
