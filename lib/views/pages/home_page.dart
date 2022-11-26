import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/home_item.dart';
import 'package:bank_sha/views/widgets/home_tips.dart';
import 'package:bank_sha/views/widgets/home_transaction.dart';
import 'package:bank_sha/views/widgets/home_user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildService(context),
          buildLatestTransactions(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: whiteColor,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_overview.png',
                width: 20,
                color: blueColor,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_history.png',
                width: 20,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_statistic.png',
                width: 20,
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_reward.png',
                width: 20,
              ),
              label: 'Reward',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Aliryo Basyori',
                maxLines: 1,
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/profile');
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/img_profile.jpg',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 15,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildWalletCard() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.all(30),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/img_bg_card.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Aliryo Basyori',
            maxLines: 1,
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Text(
            '**** **** **** 1280',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              letterSpacing: 4,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Balance',
            style: whiteTextStyle,
          ),
          Text(
            formatCurrency(15357150000),
            maxLines: 1,
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Level 99',
                  maxLines: 1,
                  style: blackTextStyle.copyWith(fontWeight: medium),
                ),
              ),
              Text(
                '76% ',
                style: greenTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'of ${formatCurrency(20000000000)}',
                maxLines: 1,
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.76,
              minHeight: 5,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightGreyColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildService(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeItem(
                iconUrl: 'assets/ic_topup.png',
                title: 'Top Up',
                onPressed: () {
                  Navigator.pushNamed(context, '/topup');
                },
              ),
              HomeItem(
                iconUrl: 'assets/ic_send.png',
                title: 'Send',
                onPressed: () {
                  Navigator.pushNamed(context, '/transfer');
                },
              ),
              HomeItem(
                iconUrl: 'assets/ic_withdraw.png',
                title: 'Withdraw',
                onPressed: () {},
              ),
              HomeItem(
                iconUrl: 'assets/ic_more.png',
                title: 'More',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => MoreDialog(),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildLatestTransactions() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transactions',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 14),
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                HomeTransaction(
                  iconUrl: 'assets/ic_transaction_cat1.png',
                  title: 'Top Up',
                  time: 'Yesterday',
                  value: '+ ${formatCurrency(450000, symbol: '')}',
                ),
                HomeTransaction(
                  iconUrl: 'assets/ic_transaction_cat2.png',
                  title: 'Cashback',
                  time: 'Sep 11',
                  value: '+ ${formatCurrency(300000)}',
                ),
                HomeTransaction(
                  iconUrl: 'assets/ic_transaction_cat3.png',
                  title: 'Withdraw',
                  time: 'Sep 2',
                  value: '- ${formatCurrency(32900000, symbol: '')}',
                ),
                HomeTransaction(
                  iconUrl: 'assets/ic_transaction_cat4.png',
                  title: 'Transfer',
                  time: 'Aug 27',
                  value: '- ${formatCurrency(2500000, symbol: '')}',
                ),
                HomeTransaction(
                  iconUrl: 'assets/ic_transaction_cat5.png',
                  title: 'Electric',
                  time: 'Feb 18',
                  value: '- ${formatCurrency(600000, symbol: '')}',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                HomeUser(
                  imageUrl: 'assets/img_friend1.png',
                  username: 'yuanita',
                ),
                HomeUser(
                  imageUrl: 'assets/img_friend2.png',
                  username: 'jani',
                ),
                HomeUser(
                  imageUrl: 'assets/img_friend3.png',
                  username: 'jhi',
                ),
                HomeUser(
                  imageUrl: 'assets/img_friend4.png',
                  username: 'masa',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Center(
            child: Wrap(
              spacing: 17,
              runSpacing: 18,
              children: [
                HomeTips(
                  imageUrl: 'assets/img_tips1.png',
                  title: 'Best tips for using a credit card',
                  url: Uri(
                    scheme: 'https',
                    host: 'bfi.co.id',
                    path:
                        'id/blog/tips-bijak-7-cara-menggunakan-kartu-kredit-dengan-baik-dan-benar',
                  ),
                ),
                HomeTips(
                  imageUrl: 'assets/img_tips2.png',
                  title: 'Spot the good pie of finance model',
                  url: Uri(
                    scheme: 'https',
                    host: 'linkedin.com',
                    path: 'pulse/passionate-financial-modelling-colin-human',
                  ),
                ),
                HomeTips(
                  imageUrl: 'assets/img_tips3.png',
                  title: 'Great hack to get better advices',
                  url: Uri(
                    scheme: 'https',
                    host: 'lifehack.org',
                    path:
                        'articles/lifestyle/100-life-hacks-that-make-life-easier.html',
                  ),
                ),
                HomeTips(
                  imageUrl: 'assets/img_tips4.png',
                  title: 'Save more penny buy this instead',
                  url: Uri(
                    scheme: 'https',
                    host: 'hasslefreesavings.com',
                    path: 'penny-challenge/',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MoreDialog extends StatelessWidget {
  const MoreDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        height: 371,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: lightBackgroundColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do More With Us',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Wrap(
                spacing: 29,
                runSpacing: 29,
                children: [
                  HomeItem(
                    iconUrl: 'assets/ic_product_data.png',
                    title: 'Data',
                    onPressed: () {
                      Navigator.pushNamed(context, '/data-provider');
                    },
                  ),
                  HomeItem(
                    iconUrl: 'assets/ic_product_water.png',
                    title: 'Water',
                    onPressed: () {},
                  ),
                  HomeItem(
                    iconUrl: 'assets/ic_product_stream.png',
                    title: 'Stream',
                    onPressed: () {},
                  ),
                  HomeItem(
                    iconUrl: 'assets/ic_product_movie.png',
                    title: 'Movie',
                    onPressed: () {},
                  ),
                  HomeItem(
                    iconUrl: 'assets/ic_product_food.png',
                    title: 'Food',
                    onPressed: () {},
                  ),
                  HomeItem(
                    iconUrl: 'assets/ic_product_travel.png',
                    title: 'Travel',
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
