import 'package:flutter/material.dart';
import 'package:foody/menu_page.dart';

class EditAddressPage extends StatelessWidget {
  const EditAddressPage({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SafeArea(
          child: Column(
            children: [
              Row(
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
                        'My Address',
                        style: TextStyle(
                          fontFamily: 'Sen',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff181C2E),
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
                  color: Color(0xffF0F5FA),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    addressTile(
                      title: 'Home',
                      subtitle: '123 Main St, Springfield, IL 62701',
                      leadingIcon: Icons.home,
                      leadingIconColor: Color(0xff2790C3),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: Color(0xffF0F5FA),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    addressTile(
                      title: 'work',
                      subtitle:
                          '3891 Ranchview Dr. Richardson, California 62639',
                      leadingIcon: Icons.work_outline_outlined,
                      leadingIconColor: Color(0xffA03BB1),
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

class addressTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData leadingIcon;
  final Color leadingIconColor;
  const addressTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    required this.leadingIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(leadingIcon, color: leadingIconColor, size: 24),
      ),

      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontFamily: 'Sen',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff181C2E),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.mode_edit_outline_outlined,
                      color: Color(0xffFB6D3A),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.delete_outline, color: Color(0xffFB6D3A)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            subtitle,
            style: TextStyle(
              fontFamily: 'Sen',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xff6B7C93),
            ),
          ),
        ],
      ),
    );
  }
}
