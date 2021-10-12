import 'package:clay/controllers/common/commons.dart';
import 'package:flutter/material.dart';

class StackWithButton extends StatelessWidget {
  StackWithButton({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // final controller = LoadingController.to;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        child,
        LoadingController.to.isLoading
            ? CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey))
            : Container(),
      ],
    );
  }
}
