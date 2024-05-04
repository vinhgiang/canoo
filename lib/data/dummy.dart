import 'package:canoo/directories/category.dart';
import 'package:canoo/models/address.dart';
import 'package:canoo/models/banner.dart' as canoo_banner;
import 'package:canoo/models/event.dart';
import 'package:flutter/material.dart';

List<Event> onThisWeekEvents = [
  Event(
    name: 'Toronto Gone Wild: City Meets Nature at The Museums of Toronto',
    thumbnail: Image.asset('assets/images/events/toronto-gone-wild.png'),
    startDate: DateTime(2024, 4, 10),
    endDate: DateTime(2024, 8, 3),
    address: Address(
      unit: 'LL01',
      streetNumber: '401',
      streetName: 'Richmond St W',
      city: 'Toronto',
      province: 'Ontario',
      postalCode: 'M5V 3A8',
      country: 'Canada',
    ),
    category: Category.art,
  ),
  Event(
    name: 'Discounted Tickets To London Symphonia: An Elegant Fire',
    thumbnail: Image.asset('assets/images/events/7-elegant-fire-1.jpg'),
    startDate: DateTime(2024, 5, 4, 19, 30),
    address: Address(
      streetNumber: '468',
      streetName: 'Wellington St',
      city: 'London',
      province: 'Ontario',
      postalCode: 'N6A 3P8',
      country: 'Canada',
    ),
    category: Category.music,
  ),
  Event(
    name: 'Thursday Nights at the National Gallery of Canada',
    thumbnail: Image.asset('assets/images/events/thursday-nights.jpg'),
    startDate: DateTime(2023, 4, 27),
    endDate: DateTime(2025, 3, 27),
    address: Address(
      streetNumber: '380',
      streetName: 'Sussex Dr',
      city: 'Ottawa',
      province: 'Ontario',
      postalCode: 'K1N 9N4',
      country: 'Canada',
    ),
    category: Category.networking,
  ),
  Event(
    name: 'April Films @ The Film House',
    thumbnail: Image.asset('assets/images/events/apr-films.jpg'),
    startDate: DateTime(2024, 4, 01),
    endDate: DateTime(2024, 4, 30),
    address: Address(
      streetNumber: '250',
      streetName: 'St Paul St',
      city: 'St. Catharines',
      province: 'Ontario',
      postalCode: 'L2R 3M2',
      country: 'Canada',
    ),
    category: Category.film,
  ),
  Event(
    name: 'Currator-Led Tours of Toronto Gone Wild',
    thumbnail:
        Image.asset('assets/images/events/toronto_gone_wild_curator_tours.png'),
    startDate: DateTime(2024, 4, 10),
    endDate: DateTime(2024, 8, 3),
    address: Address(
      streetNumber: '401',
      streetName: 'Richmond St W',
      city: 'Toronto',
      province: 'Ontario',
      postalCode: 'M5V 3A8',
      country: 'Canada',
    ),
    category: Category.art,
  ),
];

List<canoo_banner.Banner> homeBanners = [
  canoo_banner.Banner(
    name: 'CIBC 1',
    image: 'assets/images/banners/cibc-1.png',
  ),
  canoo_banner.Banner(
    name: 'Virgin',
    image: 'assets/images/banners/virgin.png',
  ),
  canoo_banner.Banner(
    name: 'CIBC 2',
    image: 'assets/images/banners/cibc-2.png',
  ),
];
