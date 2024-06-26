import 'package:canoo/theme/app_theme.dart';
import 'package:canoo/view_models/code_verified_view_model.dart';
import 'package:canoo/views/code_verified/widgets/check_in_instruction.dart';
import 'package:canoo/views/widgets/share/back_arrow.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CodeVerifiedView extends ConsumerWidget {
  const CodeVerifiedView({super.key});

  void _checkin(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      builder: (ctx) => const CheckInInstruction(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final codeVerifiedViewModel = CodeVerifiedViewModel(ref);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: BackArrow(),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(40, 0, 35, 45),
              color: Theme.of(context).colorScheme.background,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Code verified successfully!',
                      style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 13),
                  Text('You are just a step away from exploring',
                      style: Theme.of(context).textTheme.labelMedium),
                  const SizedBox(height: 5),
                  Text('Heritage Park Historical Village.',
                      style: Theme.of(context).textTheme.labelMedium)
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(40, 48, 35, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How many children do you have in your party?',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomRadioButton(
                          unSelectedColor: Theme.of(context).colorScheme.onBackground,
                          margin: const EdgeInsets.all(1),
                          selectedColor: Theme.of(context).colorScheme.primary,
                          width: 60,
                          height: 60,
                          elevation: 0,
                          enableButtonWrap: true,
                          wrapAlignment: WrapAlignment.end,
                          buttonLables: const ['0', '1', '2', '3', '4'],
                          buttonValues: const ['0', '1', '2', '3', '4'],
                          buttonTextStyle: AppTheme.getRadioButtonStyle(context),
                          radioButtonValue: (value) {
                            codeVerifiedViewModel.onChildrenCountChange(int.parse(value));
                          },
                        ),
                        const SizedBox(height: 35),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () => _checkin(context),
                            child: const Text('Tap here to check in'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
