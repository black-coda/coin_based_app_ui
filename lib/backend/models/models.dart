// ignore_for_file: public_member_api_docs, sort_constructors_first
class CryptoCurrency {
  String name;
  String price;
  String image;
  String percentageIncrease;

  CryptoCurrency(
      {required this.name,
      required this.price,
      required this.image,
      required this.percentageIncrease});

  factory CryptoCurrency.fromJson(Map<String, dynamic> json) {
    return CryptoCurrency(
      name: json['name'],
      price: json['price'],
      image: json['image'],
      percentageIncrease: json['percentage_increase'],
    );
  }

  @override
  String toString() {
    return 'CryptoCurrency(name: $name, price: $price, image: $image, percentageIncrease: $percentageIncrease)';
  }

  @override
  bool operator ==(covariant CryptoCurrency other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.price == price &&
        other.image == image &&
        other.percentageIncrease == percentageIncrease;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        price.hashCode ^
        image.hashCode ^
        percentageIncrease.hashCode;
  }
}
