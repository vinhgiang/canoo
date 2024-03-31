import 'package:flutter/material.dart';

class PreLoaderView extends StatelessWidget {
  const PreLoaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/logo-yellow-line.png'),
              Image.asset('assets/images/welcome-banner.png'),
              const SizedBox(height: 150),
              Image.asset(
                  'assets/images/institute-for-canadian-citizenship.png'),
            ],
          ),
        ),
      ),
    );
  }
}
