import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/assets/icon/pensil_image_icon.dart';
import 'package:pensil_community_flutter/src/app/theme/box_decoration.dart';
import 'package:pensil_community_flutter/src/app/theme/theme_extention.dart';

class DocumentCard extends StatelessWidget {
  final String? path;
  final Widget? trailing;
  final String? name;
  final bool? downloadable;
  final EdgeInsetsGeometry margin;
  const DocumentCard({
    Key? key,
    this.path,
    this.trailing,
    this.name,
    this.downloadable = true,
    this.margin = const EdgeInsets.all(0),
  }) : super(key: key);

  void openMaterial(context, String? path) {
    if (path != null && path.contains("https")) {
      if (!path.contains("pdf")) {
        // Utility.launchOnWeb(path);
      } else {
        // Utility.cprint("Sorry, PDFs are not supported yet.");
        // Navigator.push(
        //     context, PdfViewPage.getRoute(path, title: "Attachment"));
      }
    } else {
      print("Unable to oprn file path: " + path!);
    }
  }

  Widget _wrapper(BuildContext context, Widget child) {
    if (downloadable!) {
      return child.ripple(() async {});
    }
    return child;
  }

  @override
  Widget build(BuildContext context) {
    if (path == null) {
      return const SizedBox.shrink();
    }
    const color = Color(0xff6A80F5);
    return _wrapper(
      context,
      Container(
        margin: margin,
        decoration:
            BoxDecorations.outlineBorder(context, color: color, width: 1),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
            width: 40,
            padding: EdgeInsets.zero,
            alignment: Alignment.centerLeft,
            child: Image.asset(
              PensilImageIcon.getfiletypeIcon(null, path: path),
              package: 'pensil_community_flutter',
              height: 40,
            ).pL(8),
          ),
          title: Text(
            name ?? path!.split("/").last,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          trailing: trailing,
        ),
      ),
    );
  }
}
