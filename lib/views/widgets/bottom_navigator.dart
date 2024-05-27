import 'package:canoo/providers/bottom_navigator_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigator extends ConsumerStatefulWidget {
  const BottomNavigator({super.key});

  @override
  ConsumerState<BottomNavigator> createState() {
    return _BottomNavigatorState();
  }
}

class _BottomNavigatorState extends ConsumerState<BottomNavigator> {
  final _activatedItemColor = Colors.white;
  final _inactivatedItemColor = Colors.white54;
  final _activatedBgColor = Colors.white24;
  final _inactivatedBgColor = Colors.white10;
  final _activatedTextStyle = const TextStyle(color: Colors.white);
  final _inactivatedTextStyle = const TextStyle(color: Colors.white54);

  @override
  void initState() {
    super.initState();
  }

  Color _getBgColor(int index) {
    return ref.watch(bottomNavigatorProvider) == index ? _activatedBgColor : _inactivatedBgColor;
  }

  TextStyle _getTextStyle(int index) {
    return ref.watch(bottomNavigatorProvider) == index
        ? _activatedTextStyle
        : _inactivatedTextStyle;
  }

  Color _getItemColor(int index) {
    return ref.watch(bottomNavigatorProvider) == index
        ? _activatedItemColor
        : _inactivatedItemColor;
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(bottomNavigatorProvider);
    return BottomNavigationBar(
      currentIndex: selectedIndex,
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
                Icon(FontAwesomeIcons.locationDot, color: _getItemColor(1), size: 19),
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
                Icon(FontAwesomeIcons.ellipsisVertical, color: _getItemColor(4), size: 19),
                const SizedBox(height: 10),
                Text('more', style: _getTextStyle(4)),
              ],
            ),
          ),
          label: 'more',
        ),
      ],
      onTap: (index) {
        ref.read(bottomNavigatorProvider.notifier).updateIndex(index);
      },
    );
  }
}
