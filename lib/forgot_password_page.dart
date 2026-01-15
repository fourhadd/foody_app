import 'package:flutter/material.dart';
import 'package:foody/login_page.dart';
import 'package:foody/verification_page.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(color: Color(0xff121223)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Align(
                  alignment: AlignmentGeometry.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    icon: Image.asset(
                      "assets/images/go_back.png",
                      width: 45,
                      height: 45,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 23),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontFamily: "Sen",
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Please sign in to your existing account",
                style: TextStyle(
                  fontFamily: 'Sen',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffffffff),
                ),
              ),
              SizedBox(height: 52),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24),

                  child: Column(
                    children: [
                      SizedBox(height: 24),
                      Align(
                        alignment: AlignmentGeometry.topLeft,
                        child: Text(
                          "EMAIL",
                          style: TextStyle(
                            fontFamily: 'Sen',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff32343E),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),

                      Container(
                        height: 62,
                        decoration: BoxDecoration(
                          color: Color(0xffF0F5FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Color(0xff32343E)),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: 20,
                              top: 24,
                              bottom: 24,
                            ),
                            border: InputBorder.none,
                            hintText: "example@gmail.com",
                            hintStyle: TextStyle(
                              fontFamily: 'Sen',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0A5BA),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: 350,
                        height: 62,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VerificationPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFF7622),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(12),
                            ),
                          ),
                          child: Text(
                            "SEND CODE",
                            style: TextStyle(
                              fontFamily: 'Sen',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
