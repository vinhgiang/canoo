import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigatorProvider extends StateNotifier<int> {
  BottomNavigatorProvider() : super(0);

  void updateIndex(int index) {
    state = index;
  }
}

final bottomNavigatorProvider = StateNotifierProvider<BottomNavigatorProvider, int>((ref) {
  return BottomNavigatorProvider();
});
