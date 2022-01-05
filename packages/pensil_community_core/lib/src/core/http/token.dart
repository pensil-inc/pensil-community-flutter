import 'package:equatable/equatable.dart';

class Token with EquatableMixin {
  factory Token() => _singleton;
  Token._internal();
  static final Token _singleton = Token._internal();

  String? _bearer;
  String? get bearer => _bearer;
  set bearer(String? value) {
    if (_bearer != value) {
      _bearer = value;
    }
  }

  @override
  List<Object?> get props => [_bearer];
}
