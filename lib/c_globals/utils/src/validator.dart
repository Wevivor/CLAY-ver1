// import '../localizations.dart';

// matching various patterns for kinds of data

class Validator {
  Map<String, String> messages = {
    'password': '8~20자이내의 영문, 숫자, 특수문자(2개 이상)의 조합으로 이루어져야합니다.',
    'name': '이름을 입력해 주세요.',
    'email': '이메일 형식이 올바르지 않습니다.',
    'phone': '휴대전화 번호 숫자만 입력해 주세요.',
    'smscode': 'sms Code 숫자만 입력해 주세요.',
  };

  String? email(String? value) {
    if (value == null || value.isEmpty) {
      return messages['email'];
    }
    Pattern pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      // return labels.validator.email;
      return messages['email'];
    else
      return null;
  }

  String? password(String? value) {
    if (value == null || value.isEmpty) {
      return messages['password'];
    }
    // Pattern pattern =
    //     r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,20}$'; //최소 8자리 ~20질; 숫자,문자 특수문자 1개이상 포함

    Pattern pattern =
        r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$&*].*[!@#$&*]).{8,20}$'; //최소 8자리 ~20질; 숫자,문자 특수문자 2개이상 포함

    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      // return labels.validator.password;
      // return value;
      return messages['password'];
    else
      return null;
  }

  // String? name(String value) {
  //   Pattern pattern = r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$";
  //   RegExp regex = new RegExp(pattern.toString());
  //   if (!regex.hasMatch(value))
  //     // return labels.validator.name;
  //     return value;
  //   else
  //     return null;
  // }
  String? name(String? value) {
    if (value == null || value.isEmpty) {
      return messages['name'];
    }
    // Pattern pattern = r'^\S+$'; //not Empty
    Pattern pattern = r'^\S{1,20}$'; //not Empty 20자 이내
    RegExp regex = new RegExp(pattern.toString());

    if (!regex.hasMatch(value))
      // return labels.validator.name;
      // return value;
      return messages['name'];
    else
      return null;
  }

  String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return messages['phone'];
    }
    Pattern pattern = r'([0][0-9]{10,11})$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      // return labels.validator.number;
      // return value;
      return messages['phone'];
    else
      return null;
  }

  String? smscode(String? value) {
    if (value == null || value.isEmpty) {
      return messages['smscode'];
    }
    Pattern pattern = r'([0-9]{6,6})$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      // return labels.validator.number;
      // return value;
      return messages['smscode'];
    else
      return null;
  }

  String? number(String value) {
    Pattern pattern = r'^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      // return labels.validator.number;
      return value;
    else
      return null;
  }

  String? amount(String value) {
    Pattern pattern = r'^\d+$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      // return labels.validator.amount;
      return value;
    else
      return null;
  }

  String? notEmpty(String value) {
    Pattern pattern = r'^\S+$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      // return labels.validator.notEmpty;
      return value;
    else
      return null;
  }
}
