class HanExceptionMessage {
  HanExceptionMessage._();
  static String messages(String e_code) {
    switch (e_code) {
      case 'user-cancelled':
        return '사용자가 취소하였습니다.';
      case 'user-not-found':
        return '가입되지 않은 email 주소 입니다.';
      case 'email-incorrect':
        return '부정확한 메일주소입니다.';
      case 'email-empty':
        return '메일주소를 입력해 주세요.';
      case 'pswd-empty':
        return '비밀번호를 입력해 주세요.';
      case 'name-empty':
        return '이름을 입력해 주세요.';
      // case 'name-length':
      //   return '이름을 3자 이상 입력해 주세요';
    }

    return '';
  }
}
