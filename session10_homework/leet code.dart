
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}


class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? current = head;

    while (current != null) {
      ListNode? nextTemp = current.next;
      current.next = prev;
      prev = current;
      current = nextTemp;
    }
    return prev;
  }
}

void main() {
  ListNode node3 = ListNode(3);
  ListNode node2 = ListNode(2, node3);
  ListNode head = ListNode(1, node2);

  Solution sol = Solution();
  ListNode? reversed = sol.reverseList(head);

  print("Reversed List:");
  ListNode? temp = reversed;
  while (temp != null) {
    print(temp.val);
    temp = temp.next;
  }
}
