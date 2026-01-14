import 'package:flutter/material.dart';
import 'package:foody/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  final int pageCount = 3;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.60,
              child: PageView(
                controller: _pageController,
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // SizedBox(height: 114),
                      Spacer(),
                      Container(
                        width: 240,
                        height: 292,
                        child: Image.asset("assets/images/main_photo.png"),
                      ),
                      SizedBox(height: 67),
                      Text(
                        "All your favorites",
                        style: TextStyle(
                          fontFamily: 'Sen',
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff32343E),
                        ),
                      ),
                      SizedBox(height: 18),
                      Container(
                        width: 340,
                        height: 48,
                        child: Text(
                          "Get all your loved foods in one once place, you just place the orer we do the rest",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Sen',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff646982),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      // SizedBox(height: 114),
                      Spacer(),
                      Container(
                        width: 240,
                        height: 292,
                        child: Image.asset("assets/images/chef_photo.png"),
                      ),
                      SizedBox(height: 63),
                      Text(
                        "Order from choosen chef",
                        style: TextStyle(
                          fontFamily: 'Sen',
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff32343E),
                        ),
                      ),
                      SizedBox(height: 24),
                      Container(
                        width: 358,
                        height: 48,
                        child: Text(
                          "Get all your loved foods in one once place, you just place the orer we do the rest",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Sen',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff646982),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // SizedBox(height: 114),
                      Spacer(),
                      Container(
                        width: 240,
                        height: 292,
                        child: Image.asset("assets/images/delivery_photo.png"),
                      ),

                      SizedBox(height: 63),
                      Text(
                        "Free delivery offers",
                        style: TextStyle(
                          fontFamily: 'Sen',
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff32343E),
                        ),
                      ),
                      SizedBox(height: 18),
                      Container(
                        width: 357,
                        height: 48,

                        child: Text(
                          "Get all your loved foods in one once place, you just place the orer we do the rest",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Sen',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff646982),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageIndicator(isActive: currentIndex == 0),
                SizedBox(width: 12),
                PageIndicator(isActive: currentIndex == 1),
                SizedBox(width: 12),
                PageIndicator(isActive: currentIndex == 2),
              ],
            ),
            SizedBox(height: 69),
            ElevatedButton(
              onPressed: () async {
                if (currentIndex == pageCount - 1) {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('showHome', true);

                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    (route) => false,
                  );
                } else {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 150),
                    curve: Curves.easeIn,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFF7622),
                padding: EdgeInsets.symmetric(horizontal: 144, vertical: 23),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "NEXT",
                style: TextStyle(
                  fontFamily: 'Sen',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);

                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false,
                );
              },
              child: Text(
                "Skip",
                style: TextStyle(
                  fontFamily: 'Sen',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff646982),
                ),
              ),
            ),
            // SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
