class BannerModel {
  final int id;
  final String name;
  final String image;
  final int showingOrder;

  BannerModel({
    required this.id,
    required this.name,
    required this.image,
    required this.showingOrder,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      showingOrder: json['showing_order'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'showing_order': showingOrder,
    };
  }
}
