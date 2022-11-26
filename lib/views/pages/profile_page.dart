import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:bank_sha/views/widgets/profile_menu.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

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
        title: Text('My Profile'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 34),
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
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
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Aliryo Basyori',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ProfileMenu(
                  iconUrl: 'assets/ic_edit_profile.png',
                  title: 'Edit Profile',
                  onTap: () async {
                    if (await Navigator.pushNamed(context, '/pin') == true) {
                      Navigator.pushNamed(context, '/profile-edit');
                    }
                  },
                ),
                ProfileMenu(
                  iconUrl: 'assets/ic_pin.png',
                  title: 'My Pin',
                  onTap: () async {
                    if (await Navigator.pushNamed(context, '/pin') == true) {
                      Navigator.pushNamed(context, '/profile-pin');
                    }
                  },
                ),
                ProfileMenu(
                  iconUrl: 'assets/ic_wallet.png',
                  title: 'Wallet Settings',
                  onTap: () {},
                ),
                ProfileMenu(
                  iconUrl: 'assets/ic_reward.png',
                  title: 'My Rewards',
                  onTap: () {},
                ),
                ProfileMenu(
                  iconUrl: 'assets/ic_help.png',
                  title: 'Help Center',
                  onTap: () {},
                ),
                ProfileMenu(
                  iconUrl: 'assets/ic_logout.png',
                  title: 'Logout',
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-in', (route) => false);
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          CustomTxtButton(
            text: 'Report a Problem',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
