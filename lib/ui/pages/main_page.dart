import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_home.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 30,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_booking.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 30,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_card.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 30,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_settings.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 30,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Text(
            'Main Page',
          ),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
