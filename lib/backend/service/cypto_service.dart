import 'dart:convert';

import 'package:coin_based_app/backend/models/models.dart';
import 'package:flutter/services.dart';

Future<List<CryptoCurrency>> getCryptoData() async {
  final readData = rootBundle.loadString("lib/backend/json/crypto.json");

  final cryptoJson = await Future.delayed(
    const Duration(seconds: 5),
    () async => await readData,
  );

  final decodeJson = jsonDecode(cryptoJson) as Map;
  // debugPrint(decodeJson.entries.toString());

  final List<CryptoCurrency> currencies = decodeJson.entries.map((entry) {
    final String name = entry.key;
    final String price = entry.value['price'];
    final String image = entry.value['image'];
    final String percentageIncrease = entry.value['percentage_increase'] ?? "";
    return CryptoCurrency(
      name: name,
      price: price,
      image: image,
      percentageIncrease: percentageIncrease,
    );
  }).toList();
  return currencies;
}
