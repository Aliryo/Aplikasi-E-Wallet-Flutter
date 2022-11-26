import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:bank_sha/views/widgets/forms.dart';
import 'package:bank_sha/views/widgets/transfer_item.dart';
import 'package:bank_sha/views/widgets/transfer_result.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

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
        title: Text(
          'Transfer',
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(left: 24, right: 24, top: 34, bottom: 100),
            children: [
              Text(
                'Search',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              CustomFormField(
                title: 'by username',
                isShowTitle: false,
              ),
              //buildRecentUsers(),
              buildResults(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(12),
              child: CustomButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.pushNamed(context, '/transfer-amount');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          TransferItem(
            imageUrl: 'assets/img_friend1.png',
            name: 'Yonna Jie',
            username: 'yoenna',
            isVertify: true,
          ),
          TransferItem(
            imageUrl: 'assets/img_friend3.png',
            name: 'John Hi',
            username: 'jhi',
          ),
          TransferItem(
            imageUrl: 'assets/img_friend4.png',
            name: 'Masayoshi',
            username: 'masa',
          ),
        ],
      ),
    );
  }

  Widget buildResults() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
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
              children: const [
                TransferResult(
                  imageUrl: 'assets/img_friend1.png',
                  name: 'Yonna Jie',
                  username: 'yoenna',
                  isVertify: true,
                  isSelected: true,
                ),
                TransferResult(
                  imageUrl: 'assets/img_friend2.png',
                  name: 'Yonne Ka',
                  username: 'yoenyu',
                ),
                TransferResult(
                  imageUrl: 'assets/img_friend3.png',
                  name: 'John Hi',
                  username: 'jhi',
                ),
                TransferResult(
                  imageUrl: 'assets/img_friend4.png',
                  name: 'Masayoshi',
                  username: 'masa',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
