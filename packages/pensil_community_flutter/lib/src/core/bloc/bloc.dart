import 'package:pensil_community_flutter/src/core/bloc/bloc_controller.dart';

abstract class BlocBaseClass<T, K> {
  BlocBaseClass({required this.client, required this.id}) {
    controller = BlocController<T>();
    controller.init(id);
    initBloc();
  }
  final String id;
  final K client;

  late BlocController<T> controller;

  void initBloc() {}

  void dispose() {
    controller.close();
  }
}
