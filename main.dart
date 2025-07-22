import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int correct = 0, wrong = 0, total = 0;
  String choice;

  while (true) {
    int num1 = random.nextInt(20), num2 = random.nextInt(20), uesrSum;
    print('$num1 + $num2 = ........');
    uesrSum = int.parse(stdin.readLineSync()!);

    if (uesrSum == num1 + num2) {
      print('Correct Answer!\n');
      correct++;
    } else {
      print('Wrong Answer. The correct answer is: ${num1 + num2}\n');
      wrong++;
    }

    total++;

    print('Do you want to continue? (yes / no)');
    choice = stdin.readLineSync()!;
    if (choice.toLowerCase()!= 'yes') break;
  }

  double percentage = (correct / total) * 100;

  print('\n Game Over');
  print('Correct Answers: $correct');
  print('Wrong Answers: $wrong');
  print('Your Score: $percentage %');

  if (percentage >= 50)
    print('You passed.');
  else
    print('Try again.');
}
