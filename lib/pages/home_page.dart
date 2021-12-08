import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:flutter/material.dart';
import 'package:cozy/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: Edge),
            child: ListView(
              children: [
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
                )
              ],
            ),
          )),
    );
  }
}
