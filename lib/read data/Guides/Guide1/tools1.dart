import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/read%20data/Guides/Guide1/padels.dart';
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
              'There are many basic tools you need to use it in your car:\n (You can drag these cards to see all tools)',
              style: GoogleFonts.domine(
                fontWeight: FontWeight.w700,
                fontSize: 13,
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
                title: "First Tool",
                subtitle: "Steering Wheel",
                description:
                    "  The wheel is a circle and is the first thing you notice in front of the driver. The vehicle's front wheels' movements will be controlled by it. In order to control the car and the rotation of its wheels, the driver must have your hands on him and grip him firmly",
                color: Colors.grey.shade300,
                image: 'images/steering wheel.jpg',
              ),
              ToolsView(
                  title: "Second Tool",
                  subtitle: "Brakes",
                  description:
                      "The vehicle's brakes are used to bring it to a halt and make sure it stays stopped. In some cars, the manual brake is located next to the transmission and is in the shape of a retractable lever. In other cars, the manual brake is an electronic switch with the letter P painted on it that must be depressed to operate.",
                  color: Colors.pink.shade100),
              ToolsView(
                title: "Third Tool",
                subtitle: "Mirror",
                description:
                    "Three mirrors are present inside the car, two of which are placed on either side so you can see everything that is outside on either side, and the third is in the middle, directly in front of you. The mirror is designed specifically to look out the back window of the car and view everything behind it.",
                color: Colors.cyanAccent,
                //image: 'images/mirror.jpg',
              ),
            ],
            onCardSwiped: (dir, index, widget) {
              //Add the next card
              if (counter <= 6) {
                switch (counter) {
                  case 4:
                    _cardController.addItem(
                      ToolsView(
                        title: "Forth Tool",
                        subtitle: "Lighting and Signs",
                        description:
                            "The lever that controls the lights and traffic lights is located between the gasoline and gauges on the left and is just as crucial as the seat belt because using it alerts everyone around you to the direction you will be traveling in, allowing them to make room for you.",
                        color: Colors.indigo.shade100,
                      ),
                    );
                    break;
                  case 5:
                    _cardController.addItem(
                      ToolsView(
                        title: "Fifth Tool",
                        subtitle: "Airbags",
                        description:
                            "A cushion consisting of thin nylon fabric folded over the inside of the steering wheel or on the dashboard. In the event of an accident, it seeks to prevent collision with the hard interior components of the car.",
                        color: Colors.orange.shade100,
                        image: 'images/airbags.jpg',
                      ),
                    );
                    break;
                  case 6:
                    _cardController.addItem(
                      ToolsView(
                        title: "Seventh Tool",
                        subtitle: "Vehicle gauges",
                        description:
                            "There are several measuring tools that give you information about the car in front of the vehicle commander and behind the wheel. A fuel gauge, a speedometer, and a third gauge that displays the number of engine revolutions per minute are all present. The fuel gauge displays the amount of fuel that is currently available. The engine of the car also has a temperature-measuring device.",
                        color: Colors.green.shade100,
                      ),
                    );
                }
                counter++;
              }
              // if (counter <= 5) {
              //   _cardController.addItem(ToolsView(
              //     title: "Card $counter",
              //     subtitle: "Subtitle $counter",
              //     description: "Description $counter",
              //     color: Colors.tealAccent,
              //   ));
              //   counter++;
              // }

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
                //   MaterialPageRoute(builder: (context) => Padels()),);
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return Padels();
                    },
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      // Use SharedAxisTransition for the transition animation
                      return SharedAxisTransition(
                        animation: animation,
                        transitionType: SharedAxisTransitionType.horizontal, // Choose the desired transition type
                        secondaryAnimation: secondaryAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
