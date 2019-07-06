class User{
  String name;
  String email;
  bool isTester;

  User({this.name, this.email, this.isTester});

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
}