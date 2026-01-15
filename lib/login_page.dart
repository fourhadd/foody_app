import 'package:flutter/material.dart';
import 'package:foody/sign_up_page.dart';
import 'forgot_password_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordHide = true;
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
              SizedBox(height: 118),
              Text(
                "Log In",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Sen',
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
              ),

              SizedBox(height: 4),
              Text(
                "Please sign in to your existing account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Sen',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 50),
              // Spacer(),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Align(
                                  alignment: AlignmentGeometry.topLeft,
                                  child: Text(
                                    'NAME',
                                    style: TextStyle(
                                      fontFamily: 'Sen',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                SizedBox(
                                  width: 350,
                                  height: 62,
                                  child: Container(
                                    width: 327,
                                    height: 62,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF0F5FA),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: EdgeInsets.only(
                                      left: 20,
                                      top: 20,
                                      bottom: 22,
                                    ),
                                    child: TextField(
                                      style: TextStyle(
                                        color: Color(0xff32343E),
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'example@gmail.com',
                                        hintStyle: TextStyle(
                                          fontFamily: 'Sen',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffA0A5BA),
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
                            color: Colors.white,
                            child: Column(
                              children: [
                                Align(
                                  alignment: AlignmentGeometry.topLeft,
                                  child: Text(
                                    'PASSWORD',
                                    style: TextStyle(
                                      fontFamily: 'Sen',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                SizedBox(
                                  width: 350,
                                  height: 62,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffF0F5FA),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 327,
                                    height: 62,
                                    child: TextField(
                                      obscureText: passwordHide,
                                      style: TextStyle(
                                        color: Color(0xff32343E),
                                      ),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                          left: 20,
                                          top: 24,
                                          bottom: 24,
                                        ),
                                        border: InputBorder.none,
                                        hintText: "**********",
                                        hintStyle: TextStyle(
                                          fontFamily: 'Sen',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 9.6,
                                          color: Color(0xffA0A5BA),
                                        ),
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              passwordHide = !passwordHide;
                                            });
                                          },
                                          icon: Image.asset(
                                            passwordHide
                                                ? "assets/images/eye_off.png"
                                                : "assets/images/eye_logo.png",
                                            width: 19,
                                            height: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Remember me",
                                style: TextStyle(
                                  fontFamily: 'Sen',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff7E8A97),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ForgotPasswordPage(),
                                    ),
                                  ),
                                },
                                child: Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                    fontFamily: 'Sen',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFF7622),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 31),
                          SizedBox(
                            width: 327,
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
                                "LOG IN",
                                style: TextStyle(
                                  fontFamily: 'Sen',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 38),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Don’t have an account?",
                                style: TextStyle(
                                  fontFamily: 'Sen',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff646982),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpPage(),
                                    ),
                                  ),
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontFamily: 'Sen',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffFF7622),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 27),
                          Text(
                            "Or",
                            style: TextStyle(
                              fontFamily: 'Sen',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff646982),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/facebook_logo.png",
                                width: 62,
                                height: 62,
                              ),
                              Image.asset(
                                "assets/images/twitter_logo.png",
                                width: 62,
                                height: 62,
                              ),
                              Image.asset(
                                "assets/images/apple_logo.png",
                                width: 62,
                                height: 62,
                              ),
                            ],
                          ),
                          // SizedBox(height: 32),
                          // Spacer(),
                        ],
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
