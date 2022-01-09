import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';

class SectionTile extends StatelessWidget {
  const SectionTile(
      {Key? key, required this.section, required this.onSectionTileTap})
      : super(key: key);
  final Section section;
  final OnSectionTileTap onSectionTileTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[300]!,
            width: 1,
          ),
        ),
      ),
      child: ListTile(
        onTap: () => onSectionTileTap.call(section),
        title: Row(
          children: [
            Text(
              '${section.emoji.valueOrDefault('#')} ${section.name!}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff333333),
              ),
            ),
          ],
        ),
        subtitle: Text(describeEnum(section.sectionType)),
        trailing: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
