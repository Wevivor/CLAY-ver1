import 'package:get/get.dart';

class MultiLanguage extends Translations {
  //SUBJECT: 다국어.
  //TODO: SH 언어 설정.
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          // --- Common : 전체 앱 페이지에서 여러 번 사용 되는 문구 및 단어.
          'com.btn.save': 'Save',
          'com.btn.create': 'Create',
          'com.chip.badge.growth': 'Growth',
          'com.chip.badge.work': 'Work',
          'com.chip.badge.like': 'LIKE',
          'com.chip.badge.none': 'None',
          'com.navi.menu.myboard': 'Boards',
          'com.navi.mycontents': 'All contents',
          'com.bs.title.newBoard': 'Create new board',
          'com.bs.subtitle.boardName': 'Title',
          'com.bs.pholder.inputTitle': 'Give me a name like "DIY", "Recipe".',
          'com.bs.item.newBoard': 'New board',
          'com.bs.subtitle.cmt': 'Comment',
          'com.bs.pholder.cmt': 'Write something about this item.',
          'com.bs.subtitle.boardChoice': 'Add to..',
          'com.btn.delete': 'Delete',
          'com.dlg.msg.delete': 'Delete board?',
          'com.btn.cancel': 'Cancel',
          'com.bs.body.menu.pinOn': 'Pin a content',
          'com.bs.body.menu.pinOff': 'Unpin a content',
          'com.bs.body.menu.share': 'Share',
          'com.bs.body.menu.delBoard': 'Delete',

          // --- 공유과정 화면 : 공유하기 보드 선택 (바로 분류하기)
          'share.bs.appbar.title.class': 'Add to..',
          'share.bs.body.btn.cmt': 'Write Comment',
          'share.bs.body.pholder.cmt': 'Write something about this item.',
          'share.dlg.msg.save': 'Save to CLAY',

          // --- 공유과정 화면 : 보드 추가 생성
          'share.bs.body.subtitle.addBadge': 'Add a badge',

          // --- 메인보드 : 메인화면 (보드리스트)
          'board.appbar.title.logo': 'CLAY',
          'board.body.chip.all': 'All',

          // --- 메인보드 : 추가하기 탭 (플러스 탭), 메인바텀시트 메뉴
          'board.bs.appbar.title.addItem': 'Add items',
          'board.bs.body.menu.newBoard': 'Create new board',
          'board.bs.body.menu.webLink': 'Page links',
          'board.bs.body.menu.photo': 'Photos or videos',
          'board.bs.body.menu.memo': 'Notes',

          // --- 메인보드 : 추가하기 탭 (플러스 탭), 새보드 생성
          'board.bs.sub.subtitle.badge': 'Add a badge',

          // --- 메인보드 : 추가하기 탭 (플러스 탭), 링크로 추가하기
          'board.bs.sub.title.addLink': 'Add page link',
          'board.bs.sub.subtitle.webLink': 'Page link ',
          'board.bs.sub.pholder.webLink': 'Tap to add a page link.',

          // --- 메인보드 : 추가하기 탭 (플러스 탭), 사진/비디오
          'board.bs.sub.title.photo': 'Add photo or video',
          'board.bs.sub.pholder.photo': '|Give me a name like “DIY”, “Recipe”.',

          // --- 메인보드 : 추가하기 탭 (플러스 탭), 메모
          'board.bs.sub.title.memo': 'Add Note',
          'board.bs.sub.pholder.memo': 'Tap to add a Note.',
          'board.bs.sub.subtitle.title': 'Title',
          'board.bs.sub.pholder.contents':
              '|Give me a name like “DIY”, “Recipe”.',

          // --- 보드 내부 콘텐츠 화면 : 리스트
          'board.sub.appbar.subtitle.date': 'August 7th 2021',

          // --- 보드 내부 콘텐츠 화면 : share 클릭시 보드 공유 방식 선택
          'board.sub.bs.title.share': 'Share anyone to',
          'board.sub.bs.menu.read': 'view',
          'board.sub.bs.menu.edit': 'edit',
          'board.sub.bs.menu.done': 'Share',

          // --- 보드 내부 콘텐츠 화면 : 각 형식별 콘텐츠 뷰
          'board.sub.sub.pholder.cmt': 'Write something about this item.',

          // --- 보드 내부 콘텐츠 화면 : 보드 옵션 설정 바텀 시트 (점메뉴 클릭)
          'board.bs.body.menu.editBoard': 'Edit name and color',
          'board.bs.sub.title.editBoard': 'Edit name and color',
          'board.bs.sub.subtitle.badgeChoice': 'Add a badge',
          'board.bs.sub.subtitle.replaceColor': 'Replace Color',
          'board.bs.sub.subtitle.share': 'Share',

          // --- 콘텐츠 화면 및 검색창 : 검색창

