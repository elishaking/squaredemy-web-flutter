class ContactMessage{
  String subject;
  String message;
  String name;
  String phone;
  String email;

  ContactMessage({this.subject = "", this.message, this.name, this.phone, this.email});

  ContactMessage.fromMap(Map<String, dynamic> data){
    subject = data["subject"];
    message = data["message"];
    name = data["name"];
    phone = data["phone"];
    email = data["email"];
  }

  Map<String, dynamic> toMap(){
    return {
      "subject": subject,
      "message": message,
      "name": name,
      "phone": phone,
      "email": email
    };
  }

  Map<String, dynamic> toFirestoreMap(){
    return {
      "fields": {
        "subject": { "stringValue": subject },
        "message": { "stringValue": message },
        "name": { "stringValue": name },
        "phone": { "stringValue": phone },
        "email": { "stringValue": email },
      }
    };
  }
}