import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:pensil_community_flutter/src/app/cache_image.dart';
import 'package:pensil_community_flutter/src/app/markdown/syntax_highlight.dart';
import 'package:pensil_community_flutter/src/app/theme/markdown_theme.dart';

class MarkdownViewer extends StatelessWidget {
  const MarkdownViewer({
    Key? key,
    required this.markdownData,
    this.maxCharacters,
    required this.onTapLink,
  }) : super(key: key);
  final int? maxCharacters;
  final String markdownData;
  final void Function(String?, String?, String?) onTapLink;
  // ignore: unused_element
  _getMarkDownData(String markdownData) {
    RegExp exp = RegExp(r'!\[.*\]\((.+)\)');
    RegExp expImg = RegExp("<img.*?(?:>|\/>)");
    RegExp expSrc = RegExp("src=[\'\"]?([^\'\"]*)[\'\"]?");
    RegExp anchor = RegExp(r'<a[\s]+([^>]+)>((?:.(?!\<\/a\>))*.)<\/a>');

    String mdDataCode = markdownData;
    try {
      Iterable<Match>? tags = exp.allMatches(markdownData);
      Iterable<RegExpMatch>? anchorList = anchor.allMatches(markdownData);
      // ignore: unnecessary_null_comparison
      if (anchorList != null && anchorList.isNotEmpty) {
        for (Match? m in anchorList) {
          String? imageMatch = m!.group(0);
          if (imageMatch != null && !imageMatch.contains(".svg")) {
            String? match = imageMatch.replaceAll("\)", "?raw=true)");
            if (!match.contains(".svg") && match.contains("http")) {
              String src = match
                  .replaceAll(RegExp(r'!\[.*\]\(.*'), "")
                  .replaceAll(")", "");
              final Match? imgtag =
                  RegExp(r'<img[^>]* src=\"([^\"]*)\"[^>]*>').firstMatch(src);

              if (imgtag != null) {
                final Match? link =
                    RegExp(r'<a[^>]* href=\"([^\"]*)\"[^>]*>').firstMatch(src);
                src = link!.group(0)!.split("\"")[1];
                match = imgtag.group(0);
              }
              //  String actionMatch = "$match$src";
              // match = actionMatch;
              // print(src);
              // print(match);
            } else {
              match = "";
            }
            mdDataCode = mdDataCode.replaceAll(m.group(0)!, match!);
          }
        }
      }

      // ignore: unnecessary_null_comparison
      if (tags != null && tags.isNotEmpty) {
        for (Match? m in tags) {
          String? imageMatch = m!.group(0);
          if (imageMatch != null && !imageMatch.contains(".svg")) {
            String match = imageMatch.replaceAll(")", "?raw=true)");
            if (!match.contains(".svg") && match.contains("http")) {
              String src = match
                  .replaceAll(RegExp(r'!\[.*\]\(.*'), "")
                  .replaceAll(")", "");
              String actionMatch = "$match$src";
              match = actionMatch;
            } else {
              match = "";
            }
            mdDataCode = mdDataCode.replaceAll(m.group(0)!, match);
          }
        }
      }

      tags = expImg.allMatches(markdownData);
      // ignore: unnecessary_null_comparison
      if (tags != null && tags.isNotEmpty) {
        for (Match? m in tags) {
          String? imageTag = m!.group(0);
          String? match = imageTag;
          if (imageTag != null) {
            Iterable<Match> srcTags = expSrc.allMatches(imageTag);
            for (Match srcMatch in srcTags) {
              String? srcString = srcMatch.group(0);
              if (srcString != null && srcString.contains("http")) {
                final src = srcString.substring(
                        srcString.indexOf("http"), srcString.length - 1) +
                    "?raw=true";

                // match = "[![]($Src)]($Src)";
                match = "![]($src)";
              }
            }
          }
          mdDataCode = mdDataCode.replaceAll(imageTag!, match!);
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return mdDataCode;
  }

  _getStyleSheet(BuildContext context) {
    MarkdownStyleSheet markdownStyleSheet =
        MarkdownStyleSheet.fromTheme(Theme.of(context));
    return markdownStyleSheet.copyWith(
      a: MarkdownTheme.of(context).a,
      h1: MarkdownTheme.of(context).h1,
      h2: MarkdownTheme.of(context).h2,
      h3: MarkdownTheme.of(context).h3,
      h4: MarkdownTheme.of(context).h4,
      h5: MarkdownTheme.of(context).h5,
      h6: MarkdownTheme.of(context).h6,

      codeblockDecoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(
          color: Theme.of(context).disabledColor,
          width: 0.3,
        ),
      ),
      // listIndent: 22,
      listBullet: Theme.of(context).textTheme.bodyText1,
      blockquoteDecoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(4.0),
        ),
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(
          color: Theme.of(context).disabledColor,
          width: 0.3,
        ),
      ),
      // blockquote: TextStyles.subtitle14(context),
    );
  }

  Widget _getImageBuilder(Uri? uri) {
    return uri != null && !uri.path.contains("svg")
        ? CacheImage(
            path: uri.toString(),
          )
        : uri!.path.contains("svg")
            ? SvgPicture.network(
                uri.toString(),
                semanticsLabel: 'Image',
                placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(30.0),
                  height: 20,
                  child: const CircularProgressIndicator(),
                ),
              )
            : const Text("Loading image");
  }

  @override
  Widget build(BuildContext context) {
    bool isLongText = false;
    String markdown = markdownData;
    if (maxCharacters != null) {
      isLongText = markdownData.length > 500;
      if (isLongText) {
        markdown = markdownData.substring(0, 500);
      }
    }
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MarkdownBody(
              data: markdown, // _getMarkDownData(markdown),
              styleSheet: _getStyleSheet(context),
              syntaxHighlighter: GHighlighter(isDarkMode: true),
              imageBuilder: (uri, text, val) => _getImageBuilder(uri),
              onTapLink: onTapLink,
              inlineSyntaxes: [md.InlineHtmlSyntax()],
              extensionSet: md.ExtensionSet(
                md.ExtensionSet.gitHubFlavored.blockSyntaxes,
                [
                  md.EmojiSyntax(),
                  ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
                ],
              )),
          if (isLongText)
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "more ...   ",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            )
        ],
      ),
    );
  }
}

class GHighlighter extends SyntaxHighlighter {
  final bool? isDarkMode;

  GHighlighter({this.isDarkMode});
  @override
  TextSpan format(String source) {
    String showSource = source.replaceAll("&lt;", "<");
    showSource = showSource.replaceAll("&gt;", ">");
    return DartSyntaxHighlighter(null, isDarkMode!).format(showSource);
  }
}

// class TestMarkdownPage extends StatelessWidget {
//   const TestMarkdownPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(),
//       body: MarkdownViewer(markdownData: readme,),
//     );
//   }
// }