          // --- 콘텐츠 회면 및 검색창 : 내콘텐츠 점메뉴
          'contents.appbar.title.contents': 'All Contents',
          'contents.bs.body.menu.reminder': 'Set Reminder',
          'contents.bs.body.menu.moveBoard': 'Move to',
          'contents.bs.sub.subtitle.time': 'Time',
          'contests.bs.sub.subtitle.originalB': 'Original board',
          'contents.bs.sub.subtitle.newB': 'New board',
          'contents.bs.dlg.question.delete': 'Delete content?',

          // --- Account : 메인 화면
          'account.appbar.title.account': 'Account',
          'account.body.subtitle.tutorial': 'Get started',
          'account.body.tutorials.title': 'How to share my contents',
          'account.body.subtitle.notice': 'Announcements',
          'account.body.subtitle.setting': 'Settings',
          'account.body.subtitle.help': 'Report an issue / Help',
          'account.body.subtitle.reminder': 'Manage reminder',
          'account.body.btn.logout': 'Logout',

          // --- Account :  받은 알림 페이지
          'account.appbar.title.notice': 'Notifications',
          'account.sub.notice.unOpened':
              'You have an unopened saved item: (보드명)',
          'account.sub.notice.added': '최예진 added 2 contents in 여름 휴가 !!',

          // --- Account : 공지사항 페이지
          'account.appbar.title.announce': 'Announcements',

          // --- Account : 설정 페이지
          'account.sub.setting.title.general': 'General',
          'account.sub.setting.subtitle.dark': 'Dark Theme',
          'account.sub.setting.subtitle.lang': 'Language',
          'account.sub.setting.title.notice': 'Notifications',
          'account.sub.setting.subtitle.activity': 'More Activity about you',
          'account.sub.setting.subtitle.summary':
              'Reminders, Posts added to your board, Suggestions',
          'account.sub.setting.subtitle.reminder': 'Manage Reminder',
          'account.appbar.title.setting': 'Setting',

