import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:bank_sha/views/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_arrow_left,
            size: 40,
          ),
        ),
        title: Text('Edit Profile'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 34),
        children: [
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomFormField(
                  title: 'Old PIN',
                ),
                SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'New PIN',
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/profile-success', (route) => false);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
