import 'package:canoo/views/profile/widgets/benefits_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileOverView extends StatelessWidget {
  const ProfileOverView({super.key});

  void _showBenefits(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      builder: (ctx) => const BenefitsDetail(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(35, 25, 35, 25),
      color: Theme.of(context).colorScheme.tertiary,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '100% Off',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onTertiary,
                        ),
                  ),
                  Text(
                    'unlimited visits at\npartner venues.',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onTertiary,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
              const SizedBox(width: 35),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.onTertiaryContainer,
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text(
                        'YEAR',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onTertiary.withOpacity(0.5),
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        '1',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(color: Theme.of(context).colorScheme.onTertiary),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            color: Theme.of(context).colorScheme.outline,
            height: 1,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$40.35',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onTertiary,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    'estimated savings',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onTertiary.withOpacity(0.5),
                        ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '365',
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).colorScheme.onTertiary,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        'days left',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onTertiary.withOpacity(0.5),
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 5),
                  IconButton(
                    onPressed: () {
                      _showBenefits(context);
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/arrow-right.svg',
                    ),
                    style: Theme.of(context).iconButtonTheme.style!.copyWith(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Theme.of(context).colorScheme.onTertiaryContainer,
                          ),
                        ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
