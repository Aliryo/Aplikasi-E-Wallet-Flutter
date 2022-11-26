import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\n Zero to Freedom',
    'Start Together',
  ];

  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                items: [
                  Image.asset(
                    'assets/img_onboarding1.png',
                    height: 331,
                  ),
                  Image.asset(
                    'assets/img_onboarding2.png',
                    height: 331,
                  ),
                  Image.asset(
                    'assets/img_onboarding3.png',
                    height: 331,
                  ),
                ],
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  height: 331,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                carouselController: carouselController,
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 24,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      titles[currentIndex],
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
                      subtitles[currentIndex],
                      textAlign: TextAlign.center,
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: currentIndex == 2 ? 38 : 50,
                    ),
                    currentIndex == 2
                        ? Column(
                            children: [
                              CustomButton(
                                text: 'Get Started',
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/sign-up', (route) => false);
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CustomTxtButton(
                                text: 'Sign In',
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/sign-in', (route) => false);
                                },
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Container(
                                width: 12,
                                height: 12,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 0
                                      ? blueColor
                                      : lightBackgroundColor,
                                ),
                              ),
                              Container(
                                width: 12,
                                height: 12,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 1
                                      ? blueColor
                                      : lightBackgroundColor,
                                ),
                              ),
                              Container(
                                width: 12,
                                height: 12,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 2
                                      ? blueColor
                                      : lightBackgroundColor,
                                ),
                              ),
                              Spacer(),
                              CustomButton(
                                text: 'Continue',
                                width: 150,
                                onPressed: () {
                                  carouselController.nextPage();
                                },
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
