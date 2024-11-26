class MyValidators {

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email address.';
    }
    return null;
  }

  static String? validatePass(String? pass){
    if(pass == null || pass.isEmpty){
      return 'Password is required.';
    }
    if(pass.length < 6){
      return 'Password must be at least 6 characters long';
    }
    if(!pass.contains(RegExp(r'[0-9]'))){
      return 'Password must be contain at least one number';
    }
    if(!pass.contains(RegExp(r'[A-Z]'))){
      return 'Password must be contain at least one uppercase latter';
    }
    if(!pass.contains(RegExp(r'[!@#$%^&*(),.<>?":;|]'))){
      return 'Password must be contain at least one special character';
    }
    return null;
  }
  static String? validatePhoneNumber(String? number){
    if(number == null  || number.isEmpty){
      return 'Phone number is required';
    }
    final phoneRegExp = RegExp(r'^\d{10}$');
    if(!phoneRegExp.hasMatch(number)){
      return 'Invalid phone number format (10 digit required).';
    }
    return null;
  }
}