          // --- Account : 리마인드 알림 관리
          'account.appbar.title.reminder': 'Manage reminder',
          'account.setting.reminder.title.reminder': 'Customize notice',
          'account.setting.reminder.custom.text': 'Be sure to check! Su-min!',
          'account.setting.reminder.custom.subtext': 'Preview',
          'account.setting.reminder.title.list': 'List',
          'account.setting.reminder.dlg.question': 'Delete Alarm?',
          'account.setting.reminder.btn.save': 'save',
        },
        'ko': {
          // --- Common : 전체 앱 페이지에서 여러 번 사용 되는 문구 및 단어.
          'com.btn.save': '완료',
          'com.btn.create': '완료',
          'com.chip.badge.growth': '자기계발',
          'com.chip.badge.work': '일/공부',
          'com.chip.badge.like': 'LIKE',
          'com.chip.badge.none': '선택안함',
          'com.navi.menu.myboard': '보드',
          'com.navi.mycontents': '콘텐츠',
          'com.bs.title.newBoard': '보드 만들기',
          'com.bs.subtitle.boardName': '보드 이름',
          'com.bs.pholder.inputTitle': '|“DIY”, “레시피”와 같은 제목을 추가하세요.',
          'com.bs.item.newBoard': '새로운 보드',
          'com.bs.subtitle.cmt': '코멘트',
          'com.bs.pholder.cmt': '|콘텐츠에 남기고 싶은 말을 써주세요.',
          'com.bs.subtitle.boardChoice': '저장할 보드 선택하기',
          'com.btn.delete': '삭제',
          'com.dlg.msg.delete': '보드를 삭제하시겠어요?',
          'com.btn.cancel': '취소',
          'com.bs.body.menu.pinOn': '상단 고정',
          'com.bs.body.menu.pinOff': '상단 고정 해제',
          'com.bs.body.menu.share': '공유',
          'com.bs.body.menu.delBoard': '삭제',

          // --- 공유과정 화면 : 공유하기 보드 선택 (바로 분류하기)
          'share.bs.appbar.title.class': '바로 분류하기',
          'share.bs.body.btn.cmt': '코멘트 입력하기',
          'share.bs.body.pholder.cmt': '콘텐츠에 남기고 싶은 말을 써주세요.',
          'share.dlg.msg.save': '보드에 추가 완료',

          // --- 공유과정 화면 : 보드 추가 생성
          'share.bs.body.subtitle.addBadge': '보드에 배지 추가하기',

          // --- 메인보드 : 메인화면 (보드리스트)
          'board.appbar.title.logo': 'CLAY',
          'board.body.chip.all': '전체',

          // --- 메인보드 : 추가하기 탭 (플러스 탭), 메인바텀시트 메뉴
          'board.bs.appbar.title.addItem': '추가하기',
          'board.bs.body.menu.newBoard': '새 보드',
          'board.bs.body.menu.webLink': '웹 링크',
          'board.bs.body.menu.photo': '사진/비디오',
          'board.bs.body.menu.memo': '메모',

          // --- 메인보드 : 추가하기 탭 (플러스 탭), 새보드 생성
          'board.bs.sub.subtitle.badge': '보드에 배지 달기',

          // --- 메인보드 : 추가하기 탭 (플러스 탭), 링크로 추가하기
          'board.bs.sub.title.addLink': '링크로 추가하기',
          'board.bs.sub.subtitle.webLink': '웹 링크',
          'board.bs.sub.pholder.webLink': '|웹 링크 주소를 입력해주세요.',

          // --- 메인보드 : 추가하기 탭 (플러스 탭), 사진/비디오
          'board.bs.sub.title.photo': '사진/비디오',
          'board.bs.sub.pholder.photo': '|사진/비디오의 제목을 입력해주세요.',

          // --- 메인보드 : 추가하기 탭 (플러스 탭), 메모
          'board.bs.sub.title.memo': '메모',
          'board.bs.sub.pholder.memo': '|원하는 메모를 입력해주세요.',
          'board.bs.sub.subtitle.title': '제목',
          'board.bs.sub.pholder.contents': '|콘텐츠의 제목을 입력해주세요.',

          // --- 보드 내부 콘텐츠 화면 : 리스트
          'board.sub.appbar.subtitle.date': '2021년8월7일',

          // --- 보드 내부 콘텐츠 화면 : share 클릭시 보드 공유 방식 선택
          'board.sub.bs.title.share': '공유 방식 선택',
          'board.sub.bs.menu.read': '읽기 허용',
          'board.sub.bs.menu.edit': '편집 허용',
          'board.sub.bs.menu.done': '완료',

          // --- 보드 내부 콘텐츠 화면 : 각 형식별 콘텐츠 뷰
          'board.sub.sub.pholder.cmt': '코멘트를 입력하세요.',

          // --- 보드 내부 콘텐츠 화면 : 보드 옵션 설정 바텀 시트 (점메뉴 클릭)
          'board.bs.body.menu.editBoard': '보드 정보 수정',
          'board.bs.sub.title.editBoard': '보드 정보 수정',
          'board.bs.sub.subtitle.badgeChoice': '배지 선택',
          'board.bs.sub.subtitle.replaceColor': '색상 변경',
          'board.bs.sub.subtitle.share': '공유하기',

          // --- 콘텐츠 화면 및 검색창 : 검색창

          // --- 콘텐츠 회면 및 검색창 : 내콘텐츠 점메뉴
          'contents.appbar.title.contents': 'All Contents',
          'contents.bs.body.menu.reminder': '알람 설정',
          'contents.bs.body.menu.moveBoard': '보드 변경',
          'contents.bs.sub.subtitle.time': '시간 설정',
          'contests.bs.sub.subtitle.originalB': '기존 보드',
          'contents.bs.sub.subtitle.newB': '변경할 보드',
          'contents.bs.dlg.question.delete': '콘텐츠를 삭제하시겠어요?',

          // --- Account : 메인 화면
          'account.appbar.title.account': 'Account',
          'account.body.subtitle.tutorial': '튜토리얼',
          'account.body.tutorials.title': '내 콘텐츠를 쉽게 공유하기',
          'account.body.subtitle.notice': '공지사항',
          'account.body.subtitle.setting': '설정',
          'account.body.subtitle.help': '문의하기/도움말',
          'account.body.subtitle.reminder': '리마인드 알림 설정',
          'account.body.btn.logout': '로그아웃',

          // --- Account :  받은 알림 페이지
          'account.appbar.title.notice': '받은 알림',
          'account.sub.notice.unOpened': '저장한 후 아직 열지 않은 항목이 있습니다: (보드명)',
          'account.sub.notice.added': '최예진님이 여름 휴가!!에 콘텐츠 3개를 추가했습니다.',

          // --- Account : 공지사항 페이지
          'account.appbar.title.announce': '공지사항',

          // --- Account : 설정 페이지
          'account.sub.setting.title.general': '일반',
          'account.sub.setting.subtitle.dark': '어두운 테마',
          'account.sub.setting.subtitle.lang': '언어 설정',
          'account.sub.setting.title.notice': '알림',
          'account.sub.setting.subtitle.activity': '활동 알림',
          'account.sub.setting.subtitle.summary': '게시물 리마인드, 추가, 추천 등',
          'account.sub.setting.subtitle.reminder': '리마인드 문구 설정',
          'account.appbar.title.setting': '설정',

          // --- Account : 리마인드 알림 관리
          'account.appbar.title.reminder': '리마인드 알림 관리',
          'account.setting.reminder.title.reminder': '알림 문구 커스텀',
          'account.setting.reminder.custom.text': '꼭 확인해! 수민!',
          'account.setting.reminder.custom.subtext': '미리보기',
          'account.setting.reminder.title.list': '설정된 알림 리스트',
          'account.setting.reminder.dlg.question': '알람을 삭제하시겠어요?',
          'account.setting.reminder.btn.save': '확인',
        },
      };
}
