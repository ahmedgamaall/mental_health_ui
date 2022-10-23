import 'package:flutter/material.dart';
import 'package:mental_health_app/util/emoticon_face.dart';
import 'package:mental_health_app/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  // greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi, Jared!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi, Jared!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '24 Sep, 2022',
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),

                      // Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),

                  // search bar
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        fillColor: Colors.blue[600],
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 24,
                        ),
                        hintStyle: const TextStyle(color: Colors.white),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),

                  // how do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  // 4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      // bad
                      EmoticonFace(emoticonFace: '😣', feel: 'Bad'),
                      // fine
                      EmoticonFace(emoticonFace: '🙂', feel: 'Fine'),
                      // well
                      EmoticonFace(emoticonFace: '😄', feel: 'Well'),
                      // excellent
                      EmoticonFace(emoticonFace: '🥳', feel: 'Excellent'),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Exercises',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                        ),
                      ],
                    ),

                    // ListView of exercises
                    Expanded(
                      child: ListView(
                        children: const [
                          ExerciseTile(
                            icon: Icons.favorite,
                            exerciseName: 'Speaking Skills',
                            numberOfExercises: 16,
                            color: Colors.orange,
                          ),
                          ExerciseTile(
                            icon: Icons.person,
                            exerciseName: 'Reading Skills',
                            numberOfExercises: 8,
                            color: Colors.green,
                          ),
                          ExerciseTile(
                            icon: Icons.star,
                            exerciseName: 'Writing Skills',
                            numberOfExercises: 20,
                            color: Colors.pink,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
