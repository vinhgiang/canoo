import 'package:canoo/views/profile/widgets/profile_detail.dart';
import 'package:canoo/views/profile/widgets/profile_overview.dart';
import 'package:canoo/views/widgets/share/back_arrow.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileOverView(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ProfileDetail(),
                SafeArea(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Logout'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
