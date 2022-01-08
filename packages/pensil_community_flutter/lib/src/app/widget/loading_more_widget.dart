import 'package:flutter/material.dart';

class LoadingMore extends StatelessWidget {
  const LoadingMore(
      {Key? key, required this.loading, this.size = 35, this.strokeWidth = 3})
      : super(key: key);
  final Stream<bool?> loading;
  final double? strokeWidth;
  final double size;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool?>(
      stream: loading,
      initialData: false,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        } else if (snapshot.data!) {
          return Container(
            height: size,
            width: size,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: SizedBox(
              height: size,
              width: size,
              child: CircularProgressIndicator(
                strokeWidth: strokeWidth!,
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
