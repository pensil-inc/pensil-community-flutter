import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/assets/pensil_icon.dart';

class PopupAction extends StatelessWidget {
  const PopupAction(
      {Key? key,
      this.onDelete,
      this.onEdit,
      this.onCustomIconPressed,
      this.icon,
      this.list = const [
        Choice(title: "Edit", icon: PensilIcon.edit),
        Choice(title: "Delete", icon: PensilIcon.delete)
      ],
      this.menuKey,
      this.iconColor})
      : super(key: key);
  final Widget? icon;
  final Color? iconColor;
  final Function? onDelete;
  final Function? onEdit;
  final Function? onCustomIconPressed;
  final List<Choice>? list;
  final GlobalKey? menuKey;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = false;
    return PopupMenuButton<Choice>(
      key: menuKey,
      onSelected: (action) {
        if (action.onTap != null)
          action.onTap!.call();
        else {
          switch (action.title) {
            case "Delete":
              if (onDelete != null) onDelete!.call();
              break;
            case "Edit":
              if (onEdit != null) {
                print("Edit");
                onEdit!.call()();
              }
              break;
            default:
              if (onCustomIconPressed != null) onCustomIconPressed!.call();
          }
        }
      },
      padding: EdgeInsets.zero,
      offset: Offset(0, 0),
      // color: isDarkMode ? context.surfaceColor : context.onPrimary,
      icon: icon ??
          Icon(
            Icons.more_vert,
            // color:
            //     isDarkMode ? context.onPrimary : context.theme.iconTheme.color,
          ),
      itemBuilder: (BuildContext context) {
        return list!.map((Choice choice) {
          return PopupMenuItem<Choice>(
              value: choice,
              child: Row(
                children: [
                  Icon(choice.icon,
                      size: 20,
                      color: iconColor ?? Theme.of(context).iconTheme.color),
                  const SizedBox(width: 8),
                  Text(
                    choice.title,
                    // style: TextStyles.bodyText15(context),
                  ),
                ],
              ));
        }).toList();
      },
    );
  }
}

class Choice {
  const Choice({required this.title, this.icon, this.onTap});

  final IconData? icon;
  final String title;
  final VoidCallback? onTap;
}
