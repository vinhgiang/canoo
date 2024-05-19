import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SponsorshipView extends StatelessWidget {
  const SponsorshipView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/canada.svg',
              semanticsLabel: 'Canada Logo',
            ),
            const SizedBox(height: 60),
            const Text('sponsored by'),
            const SizedBox(height: 60),
            Image.asset('assets/images/sponsors/cibc-bell.png'),
            const RefreshProgressIndicator()
          ],
        ),
      ),
    );
  }
}
