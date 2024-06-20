import 'package:canoo/providers/bottom_navigator_provider.dart';
import 'package:canoo/services/navigation_service.dart';
import 'package:canoo/views/home/home_view.dart';
import 'package:canoo/views/manual_check_in/manual_check_in_view.dart';
import 'package:canoo/views/more/more_view.dart';
import 'package:canoo/views/pre_loader/pre_loader_view.dart';
import 'package:canoo/views/widgets/bottom_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

const List<String> _cities = <String>[
  'Toronto',
  'Vancouver',
  'Calgary',
  'Montreal',
  'Ottawa',
];

class TabsView extends ConsumerStatefulWidget {
  const TabsView({super.key});

  @override
  ConsumerState<TabsView> createState() {
    return _TabsViewState();
  }
}

class _TabsViewState extends ConsumerState<TabsView> {
  int _selectedCityIndex = -1;
  int menuIndex = 0;

  List<Widget> _views = [];
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();

    _views = [
      const HomeView(),
      const PreLoaderView(),
      ManualCheckInView(),
      const Text('Favourites'),
      const MoreView(),
    ];

    _pageController = PageController(initialPage: menuIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    menuIndex = ref.watch(bottomNavigatorProvider);

    bool isAppBarVisible = menuIndex == 0 || menuIndex == 1 || menuIndex == 3;

    return PixelPerfect(
      assetPath: 'assets/design/pixel-perfect.jpg',
      scale: 3,
      child: Scaffold(
        appBar: isAppBarVisible
            ? AppBar(
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
                              color: CupertinoColors.systemBackground.resolveFrom(context),
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
                                  children: List<Widget>.generate(_cities.length, (int index) {
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
                              _selectedCityIndex >= 0 ? _cities[_selectedCityIndex] : 'my location',
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
                        InkWell(
                          onTap: () {
                            NavigationService().navigateTo('/profile');
                          },
                          child: Image.asset(
                            'assets/images/profile-picture.jpg',
                            width: 25,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            : null,
        resizeToAvoidBottomInset: false,
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: _views,
        ),
        floatingActionButton: menuIndex <= 1
            ? SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.map_outlined, size: 15),
                      SizedBox(width: 5),
                      Text('Map View'),
                    ],
                  ),
                ),
              )
            : null,
        bottomNavigationBar: BottomNavigator(pageController: _pageController),
      ),
    );
  }
}
