import 'package:canoo/ui/views/widgets/bottom_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        leadingWidth: 100,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/images/canoo.svg',
              semanticsLabel: 'Canoo Logo',
              width: 100,
            ),
            Expanded(
              child: InkWell(
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
              ),
            ),
          ],
        ),
        actions: [
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
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Food ${index + 1}'),
          );
        },
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
