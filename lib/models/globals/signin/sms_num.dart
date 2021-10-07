import 'package:freezed_annotation/freezed_annotation.dart';

part 'sms_num.freezed.dart';
part 'sms_num.g.dart';

@freezed
class SmsNum with _$SmsNum {
  // @Assert('(phone?.length ?? 0) > 5', '이름은 5자 이하만 입력 가능합니다.')
  @JsonSerializable(explicitToJson: true)
  factory SmsNum({
    required String phone,
    required String num,
  }) = _SmsNum;
  factory SmsNum.fromJson(Map<String, dynamic> json) => _$SmsNumFromJson(json);
  SmsNum._();
}
