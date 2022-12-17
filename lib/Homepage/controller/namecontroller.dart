class NameController {
  static dynamic controlName(String yourName, String partnerName) {
    List<String> yourName0 = <String>[];
    List<String> partnerName0 = <String>[];
    List<String> result = <String>[];
    for (var c in yourName.runes) {
      var ch = String.fromCharCode(c);
      yourName0.add(ch);
    }
    for (var c in partnerName.runes) {
      var ch = String.fromCharCode(c);
      partnerName0.add(ch);
    }
    for (var a in partnerName0) {
      if (yourName0.contains(a)) {
        if (!result.contains(a)) {
          result.add(a);
        }
      }
    }
    final resultInPercentage = (result.length / yourName0.length) * 100;
    if (resultInPercentage.isNaN) {
      return resultInPercentage.toString();
    } else {
      return resultInPercentage.toInt();
    }
  }
}

class ResultController {
  static String controlresult(results) {
    String a = "";
    final result = results * 100;
    if (result <= 10) {
      a = "Your love can be broke in no time, You both are loving your ex. ";
    }
    if (result > 10 && result <= 20) {
      a = "You have some kind of connection, but you will have break up soon my boe due to internal clash.";
    }
    if (result > 20 && result <= 30) {
      a = "Chill you are also having a break up kid. Study now you will never regret later.";
    }
    if (result > 30 && result <= 40) {
      a = "Don't laugh you are also having break up in future. You would have a great connection with each other but you will broke up due to your ego.";
    }
    if (result > 40 && result <= 50) {
      a = "50 huh ?  You are also having a break up soon, Third person will come into your life and one person heart will broke into 1000 pieces.";
    }
    if (result > 50 && result <= 60) {
      a = "Congratulations you are the first person to marriage with your partner in this list, You will have marriage stay chill, but with whom we don't know. ";
    }
    if (result > 60 && result <= 70) {
      a = "You both may end up having a child and will get separated soon, its AI answer not a human answer.";
    }
    if (result > 70 && result <= 80) {
      a = "You both may have healthy relationship with each other. Both will be happy with each other and will live a happy life.";
    }
    if (result > 80 && result <= 90) {
      a = "You both will be succesfull and will happy with each other. You will have 2 kids in AI point of view.";
    }
    if (result > 90 && result <= 100) {
      a = "You both are soulmate made by the grace of god. You both will have some clashes but you would keep you ego side and will attach again.";
    }
    return a;
  }
}
