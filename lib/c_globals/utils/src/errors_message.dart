class ErrorMessages {
  ErrorMessages._();
  static String messages(String e_code) {
    switch (e_code) {
      case 'user-cancelled':
        return '사용자가 취소하였습니다.';
      case 'pswd-not-match':
        return '비밀번호가 일치하지 않습니다.';
      case 'user-not-found':
        return '가입되지 않은 email 주소 입니다.';
      // case 'email-incorrect':
      //   return '이메일 형식이 올바르지 않습니다.';
      // case 'email-empty':
      //   return '메일주소를 입력해 주세요.';
      // case 'pswd-length':
      //   return '8~20자이내의 영문, 숫자, 특수문자(2개 이상)의 조합으로 이루어져야합니다.';
      // case 'pswd-empty':
      //   return '8~20자이내의 영문, 숫자, 특수문자(2개 이상)의 조합으로 이루어져야합니다.';
      // case 'name-empty':
      //   return '이름을 입력해 주세요.';
      case 'empty':
        return '내용을 입력해 주세요.';
    // case 'name-length':
      //   return '이름을 3자 이상 입력해 주세요';
    }

    return '';
  }

  ///참조사항
  static String show(String errorCode) {
    switch (errorCode) {
      case 'ERROR_EMAIL_ALREADY_IN_USE':
        return "This e-mail address is already in use, please use a different e-mail address.";

      case 'ERROR_INVALID_EMAIL':
        return "The email address is badly formatted.";

      case 'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL':
        return "The e-mail address in your Facebook account has been registered in the system before. Please login by trying other methods with this e-mail address.";

      case 'ERROR_WRONG_PASSWORD':
        return "E-mail address or password is incorrect.";

      default:
        return "An error has occurred";
    }
  }
}
