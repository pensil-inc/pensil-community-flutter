import 'package:freezed_annotation/freezed_annotation.dart';
part 'actor.freezed.dart';
part 'actor.g.dart';

@freezed
class Actor with _$Actor {
  const factory Actor({
    required final String? id,
    required final String name,
    final String? userId,
    final String? picture,
  }) = _Actor;

  factory Actor.fromJson(Map<String, dynamic> json) => _$ActorFromJson(json);
}
