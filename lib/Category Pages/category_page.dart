import 'package:crown_shopping/Dresses/dress_listview_page.dart';
import 'package:crown_shopping/Hats/hat_listview_page.dart';
import 'package:crown_shopping/Men/mens_listview_page.dart';
import 'package:crown_shopping/Senakers/shoe_listview_page.dart';
import 'package:crown_shopping/Women/womens_listview_page.dart';
import 'package:crown_shopping/jackets/jackets_listview_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../BrandPage.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'CATEGORIES',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        Container(
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/banner.jpg',
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: 1,
            color: Colors.grey.shade500,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Center(
                child: Text(
                  'SHOP BY PRODUCTS',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return ShoeListPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: Container(
                          child: Center(
                            child: Text(
                              'SNEAKERS',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.2),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/SHOES.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.4325,
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return HatListPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: Container(
                          child: Center(
                            child: Text(
                              'HATS',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.2),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/HAT.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.4325,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return JacketListPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: Container(
                          child: Center(
                            child: Text(
                              'JACKETS',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.2),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/JACKET.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.4325,
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return DressListPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: Container(
                          child: Center(
                            child: Text(
                              'DRESS',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.2),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/DRESS.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.4325,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                color: Colors.grey.shade500,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'SHOP BY GENDER',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return MenListPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: Container(
                          child: Center(
                            child: Text(
                              'MEN',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.2),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/MEN.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.4325,
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return WomenListPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: Container(
                          child: Center(
                            child: Text(
                              'WOMEN',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.2),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/WOMEN.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.4325,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                color: Colors.grey.shade500,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'SHOP BY BRAND',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return BrandPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: Container(
                          child: Center(
                            child: Text(
                              'BRANDS',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.2),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/BRANDS.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 150,
                        width: 400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
