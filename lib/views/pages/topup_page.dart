import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/custom_item.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({Key? key}) : super(key: key);

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
          'Top Up',
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(left: 24, right: 24, top: 34, bottom: 100),
            children: [
              Text(
                'Wallet',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/img_wallet.png',
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '4214 7012 3456 1280',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Aliryo Basyori',
                        style: greyTextStyle.copyWith(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Select Bank',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              CustomItem(
                imageUrl: 'assets/img_bank_bca.png',
                item: 'BANK BCA',
                isSelected: true,
                subtitle: '50 mins',
                onTap: () {},
              ),
              CustomItem(
                imageUrl: 'assets/img_bank_bni.png',
                item: 'BANK BNI',
                subtitle: '50 mins',
                onTap: () {},
              ),
              CustomItem(
                imageUrl: 'assets/img_bank_mandiri.png',
                item: 'BANK Mandiri',
                subtitle: '50 mins',
                onTap: () {},
              ),
              CustomItem(
                imageUrl: 'assets/img_bank_ocbc.png',
                item: 'BANK OCBC',
                subtitle: '50 mins',
                onTap: () {},
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(12),
              child: CustomButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.pushNamed(context, '/topup-amount');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
