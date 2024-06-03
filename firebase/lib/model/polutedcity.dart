import 'dart:convert';

import 'package:flutter/foundation.dart';

class PolutedState {
  String State;
  String id;
  String Aqi;
  String image;

  PolutedState({
    required this.State,
    required this.Aqi,
    required this.id,
    required this.image,
  });

  factory PolutedState.fromJson(Map<String, dynamic> Jsone) {
    return PolutedState(
      State: Jsone['State'],
      Aqi: Jsone['aqi'],
      id: Jsone['id'],
      image: Jsone['image'],
    );
  }
}
