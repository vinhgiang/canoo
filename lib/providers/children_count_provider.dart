import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChildrenCountProvider extends StateNotifier<int> {
  ChildrenCountProvider() : super(0);

  void updateCount(int count) {
    state = count;
  }
}

final childrenCountProvider = StateNotifierProvider<ChildrenCountProvider, int>((ref) {
  return ChildrenCountProvider();
});
