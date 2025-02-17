import "dart:io";
import "dart:convert";


void main(List<String>arguments) {
  print("Hvað er uppáhaldstalan þín?");
  String inputnumber = stdin.readLineSync().toString();
  print("Hún er $inputnumber");

  int result = 5 * int.parse(inputnumber);
  print("$inputnumber sinnum 5 er $result");


  int number1 = 9;
  int number2 = 3;
  double result2 = number1 / number2;
  print(result2.toStringAsFixed(3));

  print("Hæ hvað heitir þú?");
  String firstname = stdin.readLineSync(encoding: utf8).toString();
  print("Hæ $firstname, hvert er seinna nafnið þitt?");
  String lastname = stdin.readLineSync(encoding: utf8).toString();
  String fullname = firstname + " " + lastname;
  print("Já okei þú heitir semsagt $fullname");
  String newname = firstname.replaceAll(firstname, "Klemenz");
  print("En ég ætla samt bara að kalla þig $newname");


  String newname01 = "Salvör Tinna";
  String newname02 = "Guðjónsdóttir";
  String fullname01 = newname01 + " " + newname02;
  String url = "ntv.is";
  List<String> names = fullname01.split(" ");
  print(names);
  print(0);
  print(1);


  String removeIcelandicLetters(String input) {

    Map<String, String> icelandicToLatin = {

      'ð': 'd',

      'þ': 'th',

      'á': 'a',

      'é': 'e',

      'í': 'i',

      'ó': 'o',

      'ú': 'u',

      'ý': 'y',

      'ö': 'o',

      'Æ': 'Ae',

      'æ': 'ae',

      'Ð': 'D',

      'Þ': 'Th',

      'Á': 'A',

      'É': 'E',

      'Í': 'I',

      'Ó': 'O',

      'Ú': 'U',

      'Ý': 'Y',

      'Ö': 'O'

    };

    icelandicToLatin.forEach((key, value) {

      input = input.replaceAll(key, value);

    });

    return input;

  }




  String username = names[0].substring(0, 3) + names[1].substring(0, 1) + newname02.substring(0, 3);
  username = username.toLowerCase();
  username = removeIcelandicLetters(username);
  print(username);
  String email = username + "@" + url;
  print(email);










}