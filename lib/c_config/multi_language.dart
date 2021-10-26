import 'package:get/get.dart';

class MultiLanguage extends Translations {
  //SUBJECT: 다국어.
  //TODO: SH 언어 설정.
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          // 공유과정 : 공유하기 보드 선택
          'share.bs.appbar.title.class': 'Add to..',
          'share.bs.appbar.btn.save': 'Save',
          'share.bs.body.btn.cmt': 'Write Comment',
          'share.bs.body.item.newBoard': 'New board',
          'share.bs.body.pholder.cmt': 'Write something about this item',

          // 공유과정 : 보드생성
          'share.bs.appbar.title.create': 'Create new board',
          'share.bs.appbar.btn.create': 'Create',
          'share.bs.body.subtitle.boardName': 'Title',
          'share.bs.body.subtitle.badge': 'Add a badge',
          'share.bs.body.pholder.inputTitle':
              'Give me a name like "DIY", "Recipe".',
          'share.dlg.msg.save': 'Save to CLAY',
          'share.bs.body.badge.growth': 'Growth',
          'share.bs.body.badge.work': 'Work',
          'share.bs.body.badge.like': 'LIKE',
          'share.bs.body.badge.none': 'None',

          // 메인보드 : 메인 화면
          'board.body.chip.all': 'All',

          // 메인보드 : 바텀 네비게이션바
          'board.navi.myboard': 'Boards',
          'board.navi.mycontents': 'All contents',

          // 메인보드 : 추가하기 (플러스탭) : 바텀 시트 메뉴
          'board.bs.appbar.title.addItem': 'Add items',
          'board.bs.body.menu.newBoard': 'Create new board',
          'board.bs.body.menu.webLink': 'Page links',
          'board.bs.body.menu.photo': 'Photos or videos',
          'board.bs.body.menu.memo': 'Notes',

          // 메인보드 : 추가하기 (플러스탭) : 링크로 추가하기
          'board.bs.sub.title.addLink': 'Add page link',
          // -- 'board.bs.sub.subtitle.webLink': 'Page link ', // 문서에 없음. 피그마 참조
          'board.bs.sub.pholder.webLink': 'Tap to add a page link.',
          'board.bs.sub.subtitle.comment': 'Comment',
          'board.bs.sub.pholder.comment':
              'Write something about this item', // 'share.bs.body.pholder.cmt' 중복
          'board.bs.sub.subtitle.boardChoice': 'Add to..',

          // 메인보드 : 추가하기 (플러스탭) : 사진/비디오로 추가하기
          'board.bs.sub.title.photo': 'Add photo or video',
          'board.bs.sub.pholder.photo': '|Give me a name like “DIY”, “Recipe”.',

          // 메인보드 : 추가하기 (플러스탭) : 메모로 추가하기
          'board.bs.sub.title.memo': 'Add Note',
          'board.bs.sub.pholder.memo': 'Tap to add a Note.',
          // -- 'board.bs.sub.subtitle.title': 'Title',  // 문서에 없음. 피그마 참조
          'board.bs.sub.pholder.contents':
              '|Give me a name like “DIY”, “Recipe”.',

          // 보드 콘텐츠 : 리스트
          'board.sub.appbar.subtitle.date': 'August 7th 2021',

          // 보드 콘텐츠 : share 클릭 시 보드 공유 방식 선택
          'board.sub.bs.title.share': 'Share anyone to',
          'board.sub.bs.menu.read': 'view',
          'board.sub.bs.menu.edit': 'edit',
          'board.sub.bs.menu.done': 'DONE',

          // 보드 콘텐츠 : 콘텐츠 뷰
          'board.sub.sub.pholder.cmt': 'Write something about this item',

          // 보드 콘텐츠 : 보드 옵션 설정 바텀 시트 (점메뉴)
          'board.bs.body.menu.pinOn': 'Pin a content',
          // -- 'board.bs.body.menu.pinOff': 'Unpin a content', // 문서와 피그마에 없음.
          'board.bs.body.menu.share': 'Share',
          'board.bs.body.menu.editBoard': 'Edit name and color',
          'board.bs.body.menu.delBoard': 'Delete',
          'board.bs.dlg.question.delete': 'Delete board?',
          'board.bs.dlg.answer.cancel': 'Cancel',
          // -- 'board.bs.sub.subtitle.badgeChoice': 'Add a badge', // 문서에 없음. 피그마 참조
          'board.bs.sub.subtitle.replaceColor': 'Replace Color',

          // 콘텐츠 화면 및 검색창 : 검색창
          'contents.sub.body.brtn.cancel': 'Cancel',

