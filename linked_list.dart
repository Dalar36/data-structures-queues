class Node {
  Node(this.value, [this.next]);

  int value;
  Node? next;
  Node? previous;

  @override
  String toString() {
    final result = StringBuffer();
    result.write(value);
    var nextNode = next;
    while (nextNode != null) {
      result.write(' -> ');
      result.write(nextNode.value);
      nextNode = nextNode.next;
    }
    return result.toString();
  }
}

class LinkedList {
  Node? head;
  Node? tail;

  void addLast(int value) {
    final newNode = Node(value);
    if (isEmpty) {
      head = newNode;
      tail = newNode;
    } else {
      tail?.next = newNode;
      tail = newNode;
    }
  }

  void addFirst(int value) {
    final newNode = Node(value);
    if (isEmpty) {
      head = newNode;
      tail = newNode;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }

  int removeFirst() {
    if (isEmpty || head == null) {
      throw Exception(
        'The list is empty. Why are you trying to remove the first one. There is no first one!!!',
      );
    } else {
      final deleted_value = head!.value;
      head = head!.next;
      return deleted_value;
    }
  }

  void removeLast() {
    if (isEmpty) {
      throw Exception("There is nothing you can remove");
    } else if (head == tail) {
      // one item in the list
      head = null;
      tail = null;
    } else {
      // many items in the list
      var current = head;
      while (current?.next != tail) {
        current = current?.next;
      }
      current?.next = null;
      tail = current;
    }
  }

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) {
      return 'Empty';
    }
    return head.toString();
  }
}

void main() {
  final myList = LinkedList();
  myList.addLast(42);
  myList.addLast(14);
  myList.addLast(35);

  print(myList);
  myList.removeFirst();
  print(myList);
  print(myList.isEmpty);
}
