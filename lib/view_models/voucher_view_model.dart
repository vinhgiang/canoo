import 'package:canoo/providers/children_count_provider.dart';
import 'package:canoo/providers/profile_name_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VoucherViewModel {
  final WidgetRef ref;

  VoucherViewModel(this.ref);

  String get profileName => ref.watch(profileNameProvider);

  int get numChildren => ref.watch(childrenCountProvider);
}
