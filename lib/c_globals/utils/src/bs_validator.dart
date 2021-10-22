// import '../localizations.dart';

// matching various patterns for kinds of data

class BSValidator {
  Map<String, String> messages = {
    'board_name': '보드이름을 입력해 주세요.',
    'web_url': '웹 링크 주소를 입력해 주세요.',
    'comment': '코멘트를 입력해 주세요.',
    'board_select': '저장할 보드를 선택해 주세요.',
    'title': '콘텐츠의 제목을 입력해 주세요.',
    'post_title': '타이틀을 입력해 주세요.',
    'photo_title': '사진/비디오의 제목을 입력해 주세요.',
    'memo': '메모를 입력해 주세요.',
  };
  String? postTitle(String? value) {
    if (value == null || value.isEmpty) {
      return messages['post_title'];
    }
    Pattern pattern = r'.{1,40}'; //not Empty 20자 이내
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      return messages['post_title'];
    else
      return null;
  }

  String? photoTitle(String? value) {
    if (value == null || value.isEmpty) {
      return messages['photo_title'];
    }
    Pattern pattern = r'^\S{1,40}$'; //not Empty 20자 이내
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      return messages['photo_title'];
    else
      return null;
  }

  String? title(String? value) {
    if (value == null || value.isEmpty) {
      return messages['title'];
    }
    Pattern pattern = r'^\S{1,}$'; //not Empty 20자 이내
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      return messages['title'];
    else
      return null;
  }

  String? boardName(String? value) {
    if (value == null || value.isEmpty) {
      return messages['board_name'];
    }
    Pattern pattern = r'^\S{1,20}$'; //not Empty 20자 이내
    RegExp regex = new RegExp(pattern.toString());

    if (!regex.hasMatch(value))
      return messages['board_name'];
    else
      return null;
  }

  String? comment(String? value) {
    if (value == null || value.isEmpty) {
      return messages['comment'];
    }
    Pattern pattern = r'^.{1,100}$'; //not Empty 20자 이내
    RegExp regex = new RegExp(pattern.toString());

    if (!regex.hasMatch(value))
      return messages['comment'];
    else
      return null;
  }

  String? memo(String? value) {
    if (value == null || value.isEmpty) {
      return messages['memo'];
    }
    Pattern pattern = r'^.{5,}$'; //not Empty 20자 이내
    RegExp regex = new RegExp(pattern.toString());

    if (!regex.hasMatch(value))
      return messages['memo'];
    else
      return null;
  }

  String? web_url(String? value) {
    if (value == null || value.isEmpty) {
      return messages['web_url'];
    }
    bool _validURL = Uri.parse(value).isAbsolute;

    if (!_validURL)
      return messages['web_url'];
    else
      return null;
  }

  String? point(String value) {
    Pattern pattern = r'^\d+$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      return value;
    else
      return null;
  }
}
