class Node {
  int value;
  Node? next;

  Node(this.value, [this.next]);
}

class LinkedList {
  Node? head;

  void append(int value) {
    if (head == null) {
      head = Node(value);
      return;
    }
    Node current = head!;
    while (current.next != null) {
      current = current.next!;
    }
    current.next = Node(value);
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }

  void reverse() {
    Node? prev;
    Node? current = head;
    Node? next;

    while (current != null) {
      next = current.next; // Salva o próximo nó
      current.next = prev; // Inverte o ponteiro
      prev = current; // Move prev para o nó atual
      current = next; // Move current para o próximo nó
    }

    head = prev; // Atualiza a cabeça da lista
  }
}

void main() {
  LinkedList list = LinkedList();
  list.append(1);
  list.append(2);
  list.append(3);
  list.append(4);

  print("Lista original:");
  list.printList();

  list.reverse();

  print("\nLista invertida:");
  list.printList();
}
