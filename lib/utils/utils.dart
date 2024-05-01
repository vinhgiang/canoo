class Utils {
  static bool isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegExp.hasMatch(email);
  }

  static String getProvinceShortForm(String province) {
    switch (province.toLowerCase()) {
      case 'alberta':
        return 'AB';
      case 'british columbia':
        return 'BC';
      case 'manitoba':
        return 'MB';
      case 'new brunswick':
        return 'NB';
      case 'newfoundland and labrador':
      case 'newfoundland & labrador':
      case 'newfoundland':
        return 'NL';
      case 'northwest territories':
        return 'NT';
      case 'nova scotia':
        return 'NS';
      case 'nunavut':
        return 'NU';
      case 'ontario':
        return 'ON';
      case 'prince edward island':
      case 'prince edward':
        return 'PE';
      case 'quebec':
      case 'québec':
        return 'QC';
      case 'saskatchewan':
        return 'SK';
      case 'yukon':
        return 'YT';
      default:
        throw Exception('Invalid province: $province');
    }
  }
}
