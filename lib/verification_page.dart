import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foody/forgot_password_page.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

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
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordPage(),
                        ),
                      );
                    },
                    icon: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xff5E616F),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Verification",
                style: TextStyle(
                  fontFamily: "Sen",
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
              ),
              SizedBox(height: 4),
              Text(
                "We have sent a code to your email",
                style: TextStyle(
                  fontFamily: 'Sen',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffffffff),
                ),
              ),
              Text(
                "example@gmail.com",
                style: TextStyle(
                  fontFamily: 'Sen',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
              ),
              SizedBox(height: 25),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "CODE",
                                style: TextStyle(
                                  fontFamily: 'Sen',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff32343E),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "Resend",
                                  style: TextStyle(
                                    fontFamily: 'Sen',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff32343E),
                                    decoration: TextDecoration.underline,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: " in. 50 sec",
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Sen',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Text(
                              //   " Resend in.50sec",
                              //   style: TextStyle(
                              //     fontFamily: 'Sen',
                              //     fontSize: 16,
                              //     fontWeight: FontWeight.w400,
                              //     color: Color(0xff32343E),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 62,
                              height: 62,
                              decoration: BoxDecoration(
                                color: Color(0xffF0F5FA),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 12, 49, 198),
                                  ),
                                ),
                                onChanged: (value) {
                                  if (value.isNotEmpty) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                              ),
                            ),
                            Container(
                              width: 62,
                              height: 62,
                              decoration: BoxDecoration(
                                color: Color(0xffF0F5FA),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 12, 49, 198),
                                  ),
                                ),
                                onChanged: (value) {
                                  if (value.isNotEmpty) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                              ),
                            ),
                            Container(
                              width: 62,
                              height: 62,
                              decoration: BoxDecoration(
                                color: Color(0xffF0F5FA),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 12, 49, 198),
                                  ),
                                ),
                                onChanged: (value) {
                                  if (value.isNotEmpty) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                              ),
                            ),
                            Container(
                              width: 62,
                              height: 62,
                              decoration: BoxDecoration(
                                color: Color(0xffF0F5FA),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 12, 49, 198),
                                  ),
                                ),
                                onChanged: (value) {
                                  if (value.isNotEmpty) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: 350,
                          height: 62,

                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFF7622),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(12),
                              ),
                            ),
                            child: Text(
                              " VERIFY",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
