import 'dart:async';

void main(List<String> args) {
  Future<int>.delayed(
    Duration(seconds: 5),
    () => throw 'error!',
  )
      .then((value) => print(value))
      .catchError(
        (e) => print('object: $e'),
        test: (e) => e.runtimeType == String,
      )
      .whenComplete(() => print('all finished'));

  print('LOADING...');
}
