import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('LUU CAT PHUONG NGUYEN', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              Text('Member since 22 Apr 2024', style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(height: 40),
              Text('Membership number', style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(height: 5),
              Text('2570404', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 15),
              Text('Postal code', style: Theme.of(context).textTheme.labelSmall),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('T2P 2W2', style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit, size: 25),
                    style: Theme.of(context).iconButtonTheme.style!.copyWith(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Theme.of(context).colorScheme.secondary.withOpacity(0.3),
                          ),
                        ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Text('Preferred language', style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(height: 5),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('English'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Française'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
