// import Debug "mo:base/Debug";
// import Text "mo:base/Text";
// import Array "mo:base/Array";
// import Order "mo:base/Order";
//  import Int "mo:base/Int";
// import List "mo:base/List" ;

// actor {

//   type Customer = {
//     id : Text;
//     // id1 : Text;
//     leadOwner : Text;
//     name : Text;
//     phoneNo : Text;
//     address : Text;
//     company : Text;
//     leadSource : Text;
//     email : Text;
//     description : Text;

//   };
 
//   // type User = {
//   //   id : Nat;
//   //   username : { name : Text; id : Nat };
//   //   password : { pass : Text; id : Nat };
    
//   // };

//   type Meeting = {
//     id: Text;
//        title : Text ; 
//        from : Text ; 
//        to : Text ; 
//        relatedTo : Text ;
//   };

//   type Tasks = {
//     id: Text;
//     task : Text;
//     priority : Text;
//     taskOwner : Text;
//     status : Text;
//     dueDate : Text;
//   };

//   type Account = {
//     id: Text;
//     accountName : Text;
//     phNo : Text;
//     service : Text;
//     site : Text;
//   };

//   // stable var users : [User] = [];

//   stable var idCount = 0;
//   stable var meetCount = 0;
//   stable var taskCount = 0;
//   stable var accCount = 0;

//   //   stable var count :Int = 0;
//  // var customers : [Customer] = [];
//   stable var customers: List.List<Customer> = List.nil<Customer>();
//   stable var meetings: List.List<Meeting> = List.nil<Meeting>();
//   stable var tasks: List.List<Tasks> = List.nil<Tasks>();
//   stable var accounts : List.List<Account> = List.nil<Account>() ;
// // 
// // 
// // 
// //   
//   public func addCustomer( leadOwnerI : Text, nameI : Text, phoneNoI: Text,addressI: Text, companyI : Text,leadSourceI: Text, emailI : Text, descriptionI : Text) {
//     idCount := idCount + 1;
//     // let idstr = Text.fromInt(idCount);
//     var custNew : Customer ={

//       // id1 = idI;
//       id = Int.toText(idCount);
//       leadOwner = leadOwnerI;
//       name = nameI;
//       phoneNo = phoneNoI;
//       address = addressI;
//       company = companyI;
//       leadSource = leadSourceI;
//       email = emailI;
//       description = descriptionI;
//     };
//     customers := List.push(custNew, customers);
//     Debug.print(debug_show (customers))
//   };

//   public query func getCustomers() : async [Customer] {
//     return List.toArray(customers);
//   };

// }