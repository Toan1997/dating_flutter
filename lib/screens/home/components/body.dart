import 'package:dating_flutter/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:photo_card_swiper/models/photo_card.dart';
import 'package:photo_card_swiper/photo_card_swiper.dart';

class Body extends StatefulWidget{

  List<PhotoCard> _photos = [
    PhotoCard(
        title: 'Rosé',
        description: 'A man with million hearts.',
        imagePath: 'assets/images/rose.jpg',
        cardId: '1'),
    PhotoCard(
        title: 'Rosé',
        description: 'assets/images/rose2.jpg',
        imagePath: 'assets/images/rose2.jpg',
        cardId: '2'),
    PhotoCard(
        title: 'Rosé',
        description: 'An mathematics pioneer.',
        imagePath: 'assets/images/rose3.jpg',
        cardId: '3'),
    PhotoCard(
        title: 'Rosé',
        description: 'A skin specialist who treats patients for Rs 5.',
        imagePath: 'assets/images/rose4.jpg',
        cardId: '4'),
  ];
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                NoMoreDataWidget(),
                //Call PhotoCardSwiper widget here
                PhotoCardSwiper(
                  photos: widget._photos,
                  cardSwiped: _cardSwiped,
                  showLoading: true,
                  hideCenterButton: false,
                  hideTitleText: false,
                  hideDescriptionText: false,
                  imageScaleType: BoxFit.cover,
                  imageBackgroundColor: Colors.grey,
                  leftButtonIcon: Icons.close,
                  rightButtonIcon: Icons.check,
                  centerButtonIcon: Icons.favorite,
                  leftButtonBackgroundColor: Colors.red[100],
                  leftButtonIconColor: Colors.red[600],
                  centerButtonBackgroundColor: Colors.lightBlue[50],
                  centerButtonIconColor: Colors.lightBlue[600],
                  rightButtonBackgroundColor: Colors.lightGreen[100],
                  rightButtonIconColor: Colors.lightGreen[700],
                  leftButtonAction: _leftButtonClicked,
                  centerButtonAction: _centerButtonClicked,
                  rightButtonAction: _rightButtonClicked,
                  onCardTap: _onCardTap,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  void _loadMorePhotos() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        //Images from local Images folder
        widget._photos = [
          PhotoCard(
            title: 'Salumarada Thimmakka',
            description: 'A inspiring  environmentalist.',
            imagePath: 'images/pic_1.jpg',
            cardId: '5',
          ),
          PhotoCard(
            title: 'Kareem Bhai',
            description: 'An Unsung hero.',
            imagePath: 'images/pic_3.jpg',
            cardId: '6',
          ),
        ];
      });
    });
  }

//Callbacks from  SwipeCardsLayoutWidget
  void _onCardTap(int _index) {
    print('Card with index $_index is Tapped.');
    //Here you can navigate to detail screen or so.
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context){
          return ProfileScreen();
        },
      ),
    );
  }

  void _cardSwiped(CardActionDirection _direction, int _index) {
    print('Swiped Direction ${_direction.toString()} Index $_index');
    //This is just an example to show how one can load more cards.
    //you can skip using this method if you have predefined list of photos array.
    if (_index == (widget._photos.length - 1)) {
      _loadMorePhotos();
    }
  }

  void _leftButtonClicked() {
    print('Left button clicked');
  }

  void _centerButtonClicked() {
    print('Center button clicked');
  }

  void _rightButtonClicked() {
    print('Right button clicked');
  }
}

//Secondary Widgets
class NoMoreDataWidget extends StatelessWidget {
  const NoMoreDataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150,
        child: Column(
          children: [
            Icon(
              Icons.error,
              size: 60.0,
              color: Colors.grey,
            ),
            Text(
              'No more data found.',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.grey[400],
              ),
            )
          ],
        ),
      ),
    );
  }
}











