import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignUpIdPage extends StatelessWidget {
  const SignUpIdPage({Key? key}) : super(key: key);

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
            'Verify Your\nAccount',
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
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Passport/ID Card',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                CustomButton(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-up-success', (route) => false);
                  },
                )
              ],
            ),
          ),
          CustomTxtButton(
            text: 'Skip for Now',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/sign-up-success', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
