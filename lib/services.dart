import 'package:dio/dio.dart';
import 'response.dart'; // FoodItemModel, OpenRestaurants, Categories

class FoodService {
  final Dio dio = Dio();
  final String url = "https://api.npoint.io/a6b9914a947643d53b86";

  // Bütün open restaurants-ları list şəklində qaytarır
  Future<List<OpenRestaurants>> getRestaurants() async {
    final response = await dio.get(url);

    // JSON-u parse edib OpenRestaurants listini qaytarır
    return FoodItemModel.fromJson(response.data).openRestaurants ?? [];
  }

  // İstəsən üst categories-ları da ayrıca qaytara bilərsən
  Future<List<Categories>> getCategories() async {
    final response = await dio.get(url);

    return FoodItemModel.fromJson(response.data).categories ?? [];
  }
}
