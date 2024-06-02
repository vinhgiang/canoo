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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Children under 18 must be accompanied by an adult.'),
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
