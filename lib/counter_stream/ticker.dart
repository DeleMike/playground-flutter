class Ticker {
  const Ticker();

  Stream<int> tick({int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => x+1);
  }
}
