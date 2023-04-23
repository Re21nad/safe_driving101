import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/read%20data/Guides/Guide1/toolsView.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class Tools1 extends StatefulWidget {
  @override
  _Tools1State createState() => _Tools1State();
}

class _Tools1State extends State<Tools1> {
  int counter = 4;

  @override
  Widget build(BuildContext context) {
    //create a CardController
    SwipeableCardSectionController _cardController =
        SwipeableCardSectionController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Tools using in the car',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 19,
            fontWeight: FontWeight.w700,
            height: 1.14,
            letterSpacing: -0.7000000834,
            color: Color(0xff000000),
          ),
        ),

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 22,
          ),
          Container(
            margin: EdgeInsets.only(left: 23, right: 23),
            width: double.infinity,
            child: Text(
              'There are many basic tools you need to use it in your car:\n (You can swap these cards to see all tools)',
              style: GoogleFonts.domine(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SwipeableCardsSection(
            cardController: _cardController,
            context: context,
            //add the first 3 cards
            items: [
              ToolsView(
                  title: "First card",
                  subtitle: "Subtitle 1",
                  description: "Description 1",
                  color: Colors.grey),
              ToolsView(
                  title: "Second card",
                  subtitle: "Subtitle 2",
                  description: "Description 2",
                  color: Colors.amber),
              ToolsView(
                title: "Third card",
                subtitle: "Subtitle 3",
                description: "Description 3",
                color: Colors.cyanAccent,
                image: 'images/image-24.png',
              ),
            ],
            onCardSwiped: (dir, index, widget) {
              //Add the next card
              if (counter <= 3) {
                _cardController.addItem(ToolsView(
                  title: "Card $counter",
                  subtitle: "Subtitle $counter",
                  description: "Description $counter",
                  color: Colors.tealAccent,
                ));
                counter++;
              }

              if (dir == Direction.left) {
                print('onDisliked ${(widget as ToolsView).title} $index');
              } else if (dir == Direction.right) {
                print('onLiked ${(widget as ToolsView).title} $index');
              } else if (dir == Direction.up) {
                print('onUp ${(widget as ToolsView).title} $index');
              } else if (dir == Direction.down) {
                print('onDown ${(widget as ToolsView).title} $index');
              }
            },
            enableSwipeUp: true,
            enableSwipeDown: true,
          ),

          SizedBox(
            height: 20,
          ),
          Container(
            width: 320,
            height: 50,
            child: ElevatedButton(
              child: Text(
                'Next',
                textAlign: TextAlign.center,
                style: GoogleFonts.rokkitt(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  height: 1.1375,
                  color: Color(0xffffffff),
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      20), // Adjust border radius as per your need
                ),
                primary:
                    Color(0xfc161853), // Set the background color of the button
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Skill()),);
              },
            ),
          ),

          SizedBox(
            height: 30,
          ),
          // Container(
          //   margin: EdgeInsets.symmetric(vertical: 20.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       FloatingActionButton(
          //         child: Icon(Icons.chevron_left),
          //         onPressed: () => _cardController.triggerSwipeLeft(),
          //       ),
          //       FloatingActionButton(
          //         child: Icon(Icons.chevron_right),
          //         onPressed: () => _cardController.triggerSwipeRight(),
          //       ),
          //       FloatingActionButton(
          //         child: Icon(Icons.arrow_upward),
          //         onPressed: () => _cardController.triggerSwipeUp(),
          //       ),
          //       FloatingActionButton(
          //         child: Icon(Icons.arrow_downward),
          //         onPressed: () => _cardController.triggerSwipeDown(),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
