import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Selectable extends StatelessWidget {
  final bool isSelected;
  final Widget child;

  const Selectable({
    Key? key,
    required this.isSelected,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const minScale = 1.00;
    const duration = Duration(milliseconds: 100);
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        final translate =
            isSelected ? constraints.maxWidth * (1.0 - minScale) * 0.5 : 0.0;
        return AnimatedContainer(
          duration: duration,
          curve: Curves.easeInOutCubic,
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(translate, translate)
            ..scale(isSelected ? minScale : 1.0),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: child,
              ),
              // Positioned.fill(
              //   child: AnimatedContainer(
              //     duration: duration,
              //     curve: Curves.easeInOut,
              //     color: Colors.black.withOpacity(isSelected ? 0.4 : 0),
              //   ),
              // ),
              if (isSelected)
                Positioned(
                  right: 7.17,
                  bottom: 7.17,
                  child: Container(
                      height: 14,
                      width: 14,
                      // decoration: BoxDecoration(
                      //   color: theme.accentColor,
                      //   shape: BoxShape.circle,
                      // ),
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/icon/check_grad_on.png')

                      // Icon(
                      //   Icons.check,
                      //   key: Key("checkmark"),
                      //   color: Colors.white,
                      //   size: 22,
                      // ),
                      ),
                ),
            ],
          ),
        );
      },
    );
  }
}
