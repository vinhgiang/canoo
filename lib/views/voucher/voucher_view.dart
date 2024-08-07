import 'package:canoo/services/navigation_service.dart';
import 'package:canoo/theme/app_theme.dart';
import 'package:canoo/view_models/voucher_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class VoucherView extends ConsumerWidget {
  const VoucherView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime now = DateTime.now();
    int numChildren = VoucherViewModel(ref).numChildren;
    String profileName = VoucherViewModel(ref).profileName;

    return Scaffold(
      appBar: AppBar(
        // disable back button
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/canoo-voucher.png'),
              const SizedBox(height: 10),
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
                            padding: const EdgeInsets.fromLTRB(23, 17, 23, 17),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('100%', style: AppTheme.discountPercentageTextStyle(context)),
                                Text(
                                  'off',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                        color: Theme.of(context).colorScheme.onTertiary,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/images/places/science-world.jpg',
                            height: 147,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            color: Theme.of(context).colorScheme.inverseSurface,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Science World',
                                  style: AppTheme.getVoucherValueStyle(context),
                                ),
                                const SizedBox(height: 25),
                                Text(
                                  'Canoo Member Name',
                                  style: AppTheme.getVoucherTitleStyle(context),
                                ),
                                Text(
                                  profileName,
                                  style: AppTheme.getVoucherValueStyle(context),
                                ),
                                const SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // wrap the below Text widgets with Expanded
                                    // to make them take equal size (50% in this case)
                                    Expanded(
                                      child: Text(
                                        'Adults',
                                        style: AppTheme.getVoucherTitleStyle(context),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Children',
                                        style: AppTheme.getVoucherTitleStyle(context),
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
                                      child:
                                          Text('1', style: AppTheme.getVoucherValueStyle(context)),
                                    ),
                                    Expanded(
                                      child: Text(numChildren.toString(),
                                          style: AppTheme.getVoucherValueStyle(context)),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'Check-in on',
                                  style: AppTheme.getVoucherTitleStyle(context),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  DateFormat("dd MMM - h:mm a").format(now),
                                  style: AppTheme.getVoucherValueStyle(context),
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
                        onPressed: () {
                          NavigationService().navigateTo('/check-in-completed');
                        },
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
