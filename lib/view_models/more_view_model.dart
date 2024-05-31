import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

final moreViewModelProvider = Provider((ref) => MoreViewModel());

class MoreViewModel {
  final Uri privacyPolicyUrl = Uri.parse("https://inclusion.ca/privacy-policy/");
  final Uri termsAndConditionsUrl = Uri.parse(
      "https://canoo.ca/wp-content/uploads/2023/07/ICC-Canoo-Terms-and-Conditions-00060048-3xD4A96.pdf");

  void openPrivacyPolicy() async {
    if (await canLaunchUrl(privacyPolicyUrl)) {
      await launchUrl(privacyPolicyUrl);
    } else {
      throw 'Could not launch $privacyPolicyUrl';
    }
  }

  void openTermsAndConditions() async {
    if (await canLaunchUrl(termsAndConditionsUrl)) {
      await launchUrl(termsAndConditionsUrl);
    } else {
      throw 'Could not launch $termsAndConditionsUrl';
    }
  }
}
