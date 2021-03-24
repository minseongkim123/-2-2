package week4;

public class delete {
	public void deleteLastNode(){
		ListNode pre, temp;
		if(head == null) return;
		if(head.link == null){
		head = null;
		}
		else{
		pre = head;
		temp = head.link;
		while(temp.link != null){
		pre = temp;
		temp = temp.link;
		}
		pre.link = null;
		}
		}
		public ListNode searchNode(String data){
		ListNode temp = this.head;
		while(temp != null){
		if(data == temp.getData())
		return temp;
		else temp = temp.link;
		}
		return temp;

}
}