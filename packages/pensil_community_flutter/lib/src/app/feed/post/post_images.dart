import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/src/app/widget/index.dart';

class PostImages extends StatelessWidget {
  final List<String>? list;
  const PostImages({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (list == null || list!.isEmpty) return const SizedBox.shrink();
    bool isPlusOne = list!.length > 4;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // print(constraints);
        var width = constraints.maxWidth;
        return Wrap(
          children: Iterable.generate(isPlusOne ? 4 : list!.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                  width: list!.length >= 2 ? (width - 28) * .5 : width - 16,
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                  ),
                  alignment: Alignment.center,
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AspectRatio(
                          aspectRatio: 4 / 3,
                          child: CacheImage(
                            path: list![index],
                            fit: BoxFit.cover,
                            onPressed: () {
                              // Navigator.push(
                              //     context, PhotoPageView.getRoute(list));
                            },
                          ),
                        ),
                        if (isPlusOne && index == 3)
                          Container(
                            color:
                                Theme.of(context).dividerColor.withOpacity(.5),
                            alignment: Alignment.center,
                            child: Text(
                              "+${list!.length - 4}",
                              // style: TextStyles.headline18(context)
                              //     .onPrimary(context),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
