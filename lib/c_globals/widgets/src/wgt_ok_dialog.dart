import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:get/get.dart';

class DeleteDialog extends StatelessWidget {
  final title;
  final Function? okTap;
  final okTitle;
  final deleteTitle;
  final deleteTap;
  DeleteDialog({
    required this.title,
    this.okTap,
    required this.okTitle,
    this.deleteTap,
    required this.deleteTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.only(left: 20.0, right: 20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: 228,
        height: 170,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            heightSpace(32.0),
            Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: baseStyle.copyWith(
                    fontFamily:
                        Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                    fontSize: 14,
                    color: Color(0xFF353535),
                    fontWeight: Get.locale?.languageCode == 'ko'
                        ? FontWeight.w700
                        : FontWeight.w900,
                    height: Get.locale?.languageCode == 'ko'
                        ? 1.17
                        : 1.37, // 16.41px, 19.12px
                  ),
                )),
            heightSpace(24.0),
            Divider(
              thickness: 0.3,
              height: 0.0,
              color: Color(0xFFDEDEDE),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 47,
                    child: TextButton(
                      onPressed: () {
                        if (deleteTap != null) deleteTap!();
                        Get.back();
                      },
                      child: Text(
                        deleteTitle,
                        style: baseStyle.copyWith(
                          fontFamily: Get.locale?.languageCode == 'ko'
                              ? 'Roboto'
                              : 'Avenir',
                          fontSize: 13,
                          color: Color(0xFF353535),
                          fontWeight: Get.locale?.languageCode == 'ko'
                              ? FontWeight.w400
                              : FontWeight.w500,
                          height: Get.locale?.languageCode == 'ko'
                              ? 1.17
                              : 1.37, // 15.23px, 17.76px
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 0.3,
                  height: 0.0,
                  color: Color(0xFFDEDEDE),
                ),
                Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 47,
                    child: TextButton(
                      onPressed: () {
                        if (okTap != null) okTap!();
                        Get.back();
                      },
                      child: Text(
                        okTitle,
                        style: baseStyle.copyWith(
                          fontFamily: Get.locale?.languageCode == 'ko'
                              ? 'Roboto'
                              : 'Avenir',
                          fontSize: 13,
                          color: Color(0xFF353535),
                          fontWeight: Get.locale?.languageCode == 'ko'
                              ? FontWeight.w400
                              : FontWeight.w500,
                          height: Get.locale?.languageCode == 'ko'
                              ? 1.17
                              : 1.37, // 15.23px, 17.76px
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
