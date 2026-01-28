import 'package:flutter/material.dart';
import 'package:foody/menu_page.dart';
import 'package:foody/personal_info_edit_page.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                            MaterialPageRoute(builder: (context) => MenuPage()),
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
                        'Personal Info',
                        style: TextStyle(
                          fontFamily: 'Sen',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff181C2E),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PersonalInfoEditPage(),
                        ),
                      );
                    },
                    child: Text(
                      'EDIT',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffFF7622),
                        fontFamily: 'Sen',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFF7622),
                      ),
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
              SizedBox(height: 24),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffF6F8FA),
                ),
                child: Column(
                  children: [
                    personalInfo(
                      menuTitle: "Full Name",
                      subTitle: "Vishal Khadok",
                      leadingIcon: Icons.person_2_outlined,
                      iconColor: Color(0xffFB6F3D),
                    ),
                    personalInfo(
                      menuTitle: "email",
                      subTitle: "hello@halallab.co",
                      leadingIcon: Icons.email_outlined,
                      iconColor: Color(0xff413DFB),
                    ),
                    personalInfo(
                      menuTitle: "phone number",
                      subTitle: "408-841-0926",
                      leadingIcon: Icons.phone_outlined,
                      iconColor: Color(0xff369BFF),
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

class personalInfo extends StatelessWidget {
  final String menuTitle;
  final String subTitle;
  final IconData leadingIcon;
  final Color iconColor;

  const personalInfo({
    super.key,
    required this.menuTitle,
    required this.subTitle,
    required this.leadingIcon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
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
            menuTitle.toUpperCase(),
            style: TextStyle(
              fontFamily: 'Sen',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff32343E),
            ),
          ),
          subtitle: Text(
            subTitle,
            style: TextStyle(
              fontFamily: 'Sen',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff6B6E82),
            ),
          ),
        ),
      ],
    );
  }
}
