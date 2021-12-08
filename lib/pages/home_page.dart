import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/models/tips.dart';
import 'package:cozy/widgets/bottom_navbar_item.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:cozy/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: Edge,
            ),
            // NOTE: Title / Header
            Padding(
              padding: EdgeInsets.only(left: Edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: Edge),
              child: Text(
                'Find Comfy Places',
                style: grayTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: Popular Cities
            Padding(
              padding: EdgeInsets.only(left: Edge),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/city1.png',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png',
                        isPopular: true),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/city3.png',
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            // NOTE: Recommended Space
            SizedBox(
              width: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: Edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Edge),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                        id: 1,
                        name: 'Holyplaces',
                        imageUrl: 'assets/space1.png',
                        price: 52,
                        city: "Jakarta",
                        province: "DKI Jakarta",
                        rating: 5),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                        id: 2,
                        name: 'Spirit',
                        imageUrl: 'assets/space2.png',
                        price: 12,
                        city: "Bandung",
                        province: "West Java",
                        rating: 3),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                        id: 3,
                        name: 'Croccoo',
                        imageUrl: 'assets/space3.png',
                        price: 46,
                        city: "Surabaya",
                        province: "East Java",
                        rating: 4),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: Tips & Guidance
            Padding(
              padding: EdgeInsets.only(left: Edge),
              child: Text(
                'Tips & Guidance',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                        id: 1,
                        title: 'City Guidelines',
                        imageUrl: 'assets/tips1.png',
                        updatedAt: '20 Apr'),
                  ),
                  SizedBox(height: 20),
                  TipsCard(
                    Tips(
                        id: 2,
                        title: 'Jakarta Guide',
                        imageUrl: 'assets/tips2.png',
                        updatedAt: '11 Jun'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70 + Edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * Edge),
        margin: EdgeInsets.symmetric(horizontal: Edge),
        decoration: BoxDecoration(
          color: Color(0xffF7F7F7),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
