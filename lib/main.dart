import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/pages/data_package_page.dart';
import 'package:bank_sha/views/pages/data_provider_page.dart';
import 'package:bank_sha/views/pages/data_success_page.dart';
import 'package:bank_sha/views/pages/home_page.dart';
import 'package:bank_sha/views/pages/onboarding_page.dart';
import 'package:bank_sha/views/pages/pin_page.dart';
import 'package:bank_sha/views/pages/profile_edit_page.dart';
import 'package:bank_sha/views/pages/profile_edit_pin.dart';
import 'package:bank_sha/views/pages/profile_page.dart';
import 'package:bank_sha/views/pages/profile_success_page.dart';
import 'package:bank_sha/views/pages/sign_in_page.dart';
import 'package:bank_sha/views/pages/sign_up_id_page.dart';
import 'package:bank_sha/views/pages/sign_up_page.dart';
import 'package:bank_sha/views/pages/sign_up_profile_page.dart';
import 'package:bank_sha/views/pages/sign_up_success_page.dart';
import 'package:bank_sha/views/pages/splash_page.dart';
import 'package:bank_sha/views/pages/topup_amount_page.dart';
import 'package:bank_sha/views/pages/topup_page.dart';
import 'package:bank_sha/views/pages/topup_success.dart';
import 'package:bank_sha/views/pages/transfer_amount_page.dart';
import 'package:bank_sha/views/pages/transfer_page.dart';
import 'package:bank_sha/views/pages/transfer_success.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/sign-up-profile': (context) => SignUpProfilePage(),
        '/sign-up-id': (context) => SignUpIdPage(),
        '/sign-up-success': (context) => SignUpSuccessPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilPage(),
        '/pin': (context) => PinPage(),
        '/profile-edit': (context) => ProfileEditPage(),
        '/profile-pin': (context) => ProfileEditPinPage(),
        '/profile-success': (context) => ProfileSuccesPage(),
        '/topup': (context) => TopUpPage(),
        '/topup-amount': (context) => TopUpAmountPage(),
        '/topup-success': (context) => TopUpSuccessPage(),
        '/transfer': (context) => TransferPage(),
        '/transfer-amount': (context) => TransferAmountPage(),
        '/transfer-success': (context) => TransferSuccessPage(),
        '/data-provider': (context) => DataProviderPage(),
        '/data-package': (context) => DataPackagePage(),
        '/data-success': (context) => DataSuccessPage(),
      },
    );
  }
}
