class ListQueue {
  List<int> _data = [];

  // Constant time operation: 0(1)
  bool get isEmpty => _data.isEmpty;

  // Constant time operation: 0(1)
  void enqueue(int value) {
    _data.add(value);
  }

  //Linear time operation: 0(n)
  int? dequeue() {
    if (isEmpty) {
      return null;
    }
    return _data.removeAt(0);
  }

  @override
  String toString() {
    return _data.toString();
  }
}
