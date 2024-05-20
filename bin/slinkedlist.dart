
class Node {
  int? data;
  Node? next;
  Node(int data){

    this.data=data;
  }
}
class SlinkedList{
   Node ? head ;
   Node ?tail;

   void addNode(int data){
       Node newNode = Node(data);
       if(head==null){
        head = newNode;
       }else{
        tail?.next=newNode;
       }
       tail = newNode;
   }
   void display(){
    if(head==null){
      print('Empty');
      return;
    }
   Node? temp =head;
   while (temp!=null) {
     print(temp.data);
     temp=temp.next;
   }
   }
   void delete(int data){
 Node? temp = head; 
 Node? prev=null;
 if(temp!=null&&temp.data==data){
  head=temp.next;
  return;
 }
 while(temp!=null&&temp.data!=data){
  prev=temp;
  temp=temp.next;
 }
 if(temp == null){
  return;
 }
 if(temp ==tail){
   prev = tail;
   tail?.next =null;
   return;
 }

 prev?.next=temp.next;
}
void insert(int nextTo,int data){
  Node newNode =  Node(data);
   Node? temp = head;
   while(temp!=null&&temp.data!=nextTo){
   temp =temp.next;
   }
   if(temp==null){
    return;
   }
   if(temp==tail){
    tail?.next=newNode;
    tail=newNode;
   }
     newNode.next=temp.next;
     temp.next=newNode;
}

void removeDuplicates(){
 Node? current = head;
 while(current!=null){
  Node? next = current.next;
  while (next!=null&&next.data == current.data) {
    next = next.next;   
  }
  current.next = next;
  if(next == tail && next?.data== current.data ){
    tail = current;
    tail?.next = null;

  }
  current = next;
 }
}
}
void main(){
    SlinkedList list = SlinkedList();
    list.addNode(10);
    list.addNode(10);
    list.addNode(50);
    list.addNode(20);
    list.removeDuplicates();
    list.delete(20);
    list.insert(10, 15);
    list.display();
   }

