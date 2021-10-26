import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StackWithButton extends StatelessWidget {
  final loadingId;
  StackWithButton({required this.child, this.loadingId});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoadingController>(
        id: loadingId,
        builder: (_) {
          return Stack(
            alignment: AlignmentDirectional.center,
            children: [
              child,
              LoadingController.to.isLoading
                  ? CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.grey))
                  : Container(),
            ],
          );
        });
  }
}
