import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/assets/icon/pensil_image_icon.dart';
import 'package:pensil_community_flutter/src/app/theme/theme_extention.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({Key? key, required this.model}) : super(key: key);
  final Post model;

  Widget _altWidget(BuildContext context) {
    return Column(
      children: model.videos!.map((path) {
        return Container(
            // width: context.width
            // margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: context.theme.dividerColor),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                PensilImageIcon.getfiletypeIcon(null, path: path),
                height: 40,
              ).pL(16),
              title: Text(path.split("/").last),
            )).pT(8);
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (model.videoThumbnails != null && model.videoThumbnails!.isNotEmpty) {
      return Padding(
        padding: EdgeInsets.zero,
        child: Wrap(
          children: model.videoThumbnails!
              .map(
                (e) => ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  child: CachedNetworkImage(
                    imageUrl: e,
                    fit: BoxFit.fill,
                    errorWidget: (context, url, dym) => _altWidget(context),
                    placeholder: (context, url) => _imagePlaceHolder(context),
                    placeholderFadeInDuration:
                        const Duration(milliseconds: 500),
                    imageBuilder: (context, provider) =>
                        ImageBuilder(model: model, provider: provider),
                  ),
                ),
              )
              .toList(),
        ),
      );
    }
    return const SizedBox();
    // return _altWidget(context);
  }

  Container _imagePlaceHolder(BuildContext context) {
    return Container(
      width: model.videoThumbnails!.length >= 2
          ? context.width * .4
          : context.width - 32,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
      ),
    );
  }
}

class ImageBuilder extends StatelessWidget {
  const ImageBuilder({Key? key, required this.model, required this.provider})
      : super(key: key);

  final Post model;
  final ImageProvider<Object> provider;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: model.videoThumbnails!.length >= 2
          ? context.width * .4
          : context.width - 32,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image(image: (provider), fit: BoxFit.fill),
          ),
          Container(
            color: Colors.black54,
            padding: const EdgeInsets.all(12),
            child: Icon(
              Icons.play_arrow,
              size: 30,
              color: context.onPrimary,
            ),
          ).circular
        ],
      ),
    );
  }
}
