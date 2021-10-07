import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/app/apps.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HanMultiSearchWidget extends StatefulWidget {
  final double y;
  final controller;
  final title;
  final onSubmit;
  final onTap;
  final isSearch;
  final kind;
  HanMultiSearchWidget(
      {this.controller,
      this.y = 0.0,
      this.title,
      this.isSearch = true,
      this.kind = 1,
      this.onTap,
      this.onSubmit});
  @override
  _HanMultiSearchWidgetState createState() => _HanMultiSearchWidgetState();
}

class _HanMultiSearchWidgetState extends State<HanMultiSearchWidget>
    with AppbarHelper, SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  final inTextStyle = baseStyle.copyWith(
      fontSize: 14, color: Color(0xFF828282), fontWeight: FontWeight.normal);
  final hintTextStyle = baseStyle.copyWith(
      fontSize: 14, color: Color(0xFF828282), fontWeight: FontWeight.normal);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Container(
      child: Column(
        children: [
          heightSpace(widget.y),
          Container(
            width: MySize.safeWidth - 45 * 2,
            padding: const EdgeInsets.only(
              left: 14.0,
              // right: 25.0,
            ),
            decoration: BoxDecoration(
              color: Color(0xffF6F5FF),
              border: Border.all(width: 0.1, color: Colors.white),
              borderRadius: BorderRadius.all(
                  Radius.circular(14.0) //         <--- border radius here
                  ),
            ), //       <--- BoxDecoration here
            child: TextFormField(
              autofocus: false,
              controller: widget.controller,
              style: inTextStyle,
              decoration: kRegisterDecoration.copyWith(
                hintText: widget.title,
                hintStyle: hintTextStyle,
                suffixIcon: widget.isSearch
                    ? IconButton(
                        onPressed: () {
                          //TODO valid

                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                          if (widget.onSubmit != null)
                            widget.onSubmit(widget.controller.text);
                        },
                        icon: Icon(Icons.search, color: Colors.black),
                      )
                    : SizedBox.shrink(),
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
              onFieldSubmitted: (value) {
                if (widget.onSubmit != null) widget.onSubmit(value);
              },
              onEditingComplete: () => node.nextFocus(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  final _error = ErrorMessages.messages('email-empty');
                  return _error;
                }
                final validator = Validator();
                if (validator.email(value) != null) {
                  final _error = ErrorMessages.messages('email-incorrect');
                  return _error;
                }
                return null;
              },
              onSaved: (value) => widget.controller.text = value?.trim() ?? '',
            ),
          ),
          // if (widget.kind == 1 && _isExpanded) vwBlandResult(),
          // if (widget.kind == 2 && _isExpanded) vwProductResult()
        ],
      ),
    );
  }

  Widget vwBlandResult() {
    return Container(
      height: 128 + 116,
      width: MySize.safeWidth - 45 * 2,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(97, 97, 97, 0.18),
            blurRadius: 8,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: GetBuilder<ProfileListController>(builder: (controller) {
        return HanListView(
            shrinkWrap: true,
            isSliver: false,
            direction: Axis.vertical,
            controller: ProfileListController.to,
            itemBuilder: (context, idx) {
              final imgUrl = controller.cache[idx].photoURL;
              final name = controller.cache[idx].blandName;
              return ListTile(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                  widget.controller.text = name;
                  if (widget.onTap != null) widget.onTap(name);
                },
                contentPadding: EdgeInsets.only(top: 4.0, bottom: 4.0),
                leading: ImageRoundWidget(
                  height: 50,
                  width: 50,
                  imgUrl: imgUrl,
                ),
                title: Text(name,
                    style: baseStyle.copyWith(
                        fontSize: 14,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.normal)),
              );
            });
      }),
      ////  제품 리스트
    );
  }

  // Widget vwProductResult() {
  //   return Container(
  //       height: 128 + 64,
  //       width: MySize.safeWidth - 45 * 2,
  //       padding: EdgeInsets.only(left: 10.0, right: 10.0),
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         borderRadius: BorderRadius.all(
  //           Radius.circular(14),
  //         ),
  //         boxShadow: [
  //           BoxShadow(
  //             color: Color.fromRGBO(97, 97, 97, 0.18),
  //             blurRadius: 8,
  //             offset: Offset(0, 4), // changes position of shadow
  //           ),
  //         ],
  //       ),
  //       child: GetBuilder<PostProductListController>(builder: (controller) {
  //         return HanListView(
  //             shrinkWrap: true,
  //             isSliver: false,
  //             direction: Axis.vertical,
  //             controller: PostProductListController.to,
  //             itemBuilder: (context, idx) {
  //               final imgUrl = controller.cache[idx].imgUrl;
  //               // final title = controller.cache[idx].title;
  //               final title = controller.cache[idx].detail;
  //               return ListTile(
  //                 onTap: () {
  //                   setState(() {
  //                     _isExpanded = !_isExpanded;
  //                   });
  //                   widget.controller.text = title;
  //                   if (widget.onTap != null)
  //                     widget.onTap(controller.cache[idx]);
  //                 },
  //                 contentPadding: EdgeInsets.only(top: 4.0, bottom: 4.0),
  //                 leading: Container(
  //                   child: ImageRoundWidget(
  //                     height: 50,
  //                     width: 50,
  //                     imgUrl: imgUrl,
  //                   ),
  //                 ),
  //                 title: Text(title,
  //                     style: baseStyle.copyWith(
  //                         fontSize: 14,
  //                         color: Color(0xFF000000),
  //                         fontWeight: FontWeight.normal)),
  //               );
  //             });
  //       })
  //       ////  제품 리스트

  //       );
  // }
}
