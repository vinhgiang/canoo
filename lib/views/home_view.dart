import 'package:canoo/views/widgets/curated_for_you.dart';
import 'package:canoo/views/widgets/deals.dart';
import 'package:canoo/views/widgets/explore.dart';
import 'package:canoo/views/widgets/free_nearby.dart';
import 'package:canoo/views/widgets/greeting.dart';
import 'package:canoo/views/widgets/highlight_event.dart';
import 'package:canoo/views/widgets/share/call_to_action.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/dummy.dart';
import 'widgets/on_this_week.dart';
import 'widgets/advertisement_slider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with AutomaticKeepAliveClientMixin<HomeView> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Greeting(),
            const OnThisWeek(),
            AdvertisementSlider(banners: homeBanners),
            const Explore(),
            const FreeNearby(),
            AdvertisementSlider(banners: homeBanners2),
            const Deals(),
            const HighlightEvent(),
            const CuratedForYou(),
            const CallToAction(
              title: 'Canoo\ninto\nCanada',
              description: 'There are thousands more offers for you to discover',
            ),
          ],
        ),
      ),
    );
  }
}
