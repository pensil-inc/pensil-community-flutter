import 'package:flutter/material.dart';

class PostTitle extends StatelessWidget {
  const PostTitle({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  Widget build(BuildContext context) {
    if (title == null) {
      return const SizedBox.shrink();
    }
    return Text(
      title!,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
