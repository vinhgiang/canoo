import 'package:canoo/providers/profile_name_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileViewModel {
  final WidgetRef ref;

  ProfileViewModel(this.ref);

  void updateName(String name) {
    ref.read(profileNameProvider.notifier).updateName(name);
  }
}
