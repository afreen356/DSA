void main(){
  Linkedlist list = Linkedlist();
  list.AddNode(10);
  list.AddNode(20);
  list.AddNode(30);
  list.AddNode(40);
  list.AddNode(50);
  list.delete(30);
  list.insertNode(40, 45);

  list.display();
}

class Node{
  int ?data;
  Node? next;

  Node(int data){
    (this.data=data);
    
  }
}

class Linkedlist{
  Node? head = null;
  Node? tail = null;

  void AddNode(int data){
     
    Node newNode = Node(data);
    if(head==null){
      head= newNode;
    }else{
      tail?.next=newNode;
    }
    tail=newNode;
    
  }

  void display(){
    Node? temp =head;

    while (temp!=null) {
      print(temp.data);
      temp=temp.next;
    }
  }

  void delete(int data){
   Node? temp = head, prev=null;

   if(temp!=null && temp.data==data){
    head= temp.next;
    return;
   }
   while(temp!=null && temp.data!=data){
    prev = temp;
    temp= temp.next;

   }
   
   if(temp==null){
    return;
   }
   if(temp==tail){
    tail = prev;
    tail?.next=null;
    return;
   }
   
   prev?.next= temp.next;
   
  }

  void insertNode(int nextTo,int data){
    Node newNode = Node(data);

    Node ?temp = head;

    while(temp!=null && temp.data!=nextTo){
      temp=temp.next;
    }

    if(temp == null){
      return;
    }
    if(temp==tail){
      temp.next=newNode;
      tail=newNode;

    }

    newNode.next = temp.next;
    temp.next=newNode;
  }

}

