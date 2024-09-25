import 'package:bloc/bloc.dart';

class CounterBloc extends Cubit<int> {
  CounterBloc({this.init = 0}) : super(init);
  int init;
  void tambah() => emit(state + 1);
  void kurang() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
}
