class User{
  String name;
  String email;
  bool isTester;

  User({this.name, this.email, this.isTester = true});

  User.fromMap(Map<String, dynamic> data){
    name = data["name"];
    email = data["email"];
    isTester = data["isTester"];
  }

  Map<String, dynamic> toMap(){
    return {
      "name": name,
      "email": email,
      "isTester": isTester
    };
  }

  Map<String, dynamic> toFirestoreMap(){
    return {
      "fields": {
        "name": { "stringValue": name },
        "email": { "stringValue": email },
        "isTester": { "booleanValue": isTester }
      }
    };
  }
}