          // 콘텐츠 화면 및 검색창 : 내콘텐츠 점메뉴
          'contents.bs.body.menu.reminder': 'Set Reminder',
          'contents.bs.body.menu.moveBoard': 'Move to',
          'contents.bs.sub.subtitle.time': 'Time',
          'contests.bs.sub.subtitle.originalB': 'Original board',
          'contents.bs.sub.subtitle.newB': 'New board',
          'contents.bs.dlg.question.delete': 'Delete content?',

          // Account : Account 메인
          'account.body.body.subtit': 'Get started',
          'account.body.tutorials.title': 'How to share my contents',
          'account.body.subtitle.notice': 'Announcements',
          'account.body.subtitle.setting': 'Settings',
          'account.body.subtitle.help': 'Report an issue / Help',
          'account.body.btn.logout': 'Logout',

          // Account : 받은 알림 페이지
          'account.sub.notice.unOpened':
              'You have an unopened saved item:', // 뒤에 보드명이 붙는다.
          'account.sub.notice.added':
              '최예진 added 2 contents in 여름 휴가 !!', // 이름과 보드명이 합쳐진다.

          // Account :  설정 페이지
          'account.sub.setting.title.general': 'General',
          'account.sub.setting.subtitle.dark': 'Dark theme',
          'account.sub.setting.subtitle.lang': 'Language',
          'account.sub.setting.title.notice': 'Notifications',
          'account.sub.setting.subtitle.activity': 'More Activity about you',
          'account.sub.setting.subtitle.summary':
              'Reminders, Posts added to your board, Suggestions',
          'account.sub.setting.subtitle.reminder': 'Manage Reminder',

