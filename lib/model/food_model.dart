class FoodData {
  final List<String> page3;

  FoodData({required this.page3});

  factory FoodData.fromJson(Map<String, dynamic> json) {
    return FoodData(
      page3: List<String>.from(json['page3']),
    );
  }
}
