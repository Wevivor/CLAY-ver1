class ExceptionMessages {
  ExceptionMessages._();
  static String messages(String e_code) {
    switch (e_code) {
      case 'user-not-found':
        return '제공된 식별자에 해당하는 기존 사용자 레코드가 없습니다.';
      case 'user-cancelled':
        return '사용자가 취소하였습니다.';
      case 'uid-already-exists':
        return '제공된 uid를 기존 사용자가 이미 사용하고 있습니다. 각 사용자마다 uid가 고유해야 합니다.';

      case 'email-incorrect':
        return '부정확한 메일주소입니다.';
      case 'email-empty':
        return '메일주소를 입력해 주세요.';

      case 'wrong-password':
        return '잘못된 패스워드 입니다.';
      case 'pswd-empty':
        return '비밀번호를 입력해 주세요.';
      case 'name-empty':
        return '이름을 입력해 주세요.';
    }

    return '';
  }
}
