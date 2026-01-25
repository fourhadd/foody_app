import 'package:flutter/material.dart';
import 'services.dart';
import 'response.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final FoodService service = FoodService();
  List<OpenRestaurants> restaurants = [];
  List<Categories> categories = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    categories = await service.getCategories();
    restaurants = await service.getRestaurants();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          // padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
          padding: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/menu_icon.png",
                      width: 45,
                      height: 45,
                    ),
                  ),
                  SizedBox(width: 18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deliver to",
                        style: TextStyle(
                          fontFamily: 'Sen',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFC6E2A),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Halal Lab office",
                            style: TextStyle(
                              fontFamily: 'Sen',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff676767),
                            ),
                          ),
                          SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              "assets/images/down_icon.png",
                              width: 10,
                              height: 7,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 72),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/budget_icon.png",
                      width: 45,
                      height: 49,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),

              RichText(
                text: TextSpan(
                  text: 'Hey Halal, ',
                  style: TextStyle(
                    fontFamily: 'Sen',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff676767),
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Good Afternoon!',
                      style: TextStyle(
                        fontFamily: 'Sen',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1E1D1D),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 330,
                      height: 62,
                      decoration: BoxDecoration(
                        color: Color(0xffF6F6F6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: 20,
                            top: 24,
                            bottom: 24,
                          ),
                          border: InputBorder.none,
                          hintText: "Search dishes, restaurants",
                          hintStyle: TextStyle(
                            fontFamily: 'Sen',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff676767),
                          ),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/search_icon.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Categories",
                    style: TextStyle(
                      fontFamily: 'Sen',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff32343E),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "See All",
                        style: TextStyle(
                          fontFamily: 'Sen',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff32343E),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          "assets/images/sideBack_icon.png",
                          width: 5,
                          height: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 172,
                width: MediaQuery.of(context).size.width * 1,
                child: categories.isEmpty
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          final category = categories[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 147,
                              height: 172,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      24,
                                    ),
                                    child: Image.asset(
                                      category.image ??
                                          'assets/images/food_icon.png',
                                      width: 122,
                                      height: 104,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  SizedBox(height: 5.76),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          category.title ?? "",

                                          style: TextStyle(
                                            fontFamily: 'Sen',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff32343E),
                                          ),
                                        ),
                                        SizedBox(height: 6),
                                        Row(
                                          children: [
                                            Text(
                                              "Starting",
                                              style: TextStyle(
                                                fontFamily: 'Sen',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff646982),
                                              ),
                                            ),
                                            SizedBox(width: 43),

                                            Text(
                                              "\$${category.startingPrice ?? 0}",
                                              style: TextStyle(
                                                fontFamily: 'Sen',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff32343E),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Open Restaurants",
                    style: TextStyle(
                      fontFamily: 'Sen',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff32343E),
                    ),
                  ),
                  // SizedBox(width: 43),
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: TextStyle(
                          fontFamily: 'Sen',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          "assets/images/sideBack_icon.png",
                          width: 5,
                          height: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              Container(
                width: 327,
                height: 270,
                decoration: BoxDecoration(color: Colors.white),
                child: restaurants.isEmpty
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: restaurants.length,
                        itemBuilder: (context, index) {
                          final restaurant = restaurants[index];
                          return Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              24,
                                            ),
                                            child: Image.asset(
                                              restaurant.image ??
                                                  'assets/images/food_icon.png',
                                              width: 327,
                                              height: 137,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            restaurant.name ?? "",
                                            style: TextStyle(
                                              fontFamily: 'Sen',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff32343E),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children:
                                                restaurant.tags
                                                    ?.map(
                                                      (tag) => Padding(
                                                        padding:
                                                            const EdgeInsets.only(
                                                              right: 8,
                                                            ),
                                                        child: Text(
                                                          tag + " -",
                                                          style: TextStyle(
                                                            fontFamily: 'Sen',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Color(
                                                              0xffA0A5BA,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                    .toList() ??
                                                [],
                                          ),
                                          SizedBox(height: 14),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/star_icon.png",
                                                width: 20,
                                                height: 20,
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                restaurant.rating.toString(),
                                                style: TextStyle(
                                                  fontFamily: 'Sen',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xff32343E),
                                                ),
                                              ),
                                              SizedBox(width: 24),
                                              Image.asset(
                                                "assets/images/delivery_icon.png",
                                                width: 23,
                                                height: 16,
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                restaurant.deliveryFee
                                                    .toString(),
                                                style: TextStyle(
                                                  fontFamily: 'Sen',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xff32343E),
                                                ),
                                              ),
                                              SizedBox(width: 24),
                                              Image.asset(
                                                "assets/images/clock_icon.png",
                                                width: 23,
                                                height: 16,
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                restaurant.deliveryTime
                                                    .toString(),
                                                style: TextStyle(
                                                  fontFamily: 'Sen',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xff32343E),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                        ],
                                      ),
                                      SizedBox(width: 20),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
