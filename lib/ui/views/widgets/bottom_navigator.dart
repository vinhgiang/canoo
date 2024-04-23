import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() {
    return _BottomNavigatorState();
  }
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;
  final _activatedItemColor = Colors.white;
  final _inactivatedItemColor = Colors.white54;
  final _activatedBgColor = Colors.white24;
  final _inactivatedBgColor = Colors.white10;
  final _activatedTextStyle = const TextStyle(color: Colors.white);
  final _inactivatedTextStyle = const TextStyle(color: Colors.white54);

  Color _getBgColor(int index) {
    return _selectedIndex == index ? _activatedBgColor : _inactivatedBgColor;
  }

  TextStyle _getTextStyle(int index) {
    return _selectedIndex == index
        ? _activatedTextStyle
        : _inactivatedTextStyle;
  }

  Color _getItemColor(int index) {
    return _selectedIndex == index
        ? _activatedItemColor
        : _inactivatedItemColor;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            color: _getBgColor(0),
            width: double.infinity,
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.house, color: _getItemColor(0), size: 19),
                const SizedBox(height: 10),
                Text('home', style: _getTextStyle(0)),
              ],
            ),
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            color: _getBgColor(1),
            width: double.infinity,
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.locationDot,
                    color: _getItemColor(1), size: 19),
                const SizedBox(height: 10),
                Text('explore', style: _getTextStyle(1)),
              ],
            ),
          ),
          label: 'explore',
        ),
        BottomNavigationBarItem(
          icon: Container(
            color: Theme.of(context).colorScheme.primary,
            width: double.infinity,
            height: 90,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.arrowRightToBracket,
                  color: Colors.black,
                  size: 19,
                ),
                SizedBox(height: 10),
                Text(
                  'check in',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          label: 'check in',
        ),
        BottomNavigationBarItem(
          icon: Container(
            color: _getBgColor(3),
            width: double.infinity,
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.heart, color: _getItemColor(3), size: 19),
                const SizedBox(height: 10),
                Text('favourites', style: _getTextStyle(3)),
              ],
            ),
          ),
          label: 'favourites',
        ),
        BottomNavigationBarItem(
          icon: Container(
            color: _getBgColor(4),
            width: double.infinity,
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.ellipsisVertical,
                    color: _getItemColor(4), size: 19),
                const SizedBox(height: 10),
                Text('more', style: _getTextStyle(4)),
              ],
            ),
          ),
          label: 'more',
        ),
      ],
      onTap: _onItemTapped,
    );
  }
}
