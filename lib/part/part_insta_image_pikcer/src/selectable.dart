import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Selectable extends StatelessWidget {
  final bool isSelected;
  final Widget child;

  Selectable({
    Key? key,
    required this.isSelected,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: isSelected
              ? DecoHelper.roundGrDeco.copyWith(
                  gradient: gradientReverse,
                  color: Color(0xFFE0E0E0),
                  border: Border(),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                )
              : null,
          alignment: Alignment.center,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Padding(
                  padding:
                      isSelected ? EdgeInsets.all(4.0) : EdgeInsets.all(0.0),
                  child: child,
                ),
              ),
              if (isSelected)
                Positioned(
                  right: 6,
                  bottom: 6,
                  child: Container(
                      height: 24,
                      width: 24,
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/icon/check_grad_on.png')),
                ),
            ],
          ),
        );
      },
    );
  }
}
