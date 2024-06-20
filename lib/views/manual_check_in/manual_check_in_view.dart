import 'package:canoo/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ManualCheckInView extends StatelessWidget {
  final TextEditingController pinCodeController = TextEditingController();

  ManualCheckInView({super.key});

  void _resetPinCode() {
    pinCodeController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 160, 40, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Enter your PIN', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 20),
          Text(
            'You can ask staff at the venue for the unique 4-digit Canoo code.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 25),
          PinCodeTextField(
            appContext: context,
            length: 4,
            obscureText: false,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.underline,
              inactiveColor: Theme.of(context).colorScheme.onBackground,
              selectedColor: Theme.of(context).colorScheme.onSurface,
              activeColor: Theme.of(context).colorScheme.onSurface,
            ),
            keyboardType: TextInputType.number,
            enablePinAutofill: true,
            showCursor: false,
            animationType: AnimationType.fade,
            animationDuration: const Duration(milliseconds: 300),
            controller: pinCodeController,
            onCompleted: (v) async {
              await NavigationService().navigateTo('/code-verified');
              // the below line will only be executed when user navigate back from /code-verified screen
              _resetPinCode();
            },
            onChanged: (value) {},
          ),
          const SizedBox(height: 40),
          TextButton(
            onPressed: () {},
            child: const Text('Scan QR code'),
          ),
        ],
      ),
    );
  }
}
