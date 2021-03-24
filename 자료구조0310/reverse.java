package week4;

public class reverse {
	public void reverseList(){
		ListNode next = head;
		ListNode current = null;
		ListNode pre = null;
		while(next != null){
		pre = current;
		current = next;
		next = next.link;
		current.link = pre;
		}
		head = current;
		}
		public void printList(){
		ListNode temp = this.head;
		System.out.printf("L = (");
		while(temp != null){
		System.out.printf(temp.getData());
		temp = temp.link;
		if(temp != null){
		System.out.printf(", ");
		}
		}
		System.out.println(")");
}

}
