import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ManualCheckInView extends StatefulWidget {
  const ManualCheckInView({super.key});

  @override
  State<ManualCheckInView> createState() => _ManualCheckInViewState();
}

class _ManualCheckInViewState extends State<ManualCheckInView>
    with AutomaticKeepAliveClientMixin<ManualCheckInView> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(35, 170, 35, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Enter your PIN', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 20),
          Text(
            'You can ask staff at the venue for the unique 4-digit Canoo code.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 40),
          PinCodeTextField(
            appContext: context,
            length: 4,
            obscureText: false,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.underline,
              inactiveColor: Colors.grey,
              selectedColor: Colors.white,
              activeColor: Colors.white,
            ),
            keyboardType: TextInputType.number,
            enablePinAutofill: true,
            showCursor: false,
            animationType: AnimationType.fade,
            animationDuration: const Duration(milliseconds: 300),
            // controller: textEditingController,
            onCompleted: (v) {
              print("Completed");
            },
            onChanged: (value) {
              print(value);
              // setState(() {
              //   currentText = value;
              // });
            },
          ),
          const SizedBox(height: 50),
          TextButton(
            onPressed: () {},
            child: const Text('Scan QR code'),
          ),
        ],
      ),
    );
  }
}
