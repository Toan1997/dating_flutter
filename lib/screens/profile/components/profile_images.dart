import 'package:dating_flutter/models/profile.dart';
import 'package:dating_flutter/screens/profile/components/top_rounded_container.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProfileImages extends StatefulWidget {
  final Profile profile;
  const ProfileImages({
    Key? key,
    required this.profile,
  }) : super(key: key);
  @override
  State<ProfileImages> createState() => _ProfileImagesState();
}

class _ProfileImagesState extends State<ProfileImages> {
  final CarouselController _controller = CarouselController();
  int selectedImage = 0;
  int countImageData = 0;
  int currentPage = 0;
  int nextCurrentPage = 0;
  void nextPage() {
    countImageData = widget.profile.images.length;
  }
    @override
    Widget build(BuildContext context) {
      return Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Expanded(
                  child: CarouselSlider(
                    items: widget.profile.images.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return  Container(
                              width: MediaQuery.of(context).size.width,
                              child:ClipRRect(
                                child: Image.asset(i,fit: BoxFit.cover),
                              )
                          );
                        },
                      );
                    }).toList(),
                    carouselController: _controller,
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentPage = index;
                          });
                        },
                        height: getProportionScreenHeight(500),
                        viewportFraction: 1.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.profile.images.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8,
                    height: 8,
                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentPage == entry.key ? kPrimaryColor :Colors.white),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      );
    }
}
