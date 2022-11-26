import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:bank_sha/views/widgets/data_package.dart';
import 'package:bank_sha/views/widgets/forms.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({Key? key}) : super(key: key);

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
          'Paket Data',
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(left: 24, right: 24, top: 34, bottom: 100),
            children: [
              Text(
                'Phone Number',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              CustomFormField(
                title: '+628',
                isShowTitle: false,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Select Package',
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
                    DataPackage(
                      package: '50',
                      price: 75000,
                      isSelected: true,
                    ),
                    DataPackage(
                      package: '75',
                      price: 90000,
                    ),
                    DataPackage(
                      package: '100',
                      price: 130000,
                    ),
                    DataPackage(
                      package: '150',
                      price: 160000,
                    ),
                    DataPackage(
                      package: '200',
                      price: 200000,
                    ),
                    DataPackage(
                      package: '500',
                      price: 400000,
                    ),
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(12),
              child: CustomButton(
                text: 'Continue',
                onPressed: () async {
                  if (await Navigator.pushNamed(context, '/pin') == true) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/data-success', (route) => false);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
