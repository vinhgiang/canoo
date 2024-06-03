import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';

class CodeVerifiedView extends StatelessWidget {
  const CodeVerifiedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 50),
              color: Theme.of(context).colorScheme.background,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Code verified successfully!',
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 20),
                  Text('You are just a step away from exploring',
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 5),
                  Text('Heritage Park Historical Village.',
                      style: Theme.of(context).textTheme.bodyLarge)
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(35, 50, 35, 0),
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
                          margin: const EdgeInsets.all(0),
                          selectedColor: Theme.of(context).colorScheme.primary,
                          width: 72,
                          height: 72,
                          elevation: 0,
                          enableButtonWrap: true,
                          wrapAlignment: WrapAlignment.end,
                          buttonLables: const ['0', '1', '2', '3', '4'],
                          buttonValues: const ['0', '1', '2', '3', '4'],
                          buttonTextStyle: ButtonTextStyle(
                            selectedColor: Theme.of(context).colorScheme.onPrimary,
                            unSelectedColor: Theme.of(context).colorScheme.secondary,
                            textStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          radioButtonValue: (value) {
                            print(value);
                          },
                        ),
                        const SizedBox(height: 50),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {},
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
