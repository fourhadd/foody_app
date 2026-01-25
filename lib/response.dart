class FoodItemModel {
  List<Categories>? categories;
  List<OpenRestaurants>? openRestaurants;

  FoodItemModel({this.categories, this.openRestaurants});

  FoodItemModel.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    if (json['open_restaurants'] != null) {
      openRestaurants = <OpenRestaurants>[];
      json['open_restaurants'].forEach((v) {
        openRestaurants!.add(new OpenRestaurants.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.openRestaurants != null) {
      data['open_restaurants'] = this.openRestaurants!
          .map((v) => v.toJson())
          .toList();
    }
    return data;
  }
}

class Categories {
  int? id;
  String? image;
  String? title;
  int? startingPrice;

  Categories({this.id, this.image, this.title, this.startingPrice});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
    startingPrice = json['starting_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['title'] = this.title;
    data['starting_price'] = this.startingPrice;
    return data;
  }
}

class OpenRestaurants {
  int? id;
  String? name;
  List<String>? tags;
  String? image;
  double? rating;
  String? deliveryFee;
  String? deliveryTime;

  OpenRestaurants({
    this.id,
    this.name,
    this.tags,
    this.image,
    this.rating,
    this.deliveryFee,
    this.deliveryTime,
  });

  OpenRestaurants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    tags = json['tags'].cast<String>();
    image = json['image'];
    rating = json['rating'];
    deliveryFee = json['delivery_fee'];
    deliveryTime = json['delivery_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['tags'] = this.tags;
    data['image'] = this.image;
    data['rating'] = this.rating;
    data['delivery_fee'] = this.deliveryFee;
    data['delivery_time'] = this.deliveryTime;
    return data;
  }
}
