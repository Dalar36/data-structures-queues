import 'list_queue.dart';
import 'linked_list_queue.dart';

void main() {
  // Showcase: a queue implemented internally with a List data structure.
  final listQueue = ListQueue();
  print('ListQueue initially: ' + listQueue.toString());
  listQueue.enqueue(23);
  listQueue.enqueue(54);
  listQueue.enqueue(74);
  print('ListQueue after enqueues: ' + listQueue.toString());
  print('ListQueue dequeue: ' + (listQueue.dequeue()?.toString() ?? 'null'));
  print('ListQueue after one dequeue: ' + listQueue.toString());
  print('ListQueue isEmpty: ' + listQueue.isEmpty.toString());

  print('');

  // Showcase: a queue implemented internally with Linked List data structure
  final llQueue = LinkedListQueue();
  print('LinkedListQueue initially: ' + llQueue.toString());
  llQueue.enqueue(2);
  llQueue.enqueue(89);
  llQueue.enqueue(23);
  print('LinkedListQueue after enqueues: ' + llQueue.toString());
  print(
    'LinkedListQueue dequeue: ' + (llQueue.dequeue()?.toString() ?? 'null'),
  );
  print('LinkedListQueue after one dequeue: ' + llQueue.toString());
  print('LinkedListQueue isEmpty: ' + llQueue.isEmpty.toString());
}
