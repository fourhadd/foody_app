import 'package:flutter/material.dart';
import 'package:foody/edit_address_page.dart';
import 'package:foody/first_page.dart';
import 'package:foody/login_page.dart';
import 'package:foody/personal_info_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FirstPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Color(0xffECF0F4),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xff181C2E),
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontFamily: 'Sen',
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff181C2E),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xffECF0F4),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.more_horiz_rounded,
                        color: Color(0xff181C2E),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffF8822226),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    SizedBox(width: 32),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vishal Khadok',
                          style: TextStyle(
                            fontFamily: 'Sen',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff181C2E),
                          ),
                        ),
                        Text(
                          'I love fast food',
                          style: TextStyle(
                            fontFamily: 'Sen',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA0A5BA),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 32),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffF6F8FA),
                  ),
                  child: Column(
                    children: [
                      menuTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PersonalInfoPage(),
                            ),
                          );
                        },
                        menuTitle: "Personal Info",
                        leadingIcon: Icons.person_2_outlined,
                        iconColor: Color(0xffFB6F3D),
                      ),
                      menuTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditAddressPage(),
                            ),
                          );
                        },
                        menuTitle: "Addresses",
                        leadingIcon: Icons.map_outlined,
                        iconColor: Color(0xff413DFB),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffF6F8FA),
                  ),
                  child: Column(
                    children: [
                      menuTile(
                        onTap: () {},
                        menuTitle: "Cart",
                        leadingIcon: Icons.shopping_bag_outlined,
                        iconColor: Color(0xff369BFF),
                      ),
                      menuTile(
                        onTap: () {},
                        menuTitle: "Favourite",
                        leadingIcon: Icons.favorite_border,
                        iconColor: Color(0xffB33DFB),
                      ),
                      menuTile(
                        onTap: () {},
                        menuTitle: "Notifications",
                        leadingIcon: Icons.notifications_none,
                        iconColor: Color(0xffFFAA2A),
                      ),
                      menuTile(
                        onTap: () {},
                        menuTitle: "Payment Method",
                        leadingIcon: Icons.payment_outlined,
                        iconColor: Color(0xff369BFF),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffF6F8FA),
                  ),
                  child: Column(
                    children: [
                      menuTile(
                        onTap: () {},
                        menuTitle: "FAQs",
                        leadingIcon: Icons.help_outline_outlined,
                        iconColor: Color(0xffFB6D3A),
                      ),
                      menuTile(
                        onTap: () {},
                        menuTitle: "User Reviews",
                        leadingIcon: Icons.keyboard_command_key,
                        iconColor: Color(0xff2AE1E1),
                      ),
                      menuTile(
                        onTap: () {},
                        menuTitle: "Settings",
                        leadingIcon: Icons.settings_outlined,
                        iconColor: Color(0xff413DFB),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffF6F8FA),
                  ),
                  child: Column(
                    children: [
                      menuTile(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                            (route) => false,
                          );
                        },
                        menuTitle: "Log Out",
                        leadingIcon: Icons.login,
                        iconColor: Color(0xffFB4A59),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class menuTile extends StatelessWidget {
  final String menuTitle;
  final IconData leadingIcon;
  final Color iconColor;
  final VoidCallback onTap;

  const menuTile({
    super.key,
    required this.menuTitle,
    required this.leadingIcon,
    required this.onTap,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(leadingIcon, color: iconColor),
            ),
            title: Text(
              menuTitle,
              style: TextStyle(
                fontFamily: 'Sen',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff32343E),
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xff747783),
              size: 15,
            ),
          ),
        ),
      ],
    );
  }
}
