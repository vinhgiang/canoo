import 'package:canoo/ui/views/widgets/share/back_arrow.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        leading: BackArrow(
          color: Theme.of(context).colorScheme.onTertiary,
        ),
      ),
      body: const Center(
        child: Text('Profile'),
      ),
    );
  }
}
