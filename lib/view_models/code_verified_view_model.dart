import 'package:canoo/providers/children_count_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CodeVerifiedViewModel {
  final WidgetRef ref;

  CodeVerifiedViewModel(this.ref);

  void onChildrenCountChange(int count) {
    ref.read(childrenCountProvider.notifier).updateCount(count);
  }
}
