import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  Random rand = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Lottery App'),
            backgroundColor: Colors.pink,
            centerTitle: true,
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 const Center(
                  child: Text('The winning number is 4',
                      style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0,), 
                  child: Container(
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                          color: x == 4 ? Colors.teal : const Color.fromARGB(255, 226, 194, 205),
                          borderRadius: BorderRadius.circular(20)),
                      child: x == 4
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const[
                                  Icon(
                                    Icons.done_all,
                                    color:  Colors.green,
                                    size: 35,
                                  ),
                                   SizedBox(
                                    height: 30,
                                  ),
                                  Text('congratulation'),
                                   Icon(Icons.card_giftcard)
                                ])
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                  const Icon(
                                    Icons.error,
                                    color: Colors.red,
                                    size: 35,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(14),
                                    
                                    child: Text(
                                        'Best luck for next time your number is $x',
                                        textAlign: TextAlign.center,),
                                  ),

                                  // Text(
                                  //     'Best Luck For Next Time \nYour Number is $x Try again '),
                                  const Icon(Icons.sms)
                                ])),
                ),
              ]),
          floatingActionButton : FloatingActionButton (
            onPressed: (() {
              x = rand.nextInt(6);
              setState(() {});
            }),
            child: Icon (Icons.play_arrow),
            backgroundColor: Colors.pink,
          ),
        ));
  }
}
