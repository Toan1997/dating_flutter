import 'package:flutter/material.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../signin/signin_screen.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();

}

class _BodyState extends State<Body>{
  PageController _pageController = PageController();
  int countSplashData = 0;
  int currentPage = 0;
  int nextCurrentPage = 0;
  List<Map<String,String>> splashData = [
    {
     "text": "Welcome to..",
     "image": "assets/images/splash_1.png",
    },
    {
      "text": "Welcome to...",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "Welcome to...",
      "image": "assets/images/splash_3.png",
    },
  ];
  void nextPage(){
    countSplashData = splashData.length;
    nextCurrentPage = _pageController.page!.toInt() + 1;
    _pageController.animateToPage(currentPage.toInt() + 1,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn
    );
    if(nextCurrentPage == countSplashData)
      Navigator.pushNamed(context, SigninScreen.routeName);
  }
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value){
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context,index) =>
                SplashContent(
                    text: splashData[index]['text']!,
                    image: splashData[index]['image']!,
                ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal: getProportionScreenWidth(20) ?? 0.0
              ),
              child: Column(
                  children: <Widget>[
                   Spacer(),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: List.generate
                       (splashData.length, (index) => buildDot(index: index)),
                   ),
                    Spacer(),
                    DefaultButton(
                      text: 'Continue',
                      press: () {
                        nextPage();
                      },
                    ),
                    Spacer(),
                  ],
              ),
            ),
          )
        ],
      ),
    );

  }
  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5,top: 5),
      height: 6,
      width: (currentPage == index) ? 20 : 6,
      decoration: BoxDecoration(
        color: (currentPage == index) ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

}




