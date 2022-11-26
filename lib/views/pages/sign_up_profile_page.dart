import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:bank_sha/views/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignUpProfilePage extends StatelessWidget {
  const SignUpProfilePage({Key? key}) : super(key: key);

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
            'Join Us to Unlock\nYour Growth',
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
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightGreyColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/img_profile.jpg',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Aliryo Basyori',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFormField(
                  title: 'Set PIN (6 digit number)',
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-up-id', (route) => false);
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
