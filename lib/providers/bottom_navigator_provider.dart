import 'package:canoo/providers/page_controller_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigatorProvider extends StateNotifier<int> {
  final PageController pageController;

  BottomNavigatorProvider(this.pageController) : super(0);

  void updateIndex(int index) {
    state = index;
    pageController.jumpToPage(index);
  }
}

final bottomNavigatorProvider = StateNotifierProvider<BottomNavigatorProvider, int>((ref) {
  return BottomNavigatorProvider(ref.read(pageControllerProvider));
});
