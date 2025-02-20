import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final bool? hidden;
  const LoadingWidget({Key? key, this.hidden}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (hidden == true) {
      return Container();
    } else {
      return const Center(
        //保证控件居中效果
        child: CupertinoActivityIndicator(
          radius: 14,
          color: Colors.black38,
        ),
      );
    }
  }
}

