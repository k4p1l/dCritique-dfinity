import Text "mo:base/Text";
import Error "mo:base/Error";
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import List "mo:base/List" ;
import Int "mo:base/Int";
import Debug "mo:base/Debug";


// actor {
//   type ResponseData = {
//     status : Bool;
//     data : Text;
//   };
//   type ResponseDataAllFiles = {
//     status : Bool;
//     data : [(Text,Text)];
//   };

//   var fileHashMap = HashMap.HashMap<Text, Text>(0, Text.equal, Text.hash);
//   stable var entries : [(Text, Text)] = [];

//   public func saveFile(uuid : Text, file : Text) : async ResponseData {
//     fileHashMap.put(uuid, file);
//     return {
//       status = true;
//       data = file;
//     };
//   };

//   public query func getFile(uuid : Text) : async ResponseData {
//     var file : Text = switch (fileHashMap.get(uuid)) {
//       case (null) { throw Error.reject("File not exist") };
//       case (?result) { result };
//     };
//     return {
//       status = true;
//       data = file;
//     };
//   };

//   public query func getAllFiles() : async ResponseDataAllFiles {
//     let files = Iter.toArray<(Text, Text)>(fileHashMap.entries());
//     return {
//       status = true;
//       data = files;
//     }
//   };

//   system func preupgrade() {
//     entries := Iter.toArray(fileHashMap.entries());
//   };

//   system func postupgrade() {
//     fileHashMap := HashMap.fromIter<Text, Text>(entries.vals(), 1, Text.equal, Text.hash);
//     entries := [];
//   };
// };


actor {
  type Review = {
      review : Text ; 
      stars : Text ; 
      images :Text ; 
  } ; 
  // type ResponseData = {
  //   status : Bool;
  //   images : Text;
  //   review : Text ; 
  //    stars : Text ; 
  // };
  // type ResponseDataAllFiles = {
  //   status : Bool;
  //   images : [(Text, Review)];
  //   //  review : Text ; 
  //   //  stars : Text ; 
  // };

  stable var idCount = 0;
  stable var reviews : List.List<Review> = List.nil<Review>();

  // var fileHashMap = HashMap.HashMap<Text, Review>(0, Text.equal, Text.hash);
  // stable var entries : [(Text, Text)] = [];
  // var rev = List.toArray(reviews);
   
  // public func saveFile(uuid : Text, file : Text, reviewI: Text, starsI: Int) : async ResponseData {
  //   fileHashMap.put(uuid, {images = file ; review = reviewI ; stars = Int.toText(starsI)});
  //   return {
  //     status = true;
  //     images = file;
  //     review = reviewI ; 
  //     stars = Int.toText(starsI);
  //   };
  // };

    public func addReview( reviewI : Text, starsI : Int, imagesI : Text) {
    idCount := idCount + 1;
    // let idstr = Text.fromInt(idCount);
    var reviewNew : Review ={

      // id1 = idI;
      id = Int.toText(idCount);
      review = reviewI;
      stars = Int.toText(starsI);
      images = imagesI;
    };
    reviews := List.push(reviewNew, reviews);
    // Debug.print(debug_show (reviews))
  };

  public query func getReview() : async [Review] {
       return List.toArray(reviews) ;
  }

  // public query func getFile(uuid : Text) : async ResponseData {
  //   var file : Text = switch (fileHashMap.get(uuid)) {
  //     case (null) { throw Error.reject("File not exist") };
  //     case (?result) { result };
  //   };
  //   return {
  //     status = true;
  //     data = file;
  //     review = review; 
  //     stars = stars
  //   };
  // };

  // public query func getAllFiles() : async [Review] {
  //   return List.toArray(reviews);
  //   // return 
  // };

  // system func preupgrade() {
  //   entries := Iter.toArray(fileHashMap.entries());
  // };

  // system func postupgrade() {
  //   fileHashMap := HashMap.fromIter<Text, Review>(entries.vals(), 1, Text.equal, sText.hash);
  //   entries := [];
  // };
  // public func addReview(reviewI : Text,starsI:Int) {
  //       var reviewNew ={
  //         review = reviewI ; 
         
  //         stars = Int.toText(starsI) 
  //       } ;
  //       reviews := List.push(reviewNew,reviews) ; 
  // };
  
};
