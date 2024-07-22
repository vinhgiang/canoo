import 'package:canoo/providers/profile_name_provider.dart';
import 'package:canoo/view_models/profile_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileName extends ConsumerStatefulWidget {
  const ProfileName({super.key});

  @override
  ConsumerState<ProfileName> createState() => _ProfileNameState();
}

class _ProfileNameState extends ConsumerState<ProfileName> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String name = ref.watch(profileNameProvider);

    return InkWell(
      child: Text(name, style: Theme.of(context).textTheme.labelLarge),
      onLongPress: () => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('New name'),
          titleTextStyle: Theme.of(context).textTheme.labelLarge,
          content: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Enter new name',
              labelStyle: Theme.of(context).textTheme.labelSmall,
            ),
            autofocus: true,
            autocorrect: false,
          ),
          actions: [
            ElevatedButton(
              onPressed: () => {
                ProfileViewModel(ref).updateName(_nameController.text),
                Navigator.of(context).pop(),
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
