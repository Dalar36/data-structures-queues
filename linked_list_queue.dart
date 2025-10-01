import "linked_list.dart";

class LinkedListQueue {
  LinkedList _data = LinkedList();

  // Constant time operation: 0(1)
  bool get isEmpty => _data.isEmpty;

  // Constant time operation: 0(1)
  void enqueue(int value) {
    _data.addLast(value);
  }

  // Linear time operation: 0(n)
  int? dequeue() {
    return _data.removeFirst();
  }

  @override
  String toString() {
    return _data.toString();
  }
}
