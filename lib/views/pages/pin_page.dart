import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({Key? key}) : super(key: key);

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });

      if (pinController.text.length == 6) {
        if (pinController.text == '123123') {
          Navigator.pop(context, true);
        } else {
          showCustomSnackbar(
            context,
            'PIN yang anda masukkan salah. Silahkan coba lagi.',
          );
          pinController.text = '';
        }
      }
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
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
            padding: EdgeInsets.symmetric(horizontal: 58),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sha PIN',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 72,
                ),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    controller: pinController,
                    enabled: false,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    obscuringCharacter: '*',
                    style: whiteTextStyle.copyWith(
                      letterSpacing: 14,
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                    cursorColor: greyColor,
                    decoration: InputDecoration(
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
                          addPin('1');
                        },
                      ),
                      NumberInput(
                        title: '2',
                        onTap: () {
                          addPin('2');
                        },
                      ),
                      NumberInput(
                        title: '3',
                        onTap: () {
                          addPin('3');
                        },
                      ),
                      NumberInput(
                        title: '4',
                        onTap: () {
                          addPin('4');
                        },
                      ),
                      NumberInput(
                        title: '5',
                        onTap: () {
                          addPin('5');
                        },
                      ),
                      NumberInput(
                        title: '6',
                        onTap: () {
                          addPin('6');
                        },
                      ),
                      NumberInput(
                        title: '7',
                        onTap: () {
                          addPin('7');
                        },
                      ),
                      NumberInput(
                        title: '8',
                        onTap: () {
                          addPin('8');
                        },
                      ),
                      NumberInput(
                        title: '9',
                        onTap: () {
                          addPin('9');
                        },
                      ),
                      SizedBox(
                        width: 60,
                        height: 60,
                      ),
                      NumberInput(
                        title: '0',
                        onTap: () {
                          addPin('0');
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          deletePin();
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
