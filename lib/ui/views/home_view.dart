import 'package:canoo/ui/views/widgets/bottom_navigator.dart';
import 'package:canoo/ui/views/widgets/curated_for_you.dart';
import 'package:canoo/ui/views/widgets/deals.dart';
import 'package:canoo/ui/views/widgets/explore.dart';
import 'package:canoo/ui/views/widgets/free_nearby.dart';
import 'package:canoo/ui/views/widgets/greeting.dart';
import 'package:canoo/ui/views/widgets/highlight_event.dart';
import 'package:canoo/ui/views/widgets/share/call_to_action.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../data/dummy.dart';
import 'widgets/on_this_week.dart';
import 'widgets/advertisement_slider.dart';

const List<String> _cities = <String>[
  'Toronto',
  'Vancouver',
  'Calgary',
  'Montreal',
  'Ottawa',
];

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedCityIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leadingWidth: 125,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Image.asset('assets/images/canoo.png'),
              InkWell(
                onTap: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => Container(
                      height: 200,
                      // Provide a background color for the popup.
                      color:
                          CupertinoColors.systemBackground.resolveFrom(context),
                      // Use a SafeArea widget to avoid system overlaps.
                      child: SafeArea(
                        top: false,
                        child: CupertinoPicker(
                          magnification: 1.22,
                          squeeze: 1.2,
                          useMagnifier: true,
                          itemExtent: 32.0,
                          // This sets the initial item.
                          scrollController: FixedExtentScrollController(
                            initialItem: 0,
                          ),
                          // This is called when selected item is changed.
                          onSelectedItemChanged: (int selectedItem) {
                            setState(() {
                              _selectedCityIndex = selectedItem;
                            });
                          },
                          children: List<Widget>.generate(_cities.length,
                              (int index) {
                            return Center(child: Text(_cities[index]));
                          }),
                        ),
                      ),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      _selectedCityIndex >= 0
                          ? _cities[_selectedCityIndex]
                          : 'my location',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        FontAwesomeIcons.chevronDown,
                        // since IconThemeData does not apply to AppBar (a known bug from Flutter)
                        // we have to manually apply here
                        // this also don't support bold
                        size: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/images/profile-picture.jpg',
                  width: 25,
                ),
              ],
            ),
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
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
                description:
                    'There are thousands more offers for you to discover',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 150,
        child: ElevatedButton(
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.map_outlined, size: 20),
              SizedBox(width: 10),
              Text('Map View'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}