          // Account : 리마인드 알림 관리
          'account.setting.reminder.title.reminder': 'Customize notice',
          'account.setting.reminder.custom.text': 'Be sure to check! Su-min!',
          'account.setting.reminder.custom.subtext': 'Preview',
          'account.setting.reminder.title.list': 'List',
          // -- 'account.setting.reminder.dlg.question': 'Delete Alarm?', // 문서와 피그마 모두 없음.
          // -- 'account.setting.reminder.btn.save': 'save', // 문서에 없음. 피그마 참조.
        },
        'ko': {
          // 공유과정 : 공유하기 보드 선택
          'share.bs.appbar.title.class': '바로 분류하기',
          'share.bs.appbar.btn.save': '완료',
          'share.bs.body.btn.cmt': '코멘트 입력하기',
          'share.bs.body.item.newBoard': '새로운 보드',
          'share.bs.body.pholder.cmt': '콘텐츠에 남기고 싶은 말을 써주세요.',

          // 공유과정 : 보드생성
          'share.bs.appbar.title.create': '보드 만들기',
          'share.bs.appbar.btn.create': '완료',
          'share.bs.body.subtitle.boardName': '보드 이름',
          'share.bs.body.subtitle.badge': '보드에 배지 달기',
          'share.bs.body.pholder.inputTitle': '“DIY”, “레시피”와 같은 제목을 추가하세요.',
          'share.dlg.msg.save': '보드에 추가 완료',
          'share.bs.body.badge.growth': '자기계발',
          'share.bs.body.badge.work': '일/공부',
          'share.bs.body.badge.like': 'LIKE',
          'share.bs.body.badge.none': '선택안함',

          // 메인보드 : 메인 화면
          'board.body.chip.all': '전체',

          // 메인보드 : 바텀 네비게이션바
          'board.navi.myboard': '보드',
          'board.navi.mycontents': '콘텐츠',

          // 메인보드 : 추가하기 (플러스탭) : 바텀 시트 메뉴
          'board.bs.appbar.title.addItem': '추가하기',
          'board.bs.body.menu.newBoard': '새 보드 - 추가하기 탭', // 피그마와 틀림
          'board.bs.body.menu.webLink': '웹 링크 - 추가하기 탭', // 피그마와 틀림
          'board.bs.body.menu.photo': '사진/비디오 - 추가하기 탭', // 피그마와 틀림
          'board.bs.body.menu.memo': '메모 - 추가하기 탭', // 피그마와 틀림

          // 메인보드 : 추가하기 (플러스탭) : 링크로 추가하기
          'board.bs.sub.title.addLink': '링크로 추가하기',
          // -- 'board.bs.sub.subtitle.webLink': '웹링크', // 문서에 없음. 피그마 참조
          'board.bs.sub.pholder.webLink': '웹링크 주소를 입력해주세요.',
          'board.bs.sub.subtitle.comment': '코멘트',
          'board.bs.sub.pholder.comment':
              '콘텐츠에 남기고 싶은 말을 써주세요.', // 'share.bs.body.pholder.cmt' 중복
          'board.bs.sub.subtitle.boardChoice': '저장할 보드 선택하기',

          // 메인보드 : 추가하기 (플러스탭) : 사진/비디오로 추가하기
          'board.bs.sub.title.photo': '사진/카메라- 바텀시트', // 문서와 피그마가 다름.
          'board.bs.sub.pholder.photo': '사진/카메라의 제목을 입력해주세요.', // 문서와 피그마가 다름.

          // 메인보드 : 추가하기 (플러스탭) : 메모로 추가하기
          'board.bs.sub.title.memo': '메모 - 메모 바텀시트', // 문서와 피그마가 다름
          'board.bs.sub.pholder.memo': '원하는 메모를 입력해주세요.',
          // -- 'board.bs.sub.subtitle.title': '제목',  // 문서에 없음. 피그마 참조
          'board.bs.sub.pholder.contents': '콘텐츠의 제목을 입력해주세요.',

          // 보드 콘텐츠 : 리스트
          'board.sub.appbar.subtitle.date':
              '날짜 형식 예시', // 한글 날짜 부분이 틀림. 2021.08.07

          // 보드 콘텐츠 : share 클릭 시 보드 공유 방식 선택
          'board.sub.bs.title.share': '공유 방식 선택',
          'board.sub.bs.menu.read': '읽기 허용',
          'board.sub.bs.menu.edit': '편집 허용',
          'board.sub.bs.menu.done': '완료',

          // 보드 콘텐츠 : 콘텐츠 뷰
          'board.sub.sub.pholder.cmt': '코멘트를 입력하세요.',

          // 보드 콘텐츠 : 보드 옵션 설정 바텀 시트 (점메뉴)
          'board.bs.body.menu.pinOn': '상단 고정',
          // -- 'board.bs.body.menu.pinOff': '상단 고정 해제', // 문서와 피그마에 없음.
          'board.bs.body.menu.share': '공유',
          'board.bs.body.menu.editBoard': '보드 정보 수정',
          'board.bs.body.menu.delBoard': '삭제',
          'board.bs.dlg.question.delete': '보드를 삭제하시겠어요?',
          'board.bs.dlg.answer.cancel': '취소',
          // -- 'board.bs.sub.subtitle.badgeChoice': '배지 선택', // 문서에 없음. 피그마 참조
          'board.bs.sub.subtitle.replaceColor': '색상 변경',

          // 콘텐츠 화면 및 검색창 : 검색창
          'contents.sub.body.brtn.cancel': '취소',

          // 콘텐츠 화면 및 검색창 : 내콘텐츠 점메뉴
          'contents.bs.body.menu.reminder':
              '리마인드 알림 관리', // 피그마에는 '알람설정'이라고 되어 있음.
          'contents.bs.body.menu.moveBoard': '보드 변경',
          'contents.bs.sub.subtitle.time': '시간 설정 ',
          'contests.bs.sub.subtitle.originalB': '기존 보드',
          'contents.bs.sub.subtitle.newB': '변경할 보드',
          'contents.bs.dlg.question.delete': '콘텐츠를 삭제하시겠어요?',

          // Account : Account 메인
          'account.body.body.subtit': '튜토리얼',
          'account.body.tutorials.title': '내 콘텐츠를 쉽게 공유하기',
          'account.body.subtitle.notice': '공지사항',
          'account.body.subtitle.setting': '설정',
          'account.body.subtitle.help': '문의하기/도움말',
          'account.body.btn.logout': '로그아웃',

          // Account : 받은 알림 페이지
          'account.sub.notice.unOpened':
              '저장한 후 아직 열지 않은 항목이 있습니다:', // 뒤에 보드명이 붙는다.
          'account.sub.notice.added':
              '최예진님이 여름 휴가!!에 콘텐츠 3개를 추가했습니다.', // 이름과 보드명이 합쳐진다.

          // Account :  설정 페이지
          'account.sub.setting.title.general': '일반',
          'account.sub.setting.subtitle.dark': '어두운 테마',
          'account.sub.setting.subtitle.lang': '언어 설정',
          'account.sub.setting.title.notice': '알림',
          'account.sub.setting.subtitle.activity': '활동 알림',
          'account.sub.setting.subtitle.summary': '게시물 리마인드, 추가, 추천 등',
          'account.sub.setting.subtitle.reminder': '리마인드 알림 관리',

          // Account : 리마인드 알림 관리
          'account.setting.reminder.title.reminder': '알림 문구 커스텀',
          'account.setting.reminder.custom.text': '꼭 확인해! 수민!',
          'account.setting.reminder.custom.subtext': '미리보기',
          'account.setting.reminder.title.list': '설정된 알림 리스트',
          // -- 'account.setting.reminder.dlg.question': '알람을 삭제하시겠어요?', // 문서와 피그마 모두 없음.
          // -- 'account.setting.reminder.btn.save': '확인', // 문서에 없음. 피그마 참조.
        },
      };
}
