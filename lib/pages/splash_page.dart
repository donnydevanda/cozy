import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/splash_image.png')),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/logo.png'))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Find Cozy Home\nto Stay and Happy',
                      style: blackTextStyle.copyWith(fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Stop wasting time to find unhabitable places',
                      style: grayTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        width: 210,
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {},
                          color: purpleColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17)),
                          child: Text(
                            'Explore Now',
                            style: whiteTextStyle.copyWith(fontSize: 18),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
