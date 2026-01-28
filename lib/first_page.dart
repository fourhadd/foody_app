import 'package:flutter/material.dart';
import 'package:foody/menu_page.dart';
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
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
                          child: Icon(Icons.menu, color: Color(0xff181C2E)),
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
                          GestureDetector(
                            child: Row(
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
                                Icon(Icons.arrow_drop_down_outlined, size: 30),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // SizedBox(width: 72),
                  Stack(
                    alignment: AlignmentGeometry.topRight,
                    clipBehavior: Clip.none,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xff181C2E),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: -8,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Color(0xffFF7622),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              '2',
                              style: TextStyle(
                                fontFamily: 'Sen',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
                            icon: Icon(
                              Icons.search,
                              size: 28,
                              color: Color(0xffA0A5BA),
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
                      forwardIcon(),
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
                      forwardIcon(),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 270,
                decoration: BoxDecoration(color: Colors.white),
                child: restaurants.isEmpty
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.antiAlias,
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
                                              Icon(
                                                Icons.star_border,
                                                color: Color(0xffFF7622),
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
                                              Icon(
                                                Icons.delivery_dining_outlined,
                                                color: Color(0xffFF7622),
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
                                              Icon(
                                                Icons.access_time,
                                                color: Color(0xffFF7622),
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

class forwardIcon extends StatelessWidget {
  const forwardIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Color(0xffA0A5BA),
        size: 15,
      ),
    );
  }
}
