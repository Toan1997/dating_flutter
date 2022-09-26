import 'package:dating_flutter/screens/home/components/tinder_card.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

import '../../size_config.dart';
import 'components/btn_floating_Action.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    int counter = 1;
    bool isCurrent = false;
    //create a SwipeableCardSectionController
    SwipeableCardSectionController _cardController =
    SwipeableCardSectionController();
    return Scaffold(
      appBar: AppBar(
        title: Text('aaa'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SwipeableCardsSection(
            cardController: _cardController,
            context: context,
            //add the first 3 cards (widgets)
            items: [
              TinderCard(text: 'Rosé',isCurrent: true),
              TinderCard(text: '123',isCurrent: isCurrent),
            ],
            //Get card swipe event callbacks
            onCardSwiped: (dir, index, widget) {
              //Add the next card using _cardController
              if (counter <= 10) {
                _cardController.addItem(
                  TinderCard(text: 'Abc'),
                );
                counter++;
              }

              if (dir == Direction.left) {
                print('onDisliked $index');
              } else if (dir == Direction.right) {
                print('onLiked$index');
              } else if (dir == Direction.up) {
                print('onUp  $index');
              } else if (dir == Direction.down) {
                print('onDown $index');
              }

              //Take action on the swiped widget based on the direction of swipe
              //Return false to not animate cards
            },
            //
            enableSwipeUp: true,
            enableSwipeDown: false,
          ),
        ],
      ),

      //other children
    );
  }
}
