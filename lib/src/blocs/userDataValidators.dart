import 'dart:async';

class UserdataValidators{
  final validateIndex =
  StreamTransformer<int, int>.fromHandlers(handleData: (pageIndex, sink) {
    if (pageIndex != null) {
      sink.add(pageIndex);
    } else {
      sink.add(0);
    }
  });

}