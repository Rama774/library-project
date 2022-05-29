import 'dart:io';
//dart liprary project
List<Book> allBooks=[];

msgSelete(){
  print("welcome");
  print("please select from this");
  print("1:showAllBooks");
  print("2:search book");
  print("3:buy book");
  print("4:exit");
}

abstract class Content{
  int? bookid;
  String? bookTitle;
  String? bookAuthor;
  num? bookPrice;
  int?bookQuantity;

  Content({this.bookTitle,this.bookid,this.bookAuthor,this.bookPrice,this.bookQuantity});
}

class Book extends Content{

Book({super.bookid,super.bookTitle,super.bookAuthor,super.bookPrice,super.bookQuantity});
  printBook(){ 
 print("the id is ${super.bookid}");
 print("the title is ${super.bookTitle}");
 print("the author is ${super.bookAuthor}");
 print("the price is ${super.bookPrice}");
 print("the quantity is ${super.bookQuantity}");
 print("*******************************************");
}

}



addAllBooks(){
Book object1= Book(bookid: 1,
bookTitle: "start with why",
 bookAuthor: "Simon Sinek",
 bookPrice:80.0,
 bookQuantity:13);

Book object2= Book(bookid: 2,
bookTitle: "But how do it know",
 bookAuthor: "J.clark scott",
 bookPrice:59.9,
 bookQuantity:22);

Book object3= Book(bookid: 3,
bookTitle: "clean code",
 bookAuthor: "Robert Cecil Marthin",
 bookPrice: 50.0,
 bookQuantity: 5);

Book object4= Book(bookid: 4,
bookTitle: "Zero to one",
 bookAuthor: "peter Thiel",
 bookPrice: 45.0,
 bookQuantity: 12);

Book object5= Book(bookid: 5,
bookTitle: "You do not know JS",
 bookAuthor: "Kyle Simpson",
 bookPrice: 39.9,
  bookQuantity: 9);


allBooks.add(object1);
allBooks.add(object2);
allBooks.add(object3);
allBooks.add(object4);
allBooks.add(object5);
}

void main() {
  addAllBooks();
   msgSelete();
  //  buyBook();
var input = stdin.readLineSync()!;
seleted(inputUser:input );
searchBooksId();
 showAllBooks();
 buyBook();
}




seleted({String? inputUser}){
if(inputUser=="1"){
  showAllBooks();

}else if( inputUser == "2"){
   print("enter book id" );
var inputUser = stdin.readLineSync()!;
searchBooksId(bookid: inputUser);
}

  else if(inputUser =="3"){
   print("enter book id" );
   var inputUser = stdin.readLineSync()!;
      print("this is the book and if you want to buy it enter 5");
      buyBook(bookid: inputUser);  
     var inputUs = stdin.readLineSync()!;
     if(inputUs =="5"){
      print("ok");
      print("enter book amount to confirm");
     var inputUser = stdin.readLineSync()!;
      print("*************************");
      print("     you get it now    ");
      print("  Thank you for shopping  ");
      print("**************************");
    }
  }

else if(inputUser =="4"){
   exit(0);
  }
}


searchBooksId({String? bookid}) {
  for (var Book in allBooks) {
    if (Book.bookid == int.parse(bookid!)) {
      Book.printBook();
 
    }
  }
}


buyBook({String? bookid}){
 for (var Book in allBooks) {
    if (Book.bookid == int.parse(bookid!)) {
      Book.printBook();
    }
  }
}


showAllBooks(){
for(var i=0; i<allBooks.length; i++){
 allBooks[i].printBook();
  }
}
