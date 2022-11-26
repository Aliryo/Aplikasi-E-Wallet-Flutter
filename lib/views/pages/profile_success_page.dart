import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ProfileSuccesPage extends StatelessWidget {
  const ProfileSuccesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update!',
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
              'Your data is safe\nwith our system',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              text: 'Back To Home',
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
