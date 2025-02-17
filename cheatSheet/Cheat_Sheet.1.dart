void main(List<String>arguments){

  String Firstname = "Baltasar";
  String Lastname = "Bragason";
  String Fullname = Firstname + " " + Lastname;
  print("Hi $Firstname");
  print("Hi $Lastname");
  print("Hi $Fullname");
  String SSN = "160702-2220";
  String fixSSN = SSN.replaceAll("-", "");
  int SSNLength = fixSSN.length;
  print(SSNLength);
  print(fixSSN);
  String message = "Hello world";
  String fixmessage = message.replaceAll("world", "NTV");
  print(message);
  print(fixmessage);


  
}