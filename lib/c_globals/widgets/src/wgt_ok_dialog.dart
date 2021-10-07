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
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          heightSpace(20.0),
          Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                title,
                style: baseStyle.copyWith(fontSize: 20, color: Colors.black45),
              )),
          heightSpace(20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    if (deleteTap != null) deleteTap!();
                    Get.back();
                  },
                  child: Text(
                    deleteTitle,
                    style:
                        baseStyle.copyWith(fontSize: 12, color: Colors.black45),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    if (okTap != null) okTap!();
                    Get.back();
                  },
                  child: Text(
                    okTitle,
                    style:
                        baseStyle.copyWith(fontSize: 12, color: Colors.black45),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
