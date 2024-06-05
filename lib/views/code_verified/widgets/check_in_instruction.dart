import 'package:canoo/services/navigation_service.dart';
import 'package:canoo/theme/app_theme.dart';
import 'package:canoo/views/widgets/share/bullet_list.dart';
import 'package:flutter/material.dart';

class CheckInInstruction extends StatelessWidget {
  const CheckInInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: AppTheme.getSponsoredByContainerBg(),
            padding: const EdgeInsets.all(35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sponsored By',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                const SizedBox(height: 5),
                Image.asset(
                  'assets/images/sponsors/cibc-bell-color.png',
                  height: 40,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.inverseSurface,
              padding: const EdgeInsets.all(35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BulletList(
                    [
                      'Please make sure you have a valid photo ID that matches your Canoo profile.',
                      'Show the generated voucher to the venue staff.',
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: AppTheme.getPrimaryButtonLargeStyle(context),
                      onPressed: () {
                        NavigationService().navigateTo('/voucher');
                      },
                      child: const Text('Get my voucher'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
