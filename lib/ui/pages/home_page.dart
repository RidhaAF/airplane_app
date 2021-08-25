import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nRidha Ahmad',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestionations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              height: 320,
              width: 200,
              margin: EdgeInsets.only(left: defaultMargin),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                color: kWhiteColor,
              ),
              child: Column(
                children: [
                  Container(
                    height: 220,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      image: DecorationImage(
                        image: AssetImage('assets/image_destination1.png'),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(defaultMargin),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              margin: EdgeInsets.only(right: 2),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/icon_star.png'),
                                ),
                              ),
                            ),
                            Text(
                              '4.8',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestionations(),
      ],
    );
  }
}
