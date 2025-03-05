import 'dart:io';

void main() {
  Map<String, int> verdskra = {
    "Ostborgari": 1990,
    "Beikonborgari": 2290,
    "Portobello borgari": 1590,
    "Franskar": 990
  };

  List<String> karfa = [];
  int heildarverd = 0;
  bool pontun = false;

  while (!pontun) {
    print(
        "Góðan daginn og velkominn á 3 guys! Hvað má bjóða þér?\n"
            "1. Ostborgari 1990kr\n"
            "2. Beikonborgari 2290kr\n"
            "3. Portobello borgari 1590kr\n"
            "4. Franskar 990kr\n"
            "5. Ef þú ert sáttur (enda pöntun)\n"
            "6. Fjarlægja vöru úr körfu"
    );

    String svar1 = stdin.readLineSync() ?? "";

    if (svar1 == "1") {
      karfa.add("Ostborgari");
      heildarverd += verdskra["Ostborgari"]!;
    } else if (svar1 == "2") {
      karfa.add("Beikonborgari");
      heildarverd += verdskra["Beikonborgari"]!;
    } else if (svar1 == "3") {
      karfa.add("Portobello borgari");
      heildarverd += verdskra["Portobello borgari"]!;
    } else if (svar1 == "4") {
      karfa.add("Franskar");
      heildarverd += verdskra["Franskar"]!;
    } else if (svar1 == "5") {
      pontun = true;
      break;
    } else if (svar1 == "6") {
      if (karfa.isEmpty) {
        print("Karfan er tóm, ekkert til að fjarlægja.");
      } else {
        print("Hvaða vöru viltu fjarlægja? (Sláðu inn númer)");
        for (int i = 0; i < karfa.length; i++) {
          print("${i + 1}. ${karfa[i]}");
        }

        String svarFjarlaga = stdin.readLineSync() ?? "";
        int? val = int.tryParse(svarFjarlaga);

        if (val != null && val > 0 && val <= karfa.length) {
          String vara = karfa.removeAt(val - 1);
          heildarverd -= verdskra[vara]!;
          print("$vara hefur verið fjarlægð úr körfunni.");
        } else {
          print("Ógilt val, reyndu aftur.");
        }
      }
    } else {
      print("Ógilt val, reyndu aftur.");
      continue;
    }

    while (true) {
      print("Er það eitthvað fleira? (1 = já, 2 = nei)");
      String svar2 = stdin.readLineSync() ?? "";

      if (svar2 == "1") {
        break; // Heldur áfram í ytri lykkjunni til að velja fleiri vörur
      } else if (svar2 == "2") {
        pontun = true;
        break;
      } else {
        print("Ógilt val, reyndu aftur.");
      }
    }
  }

  print("Pöntunin þín lítur svona út: $karfa");
  print("Heildarverð pöntunar: $heildarverd kr");
}
