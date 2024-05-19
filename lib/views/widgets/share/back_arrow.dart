import 'package:canoo/services/navigation_service.dart';
import 'package:flutter/material.dart';

class BackArrow extends StatelessWidget {
  final Color? color;
  const BackArrow({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: color ?? Colors.white),
      onPressed: () {
        NavigationService().goBack();
      },
    );
  }
}
