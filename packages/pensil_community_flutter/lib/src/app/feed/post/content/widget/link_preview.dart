import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/src/app/theme/theme_extention.dart';
import 'package:pensil_community_flutter/src/app/widget/link_preview/flutter_link_preview.dart';
import 'package:pensil_community_core/pensil_community_core.dart';

class LinkPreview extends StatelessWidget {
  const LinkPreview({Key? key, this.url, this.text}) : super(key: key);
  final String? url;
  final String? text;

  String? get getUrl {
    if (text == null) {
      return null;
    }
    RegExp reg = RegExp(
        r'([#])\w+| [@]\w+|(https?|ftp|file|#)://[-A-Za-z0-9+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]*');
    Iterable<Match> _matches = reg.allMatches(text!);
    if (_matches.isNotEmpty) {
      return _matches.first.group(0);
      // return 'https://vimeo.com/498010744';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var uri = url ?? getUrl;
    if (!uri.isNotNullEmpty) {
      return const SizedBox.shrink();
    } else if (uri!.split('/').last.contains('.')) {
      var last = uri.split('/').last.split('.').last;

      if (last == 'jpeg' ||
          last == 'jpg' ||
          last == 'png' ||
          last == 'gif' ||
          last == 'bmp' ||
          last == 'webp' ||
          last == 'tiff') {
        return const SizedBox.shrink();
      } else if (uri.contains('www.linkedin.com') ||
          uri.contains('/api/dyte/') ||
          uri.contains('/api/dyte/join-meeting/') ||
          uri.contains('meeting.pensil.in')) {
        return const SizedBox.shrink();
      }
    }
    // return SizedBox.shrink();
    return FlutterLinkPreview(
      url: uri,
      builder: (info) {
        if (info == null) return const SizedBox();
        if (info is WebImageInfo && info.image != null) {
          return CachedNetworkImage(
            imageUrl: info.image!,
            fit: BoxFit.contain,
          ).ripple(() {
            // Utility.launchOnWeb(url!);
          });
        }
        final webInfo = info as WebInfo;

        if (!WebAnalyzer.isNotEmpty(webInfo.title)) return const SizedBox();
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.theme.cardColor),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: <Widget>[
                if (webInfo.icon!.contains('/favicon.ico'))
                  const SizedBox.shrink()
                else ...[
                  CachedNetworkImage(
                    imageUrl: webInfo.icon ?? '',
                    errorWidget: (context, url, dym) => const SizedBox.shrink(),
                    imageBuilder: (context, imageProvider) {
                      return Image(
                        image: imageProvider,
                        fit: BoxFit.contain,
                        width: 30,
                        height: 30,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.link);
                        },
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                ],
                Expanded(
                  child: Text(
                    webInfo.title!.trim(),
                    overflow: TextOverflow.ellipsis,
                    // style: TextStyles.headline16(context)),
                  ),
                ),
              ]),
              if (WebAnalyzer.isNotEmpty(webInfo.description)) ...[
                const SizedBox(height: 4),
                Text(
                  webInfo.description!,
                  maxLines: 3,
                  // style: TextStyles.bodyText14(context),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              if (WebAnalyzer.isNotEmpty(webInfo.image)) ...[
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  // BorderRadius.vertical(bottom: Radius.circular(10)),
                  child: CachedNetworkImage(
                    imageUrl: webInfo.image!,
                    fit: BoxFit.contain,
                  ),
                )
              ]
            ],
          ),
        ).ripple(() {
          // Utility.launchOnWeb(uri);
        });
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<String?>.has('url', url));
    properties.add(ObjectFlagProperty<String?>.has('text', text));
  }
}
