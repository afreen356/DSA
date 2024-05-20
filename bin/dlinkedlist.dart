class Node{
int? data;
Node? next;
Node? prev;

Node(int data){
  this.data=data;
}
}
class Dlinkedlist{
  Node? head;
  Node? tail;
  
  void addNode(int data){
    Node newNode = Node(data);
    

     if(head==null){
      head=newNode;
     }else{
      tail?.next=newNode;
      newNode.prev= tail;

     }
     tail = newNode;
  

  }
  void display(){
    Node? temp= head;
    while(temp!=null){
      print(temp.data);
      temp = temp.next;

    }

  }
  void displayReverse(){
    Node? temp= tail;
    while(temp!=null){
      print(temp.data);
      temp = temp.prev;

    }

  }
}
void main(){
  Dlinkedlist list = Dlinkedlist();
  list.addNode(5);
  list.addNode(10);
  list.addNode(15);
  list.addNode(20);
  list.display();
  list.displayReverse();

}