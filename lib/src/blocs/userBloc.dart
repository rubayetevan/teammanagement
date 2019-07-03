import 'package:rxdart/rxdart.dart';
import 'package:teammanagement/src/blocs/userDataValidators.dart';

class UserBloc extends UserdataValidators{

  final _pageIndex = BehaviorSubject<int>();
  Stream<int> get pageIndex => _pageIndex.stream.transform(validateIndex);
  Function(int) get changePageIndex => _pageIndex.sink.add;

  dispose() {
    _pageIndex.close();
  }



}

final userBloc = UserBloc();