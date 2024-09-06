import 'package:flutter/material.dart';

class Reply extends StatelessWidget {
  const Reply({super.key, required this.replyLabel, required this.onSelected});

  final String replyLabel;
  final void Function() onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(replyLabel),
        onPressed: onSelected,
      ),
    );
  }
}
