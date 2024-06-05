import 'package:canoo/theme/app_theme.dart';
import 'package:flutter/material.dart';

class VoucherView extends StatelessWidget {
  const VoucherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // disable back button
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(35, 10, 35, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/canoo-voucher.png'),
              const SizedBox(height: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          Container(
                            color: Theme.of(context).colorScheme.tertiary,
                            padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('100%', style: AppTheme.discountPercentageTextStyle(context)),
                                Text(
                                  'off',
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                        color: Theme.of(context).colorScheme.onTertiary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/images/places/heritage-park-historical-village.jpg',
                            height: 165,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                            color: Theme.of(context).colorScheme.inverseSurface,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Heritage Park Historical Village',
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                        color: Theme.of(context).colorScheme.onInverseSurface,
                                      ),
                                ),
                                const SizedBox(height: 35),
                                Text(
                                  'Canoo Member Name',
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        color: Theme.of(context).colorScheme.secondary,
                                      ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'XUAN MAI NGO',
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                        color: Theme.of(context).colorScheme.onInverseSurface,
                                      ),
                                ),
                                const SizedBox(height: 35),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // wrap the below Text widgets with Expanded
                                    // to make them take equal size (50% in this case)
                                    Expanded(
                                      child: Text(
                                        'Adults',
                                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                              color: Theme.of(context).colorScheme.secondary,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Children',
                                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                              color: Theme.of(context).colorScheme.secondary,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // wrap the below Text widgets with Expanded
                                    // to make them take equal size (50% in this case)
                                    Expanded(
                                      child: Text(
                                        '1',
                                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                              color: Theme.of(context).colorScheme.onInverseSurface,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '0',
                                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                              color: Theme.of(context).colorScheme.onInverseSurface,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 35),
                                Text(
                                  'Check-in-on',
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        color: Theme.of(context).colorScheme.secondary,
                                      ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '23 Apr - 4:02PM',
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                        color: Theme.of(context).colorScheme.onInverseSurface,
                                      ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: AppTheme.getPrimaryButtonLargeStyle(context),
                        child: const Text(
                          'Complete my check-in',
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
