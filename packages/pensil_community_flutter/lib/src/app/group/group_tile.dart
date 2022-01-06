import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';

class GroupTile extends StatelessWidget {
  const GroupTile({Key? key, required this.group, required this.onGroupTileTap})
      : super(key: key);
  final Group group;

  /// {@macro group_tile_callback}
  final OnGroupTileTap? onGroupTileTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[300]!,
            width: 1,
          ),
        ),
      ),
      child: ListTile(
        onTap: () => onGroupTileTap?.call(group),
        title: Text(
          group.name!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff333333),
          ),
        ),
        subtitle: Text(describeEnum(group.groupType!)),
        trailing: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
