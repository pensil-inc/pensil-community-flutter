import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CacheImage extends StatelessWidget {
  const CacheImage(
      {Key? key,
      this.path,
      this.onPressed,
      this.fit = BoxFit.contain,
      this.errorWidget})
      : super(key: key);
  final String? path;
  final BoxFit fit;
  final Function? onPressed;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onPressed != null) {
          onPressed!();
        } else {
          // Navigator.push(context, ImageViewer.getRoute(path!));
        }
      },
      child: CachedNetworkImage(
        imageUrl: path!,
        fit: fit,
        fadeInCurve: Curves.easeIn,
        fadeOutCurve: Curves.easeOut,
        errorWidget: (context, url, dym) {
          return errorWidget ??
              Container(
                constraints: BoxConstraints(
                  minHeight: 0,
                  maxHeight: MediaQuery.of(context).size.height,
                  minWidth: 0,
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                color: Theme.of(context).colorScheme.primary,
              );
        },
      ),
    );
  }
}
