import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/interest_item.dart';
import 'package:airplane_app/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image_destination1.png'),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.only(top: 250),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kTransparentColor,
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            children: [
              // NOTE: EMBLEM
              Container(
                height: 24,
                width: 100,
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_emblem.png'),
                  ),
                ),
              ),

              // NOTE: TITLE
              Container(
                margin: EdgeInsets.only(top: 260),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lake Ciliwung',
                            style: whiteTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Tangerang',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
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
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              // NOTE: DESCRIPTION
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // NOTE: ABOUT
                    Text(
                      'About',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Berada di jalur provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style: blackTextStyle.copyWith(
                        height: 2,
                      ),
                    ),

                    // NOTE: PHOTOS
                    SizedBox(height: 20),
                    Text(
                      'Photos',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        PhotoItem(
                          imageUrl: 'assets/image_photo1.png',
                        ),
                        PhotoItem(
                          imageUrl: 'assets/image_photo2.png',
                        ),
                        PhotoItem(
                          imageUrl: 'assets/image_photo3.png',
                        ),
                      ],
                    ),

                    // NOTE: INTEREST
                    SizedBox(height: 20),
                    Text(
                      'Interests',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        InterestItem(
                          text: 'Kids Park',
                        ),
                        InterestItem(
                          text: 'Honor Bridge',
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        InterestItem(
                          text: 'City Museum',
                        ),
                        InterestItem(
                          text: 'Central Mall',
                        ),
                      ],
                    ),
                  ],
                ),
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
          backgroundImage(),
          customShadow(),
          content(),
        ],
      ),
    );
  }
}
