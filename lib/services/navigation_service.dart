// Singleton NavigationService
import 'package:canoo/providers/bottom_navigator_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationService {
  // When instatiating the class, the factory constructor will be called
  // and the same/static instance will be returned
  // which is the result of the _internal() private constructor

  static final NavigationService _instance = NavigationService._internal();

  // Factory constructor to control which instance is returned
  factory NavigationService() => _instance;

  // Private constructor
  NavigationService._internal();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {Object? arguments}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  void goBack() {
    navigatorKey.currentState!.pop();
  }

  void goHome(WidgetRef ref) {
    ref.read(bottomNavigatorProvider.notifier).updateIndex(0);
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
