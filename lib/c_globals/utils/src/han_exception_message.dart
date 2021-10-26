class HanExceptionMessage {
  HanExceptionMessage._();
  static Map<String, String> get keys => {
  'user-cancelled':'사용자가 취소하였습니다.',
  'userinfo-not-found': '사용자 정보가 없습니다.',
  'user-not-found': '가입되지 않은 email 주소 입니다.',
  'email-incorrect': '부정확한 메일주소입니다.',
  'email-empty': '메일주소를 입력해 주세요.',
  'pswd-empty': '비밀번호를 입력해 주세요.',
  'name-empty': '이름을 입력해 주세요.',
  'email-already-exists': '제공된 이메일을 기존 사용자가 이미 사용 중입니다. 각 사용자마다 이메일이 고유해야 합니다.',

  };
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

      case 'email-already-exists':
        return '제공된 이메일을 기존 사용자가 이미 사용 중입니다. 각 사용자마다 이메일이 고유해야 합니다.';
      // case 'name-length':
      //   return '이름을 3자 이상 입력해 주세요';
    }

    return '';
  }
}
