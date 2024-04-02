import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class QuestionModel {
  final String? question;
  final List<String>? options;
  final int? answerIndex;

  const QuestionModel({this.question, this.options, this.answerIndex});
}

class _QuizAppState extends State {
  List allQuestions = [
    const QuestionModel(
      question:
          "What is the time complexity of inserting an element at the end of an array of size N?",
      options: ["O(1)", "O(log N)", "O(N)", "O(N^2)"],
      answerIndex: 0,
    ),
    const QuestionModel(
      question:
          " What data structure uses FIFO (First In, First Out) principle?",
      options: ["Queue", "Stack", "Linked List", "Tree"],
      answerIndex: 1,
    ),
    const QuestionModel(
      question:
          "What data structure uses FIFO (First In, First Out) principle?",
      options: ["Queue", "Stack", "Linked List", "Tree"],
      answerIndex: 2,
    ),
    const QuestionModel(
      question:
          "What is the worst-case time complexity of searching for an element in a binary search tree (BST) of height H?",
      options: ["O(H)", "O(log N)", "O(N)", "O(NlogN)"],
      answerIndex: 0,
    ),
    const QuestionModel(
      question:
          " Which data structure is typically used to implement priority queues?",
      options: ["Stack", "Queue", "Linked List", "Heap"],
      answerIndex: 3,
    ),
  ];

  bool questionScreen = true;
  int questionIndex = 0;
  int correctAnswers = 0;
  int selectedAnswer = -1;

  MaterialStatePropertyAll<Color?> getAnswer(int buttonIndex) {
    if (selectedAnswer != -1) {
      if (buttonIndex == allQuestions[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedAnswer) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void checkValidation() {
    if (selectedAnswer == -1) {
      return;
    }
    if (selectedAnswer == allQuestions[questionIndex].answerIndex) {
      correctAnswers += 1;
    }
    if (selectedAnswer != -1) {
      if (questionIndex == allQuestions.length - 1) {
        questionScreen = false;
      }
    }

    setState(() {
      questionIndex++;
      selectedAnswer = -1;
    });
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Column(children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Questions : ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "${questionIndex + 1}/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Text(
              allQuestions[questionIndex].question,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: const MaterialStatePropertyAll(Size(300, 0)),
              backgroundColor: (getAnswer(0)),
            ),
            onPressed: () {
              if (selectedAnswer == -1) {
                setState(() {
                  selectedAnswer = 0;
                });
              }
            },
            child: Text(
              "A. ${allQuestions[questionIndex].options[0]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: const MaterialStatePropertyAll(Size(300, 0)),
              backgroundColor: (getAnswer(1)),
            ),
            onPressed: () {
              if (selectedAnswer == -1) {
                setState(() {
                  selectedAnswer = 1;
                });
              }
            },
            child: Text(
              "B. ${allQuestions[questionIndex].options[1]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: const MaterialStatePropertyAll(Size(300, 0)),
              backgroundColor: (getAnswer(2)),
            ),
            onPressed: () {
              if (selectedAnswer == -1) {
                setState(() {
                  selectedAnswer = 2;
                });
              }
            },
            child: Text(
              "C. ${allQuestions[questionIndex].options[2]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: const MaterialStatePropertyAll(Size(300, 0)),
              backgroundColor: (getAnswer(3)),
            ),
            onPressed: () {
              if (selectedAnswer == -1) {
                setState(() {
                  selectedAnswer = 3;
                });
              }
            },
            child: Text(
              "D. ${allQuestions[questionIndex].options[3]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            checkValidation();
          },
          backgroundColor: Colors.grey,
          child: const Icon(
            Icons.forward,
            color: Colors.black,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Image.network(
                    "https://img.freepik.com/free-vector/winner-background-first-place-competition_91128-1587.jpg?w=740&t=st=1707711376~exp=1707711976~hmac=68084c56d3298c5c9f7f4d51d92b9d039b16758413cb2954951d1d5d962fd227"),
              ),
              const Text(
                "Congratulations!!!!!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "You have Completed the Quiz",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              Text(
                "Score : $correctAnswers/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    questionIndex = 0;
                    correctAnswers = 0;
                    selectedAnswer = -1;
                    questionScreen = true;
                  });
                },
                style: const ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(300, 30)),
                  backgroundColor: MaterialStatePropertyAll(Colors.amber),
                ),
                child: const Text("Reset"),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}