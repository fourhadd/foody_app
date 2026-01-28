import 'package:flutter/material.dart';

import 'package:foody/personal_info_page.dart';

class PersonalInfoEditPage extends StatelessWidget {
  const PersonalInfoEditPage({super.key});

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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PersonalInfoPage(),
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
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: AlignmentGeometry.bottomRight,
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Color(0xffF8822226),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            width: 41,
                            height: 41,
                            decoration: BoxDecoration(
                              color: Color(0xffFF7622),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.edit_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                editField(title: "full name", hintText: "Vishal Khadok"),
                SizedBox(height: 24),
                editField(title: "email", hintText: "hello@halallab.co"),
                SizedBox(height: 24),
                editField(title: "phone number", hintText: "408-841-0926"),
                SizedBox(height: 24),
                editField(title: "bio", hintText: "I love fast food", line: 5),
                SizedBox(height: 32),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 62,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFF7622),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                        fontFamily: 'Sen',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class editField extends StatelessWidget {
  final String title;
  final String hintText;
  final int line;
  const editField({
    super.key,
    required this.title,
    required this.hintText,
    this.line = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
              fontFamily: 'Sen',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff32343E),
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              color: Color(0xffF0F5FA),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              maxLines: line,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20, top: 20),
                hintText: hintText,
                hintStyle: TextStyle(
                  fontFamily: 'Sen',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6B6E82),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
