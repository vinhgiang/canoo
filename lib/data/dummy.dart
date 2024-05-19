import 'package:canoo/directories/category.dart';
import 'package:canoo/models/address.dart';
import 'package:canoo/models/banner.dart' as canoo_banner;
import 'package:canoo/models/event.dart';
import 'package:canoo/views/widgets/slider/slider_item.dart';
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

List<canoo_banner.Banner> homeBanners2 = [
  canoo_banner.Banner(
    name: 'Settlement Agency',
    image: 'assets/images/banners/settlement-agency.jpg',
  ),
  canoo_banner.Banner(
    name: 'Donate',
    image: 'assets/images/banners/donate.jpg',
  )
];

List<SliderItem> deals = [
  SliderItem(
    name: '50% Off at VIA Rail',
    thumbnail: Image.asset('assets/images/deals/50-off-via-rail.jpg'),
    category: Category.train,
    icon: CategoryIcon.icons[Category.train]!,
    description: '50% off Travel Valid until: 20 May \'25',
  ),
  SliderItem(
    name: 'Bow Habitat Station - Discovery Centre',
    thumbnail: Image.asset('assets/images/deals/bow-habitat.jpg'),
    category: Category.museum,
    icon: CategoryIcon.icons[Category.museum]!,
    description: '1 entry per member \nValid until: 30 Dec \'25',
  ),
  SliderItem(
    name: 'Open a new CIBC eAdvatange® Savings Account and earn more every day',
    thumbnail: Image.asset('assets/images/deals/CIBC.png'),
    category: Category.bank,
    icon: CategoryIcon.icons[Category.bank]!,
  ),
  SliderItem(
    name: '20% Discount to 1 hour and 2 hour horse trail rides',
    thumbnail: Image.asset('assets/images/deals/horse-trail-rides.jpg'),
    category: Category.outdoor,
    icon: CategoryIcon.icons[Category.outdoor]!,
  ),
  SliderItem(
    name: '\$1/Year for Online Access to National Post & 15 Other Sites',
    thumbnail: Image.asset('assets/images/deals/national-post.jpg'),
    category: Category.education,
    icon: CategoryIcon.icons[Category.education]!,
    description: 'Online Only \nValid until: 30 Dec \'25',
  ),
  SliderItem(
    name: '\$250 off Car Subscription w/ Roam',
    thumbnail: Image.asset('assets/images/deals/roam.png'),
    category: Category.subscription,
    icon: CategoryIcon.icons[Category.subscription]!,
    description: 'This Offer is valid from Sep 1st, 2023 to Aug 31st, 2024',
  ),
  SliderItem(
    name: 'Sign up for an Afforable plan from Virgin Plus!',
    thumbnail: Image.asset('assets/images/deals/virgin-offer.png'),
    category: Category.mobile,
    icon: CategoryIcon.icons[Category.mobile]!,
    description:
        'Bring your own phone to Virgin Plus and get 60GB of 4G data for only \$35 per month.\nValid until: 31 May \'25',
  ),
];
