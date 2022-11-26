import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akun Berhasil\nTerdaftar',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'Grow your finance start\ntogether with us',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              text: 'Get Started',
              width: 183,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
