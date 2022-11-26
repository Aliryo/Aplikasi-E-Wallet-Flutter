import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:bank_sha/views/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: EdgeInsets.only(top: 76, bottom: 100),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img_logo_light.png',
                ),
              ),
            ),
          ),
          Text(
            'Sign In &\nGrow Your Finance',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 50),
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomFormField(
                  title: 'Email Address',
                ),
                SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'Sign In',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                )
              ],
            ),
          ),
          CustomTxtButton(
            text: 'Create New Account',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/sign-up', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
