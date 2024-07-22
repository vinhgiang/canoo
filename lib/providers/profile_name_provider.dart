import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileNameProvider extends StateNotifier<String> {
  ProfileNameProvider() : super('XUAN MAI NGO');

  void updateName(String name) {
    state = name;
  }
}

final profileNameProvider = StateNotifierProvider<ProfileNameProvider, String>((ref) {
  return ProfileNameProvider();
});
