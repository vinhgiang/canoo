import 'package:canoo/views/widgets/share/bullet_list.dart';
import 'package:flutter/material.dart';

class BenefitsDetail extends StatelessWidget {
  const BenefitsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.inverseSurface,
      padding: const EdgeInsets.all(35),
      height: MediaQuery.of(context).size.height * 0.73,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Here\'s what you can expect in Year 1',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
            const SizedBox(height: 20),
            Image.asset('assets/images/ziplines-in-the-classic.jpg'),
            const SizedBox(height: 20),
            const BulletList(
              [
                'Explore museums, art galleries, national parks and so much more for FREE with an umlimited number of visits.',
                'Get exclusive deals and discounts on everyday needs, like banking and internet.',
                'Bring up to four children of your own with you for free!',
              ],
            ),
          ],
        ),
      ),
    );
  }
}
