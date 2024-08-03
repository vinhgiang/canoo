import 'package:canoo/directories/category.dart';
import 'package:flutter/material.dart';

class PlacesGrid extends StatelessWidget {
  const PlacesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      // these 2 properties are important when wrapping a GridView inside a SingleChildScrollView
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        // the aspect ratio here applies to the whole item, not only the image
        childAspectRatio: MediaQuery.of(context).size.width * 0.433 / 280,
      ),
      children: [
        for (int i = 0; i < 4; i++)
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                        'assets/images/places/heritage-park-historical-village.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(5),
                        color: Colors.green,
                        child: CategoryIcon.icons[Category.train]!,
                      ),
                    )
                  ],
                ),
              ),
              const Text('TELUS Spark Science Centre'),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.location_on_rounded),
                  const SizedBox(width: 2),
                  Text(
                    'Calgary, AB',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ],
          )
      ],
    );
  }
}
