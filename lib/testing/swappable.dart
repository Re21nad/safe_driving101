//import 'package:example/card_view.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

import 'card-view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 4;

  @override
  Widget build(BuildContext context) {
    //create a CardController
    SwipeableCardSectionController _cardController =
    SwipeableCardSectionController();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SwipeableCardsSection(
          //   cardController: _cardController,
          //   context: context,
          //   //add the first 3 cards
          //   items: [
          //     CardView(text: "First card", color: Colors.grey),
          //     CardView(text: "Second card", color: Colors.amber),
          //     CardView(text: "Third card", color: Colors.cyanAccent),
          //   ],
          //   onCardSwiped: (dir, index, widget) {
          //     //Add the next card
          //     if (counter <= 3) {
          //       _cardController.addItem(CardView(text: "Card $counter", color: Colors.tealAccent,));
          //       counter++;
          //     }
          //
          //     if (dir == Direction.left) {
          //       print('onDisliked ${(widget as CardView).text} $index');
          //     } else if (dir == Direction.right) {
          //       print('onLiked ${(widget as CardView).text} $index');
          //     } else if (dir == Direction.up) {
          //       print('onUp ${(widget as CardView).text} $index');
          //     } else if (dir == Direction.down) {
          //       print('onDown ${(widget as CardView).text} $index');
          //     }
          //   },
          //   enableSwipeUp: true,
          //   enableSwipeDown: true,
          // ),

          SwipeableCardsSection(
            cardController: _cardController,
            context: context,
            //add the first 3 cards
            items: [
              CardView(
                  title: "First card",
                  subtitle: "Subtitle 1",
                  description: "Description 1",
                  color: Colors.grey
              ),
              CardView(
                  title: "Second card",
                  subtitle: "Subtitle 2",
                  description: "Description 2",
                  color: Colors.amber
              ),
              CardView(
                  title: "Third card",
                  subtitle: "Subtitle 3",
                  description: "Description 3",
                  color: Colors.cyanAccent
              ),
            ],
            onCardSwiped: (dir, index, widget) {
              //Add the next card
              if (counter <= 3) {
                _cardController.addItem(CardView(
                  title: "Card $counter",
                  subtitle: "Subtitle $counter",
                  description: "Description $counter",
                  color: Colors.tealAccent,
                ));
                counter++;
              }

              if (dir == Direction.left) {
                print('onDisliked ${(widget as CardView).title} $index');
              } else if (dir == Direction.right) {
                print('onLiked ${(widget as CardView).title} $index');
              } else if (dir == Direction.up) {
                print('onUp ${(widget as CardView).title} $index');
              } else if (dir == Direction.down) {
                print('onDown ${(widget as CardView).title} $index');
              }
            },
            enableSwipeUp: true,
            enableSwipeDown: true,
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  child: Icon(Icons.chevron_left),
                  onPressed: () => _cardController.triggerSwipeLeft(),
                ),
                FloatingActionButton(
                  child: Icon(Icons.chevron_right),
                  onPressed: () => _cardController.triggerSwipeRight(),
                ),
                FloatingActionButton(
                  child: Icon(Icons.arrow_upward),
                  onPressed: () => _cardController.triggerSwipeUp(),
                ),
                FloatingActionButton(
                  child: Icon(Icons.arrow_downward),
                  onPressed: () => _cardController.triggerSwipeDown(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}