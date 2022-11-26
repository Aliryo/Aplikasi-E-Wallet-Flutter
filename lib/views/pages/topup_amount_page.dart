import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class TopUpAmountPage extends StatefulWidget {
  const TopUpAmountPage({Key? key}) : super(key: key);

  @override
  State<TopUpAmountPage> createState() => _PinPageState();
}

class _PinPageState extends State<TopUpAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();
    amountController.addListener(() {
      final text = amountController.text;
      amountController.value = amountController.value.copyWith(
          text: NumberFormat.currency(
        locale: 'id',
        decimalDigits: 0,
        symbol: '',
      ).format(int.parse(text.replaceAll('.', ''))));
    });
  }

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }
    if (amountController.text.length < 10) {
      setState(() {
        amountController.text = amountController.text + number;
      });

      if (amountController.text == '123123') {
        Navigator.pop(context, true);
      }
    }
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 58, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total Amount',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 67,
                ),
                Align(
                  child: TextFormField(
                    controller: amountController,
                    enabled: false,
                    style: whiteTextStyle.copyWith(
                      fontSize: 28,
                      fontWeight: medium,
                    ),
                    cursorColor: greyColor,
                    decoration: InputDecoration(
                      prefix: Text(
                        'Rp ',
                        style: whiteTextStyle.copyWith(
                          fontSize: 28,
                          fontWeight: medium,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: greyColor,
                        ),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: greyColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 66,
                ),
                Center(
                  child: Wrap(
                    spacing: 40,
                    runSpacing: 40,
                    children: [
                      NumberInput(
                        title: '1',
                        onTap: () {
                          addAmount('1');
                        },
                      ),
                      NumberInput(
                        title: '2',
                        onTap: () {
                          addAmount('2');
                        },
                      ),
                      NumberInput(
                        title: '3',
                        onTap: () {
                          addAmount('3');
                        },
                      ),
                      NumberInput(
                        title: '4',
                        onTap: () {
                          addAmount('4');
                        },
                      ),
                      NumberInput(
                        title: '5',
                        onTap: () {
                          addAmount('5');
                        },
                      ),
                      NumberInput(
                        title: '6',
                        onTap: () {
                          addAmount('6');
                        },
                      ),
                      NumberInput(
                        title: '7',
                        onTap: () {
                          addAmount('7');
                        },
                      ),
                      NumberInput(
                        title: '8',
                        onTap: () {
                          addAmount('8');
                        },
                      ),
                      NumberInput(
                        title: '9',
                        onTap: () {
                          addAmount('9');
                        },
                      ),
                      SizedBox(
                        width: 60,
                        height: 60,
                      ),
                      NumberInput(
                        title: '0',
                        onTap: () {
                          addAmount('0');
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          deleteAmount();
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: numberBackgroundColor,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: whiteColor,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                CustomButton(
                  text: 'Checkout Now',
                  onPressed: () async {
                    if (await Navigator.pushNamed(context, '/pin') == true) {
                      await launchUrl(
                        Uri(
                          scheme: 'https',
                          host: 'demo.midtrans.com',
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                      // ignore: use_build_context_synchronously
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/topup-success', (route) => false);
                    }
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                CustomTxtButton(
                  text: 'Terms & Conditions',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
