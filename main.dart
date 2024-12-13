int sumEvenNumbers(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      sum += numbers[i];
    }
  }
  return sum;
}

bool checkPrimes(int number) {
  if (number % 2 == 0) return false;
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

int countPrimes(List<int> numbers) {
  int count = 0;
  for (int number in numbers) {
    if (checkPrimes(number)) {
      count++;
    }
  }
  return count;
}

bool isPalindrome(String str) {
  String convertStr = str.replaceAll(' ', '').toLowerCase();
  return convertStr == convertStr.split('').reversed.join('');
}

int secondLargest(List<int> numbers) {
  if (numbers.length < 2) {
    throw Exception("least 2 numbers");
  }
  List<int> uniqueNumbers = numbers.toSet().toList()
    ..sort((a, b) => b.compareTo(a));
  return uniqueNumbers.length > 1
      ? uniqueNumbers[1]
      : throw Exception("No number 2nd largest");
}

String toBinary(int number) {
  if (number <= 0) {
    throw Exception("Not positive integer");
  }

  String binary = '';
  while (number > 0) {
    binary = (number % 2).toString() + binary;
    number ~/= 2; // Chia lấy positive
  }

  return binary;
}

String sortStringAlphabetically(String str) {
  if (str.isEmpty) {
    return 'null';
  }

  List<String> lst_str = str.split('');
  lst_str.sort();
  return lst_str.join('');
}

List<int> removeDuplicates(List<int> numbers) {
  List<int> uniqueNumbers = numbers.toSet().toList();
  return uniqueNumbers;
}

int mostFrequentElement(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("List is empty");
  }

  Map<int, int> frequencyMap = {};
  for (int number in numbers) {
    frequencyMap[number] = (frequencyMap[number] ?? 0) + 1;
  }

  int mostFrequent = numbers[0];
  int maxFrequency = frequencyMap[mostFrequent]!;

  for (var entry in frequencyMap.entries) {
    if (entry.value > maxFrequency) {
      mostFrequent = entry.key;
      maxFrequency = entry.value;
    }
  }

  return mostFrequent;
}

int countWords(String str) {
  List<String> words = [];
  for (int i = 0; i < str.length; i++) {
    if (str[i] == ' ') {
      continue;
    } else {
      words.add(str[i]);
    }
  }
  return words.length;
}

// performance than countWords
int demChu(String str) {
  String lst_str = str.replaceAll(' ', '');
  return lst_str.length;
}

int sumOfDigits(int number) {
  int sum = 0;
  String str_digits = number.toString();
  for (int i = 0; i < str_digits.length; i++) {
    sum += int.parse(str_digits[i]);
  }
  return sum;
}

void main() {
  List<int> numbers = [1, 2, 3, 3];
  String str = "heh";
  print('cau 1');
  print(sumEvenNumbers(numbers));
  print('cau 2');
  print(countPrimes(numbers));
  print('cau 3');
  print(isPalindrome(str));
  print('cau 4');
  print(secondLargest(numbers));
  print('cau 5');
  print(toBinary(156));
  print('cau 6');
  print(sortStringAlphabetically("hello"));
  print('cau 7');
  print(removeDuplicates(numbers));
  print('cau 8');
  print(mostFrequentElement(numbers));
  print('cau 9');
  print(countWords('John Tie'));
  print('cau 10');
  print(sumOfDigits(1234));
}
