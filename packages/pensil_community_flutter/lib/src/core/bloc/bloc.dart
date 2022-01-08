abstract class BlocBaseClass<T> {
  BlocBaseClass({required this.client, required this.id}) {
    initBloc();
  }
  final String id;
  final T client;

  void initBloc();

  void dispose() {}
}
