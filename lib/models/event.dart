import 'package:canoo/directories/category.dart';
import 'package:canoo/models/address.dart';
import 'package:flutter/material.dart';

class Event {
  final String name;
  final DateTime startDate;
  final DateTime? endDate;
  final Address address;
  final Category category;
  final Image? thumbnail;

  Event({
    required this.name,
    required this.startDate,
    this.endDate,
    required this.address,
    required this.category,
    Image? thumbnail,
  }) : thumbnail = thumbnail ?? Image.asset('assets/images/events/event.jpg');
}
