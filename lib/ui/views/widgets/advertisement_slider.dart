import 'package:canoo/data/dummy.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:canoo/models/banner.dart' as canoo_banner;

class AdvertisementSlider extends StatelessWidget {
  const AdvertisementSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final List<canoo_banner.Banner> banners = homeBanners;

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 400.0,
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayCurve: Curves.linear,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        ),
        items: banners.map((banner) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Image.asset(banner.image),
          );
        }).toList(),
      ),
    );
  }
}
