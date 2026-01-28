import 'package:flutter/material.dart';
import 'package:foody/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordHide = true;
  bool repasswordHide = true;
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
                        MaterialPageRoute(builder: (context) => LoginPage()),
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

              SizedBox(height: 23),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontFamily: "Sen",
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
              ),
              SizedBox(height: 3),
              Text(
                "Please sign up to get started",
                style: TextStyle(
                  fontFamily: "Sen",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffffffff),
                ),
              ),
              SizedBox(height: 49),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  padding: EdgeInsets.only(top: 24, left: 24, right: 24),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Text(
                                "NAME",
                                style: TextStyle(
                                  fontFamily: "Sen",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff32343E),
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            Container(
                              width: 350,
                              height: 62,
                              decoration: BoxDecoration(
                                color: Color(0xffF0F5FA),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                style: TextStyle(color: Color(0xff32343E)),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 20,
                                    top: 24,
                                    bottom: 24,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "John doe",
                                  hintStyle: TextStyle(
                                    fontFamily: "Sen",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffA0A5BA),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24),
                      Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Text(
                                "EMAIL",
                                style: TextStyle(
                                  fontFamily: "Sen",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff32343E),
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            Container(
                              width: 350,
                              height: 62,
                              decoration: BoxDecoration(
                                color: Color(0xffF0F5FA),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
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
                                    fontFamily: "Sen",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffA0A5BA),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24),
                      Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Text(
                                "PASSWORD",
                                style: TextStyle(
                                  fontFamily: "Sen",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff32343E),
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            Container(
                              width: 350,
                              height: 62,
                              decoration: BoxDecoration(
                                color: Color(0xffF0F5FA),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                obscureText: passwordHide,
                                style: TextStyle(color: Color(0xff32343E)),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 20,
                                    top: 24,
                                    bottom: 24,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "**********",
                                  hintStyle: TextStyle(
                                    fontFamily: "Sen",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffA0A5BA),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        passwordHide = !passwordHide;
                                      });
                                    },

                                    icon: Icon(
                                      passwordHide
                                          ? Icons.visibility_off_outlined
                                          : Icons.remove_red_eye_rounded,
                                      color: Color(0xffB4B9CA),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24),
                      Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Text(
                                "RE-TYPE PASSWORD",
                                style: TextStyle(
                                  fontFamily: "Sen",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff32343E),
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            Container(
                              width: 350,
                              height: 62,
                              decoration: BoxDecoration(
                                color: Color(0xffF0F5FA),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                obscureText: repasswordHide,
                                style: TextStyle(color: Color(0xff32343E)),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 20,
                                    top: 24,
                                    bottom: 24,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "**********",
                                  hintStyle: TextStyle(
                                    fontFamily: "Sen",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffA0A5BA),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        repasswordHide = !repasswordHide;
                                      });
                                    },
                                    icon: Icon(
                                      repasswordHide
                                          ? Icons.visibility_off_outlined
                                          : Icons.remove_red_eye_rounded,
                                      color: Color(0xffB4B9CA),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 47),
                      Spacer(),
                      SizedBox(
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
                            "SIGN UP",
                            style: TextStyle(
                              fontFamily: 'Sen',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
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
