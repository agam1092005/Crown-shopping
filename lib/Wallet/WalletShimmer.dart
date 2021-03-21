import 'dart:async';

import 'package:crown_shopping/Wallet/Wallet.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class WalletLoading extends StatefulWidget {
  @override
  _WalletLoadingState createState() => _WalletLoadingState();
}

class _WalletLoadingState extends State<WalletLoading> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionsBuilder: (context, animation, animationTime, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          pageBuilder: (context, animation, animationTime) {
            return WalletPage();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Shimmer(
                      duration: Duration(milliseconds: 800),
                      color: Colors.grey[600],
                      child: Container(
                        height: 30,
                        width: 30,
                        color: Colors.grey[300],
                      ),
                      direction: ShimmerDirection.fromLTRB(),
                    ),
                    Shimmer(
                      duration: Duration(milliseconds: 800),
                      color: Colors.grey[600],
                      child: Container(
                        height: 30,
                        width: 30,
                        color: Colors.grey[300],
                      ),
                      direction: ShimmerDirection.fromLTRB(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Shimmer(
                      duration: Duration(milliseconds: 800),
                      color: Colors.grey[600],
                      child: Container(
                        height: 45,
                        width: 150,
                        color: Colors.grey[300],
                      ),
                      direction: ShimmerDirection.fromLTRB(),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Shimmer(
                      duration: Duration(milliseconds: 800),
                      color: Colors.grey[600],
                      child: Container(
                        height: 30,
                        width: 30,
                        color: Colors.grey[300],
                      ),
                      direction: ShimmerDirection.fromLTRB(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Shimmer(
                  duration: Duration(milliseconds: 800),
                  color: Colors.grey[600],
                  child: Container(
                    height: 30,
                    width: 130,
                    color: Colors.grey[300],
                  ),
                  direction: ShimmerDirection.fromLTRB(),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 2,
                  color: Colors.black45,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Shimmer(
                        duration: Duration(milliseconds: 800),
                        color: Colors.grey[600],
                        child: Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                12,
                              ),
                            ),
                          ),
                        ),
                        direction: ShimmerDirection.fromLTRB(),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                     ),
                    Flexible(
                       child: Shimmer(
                        duration: Duration(milliseconds: 800),
                        color: Colors.grey[600],
                        child: Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                12,
                              ),
                            ),
                          ),
                        ),
                        direction: ShimmerDirection.fromLTRB(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Shimmer(
                  duration: Duration(milliseconds: 800),
                  color: Colors.grey[600],
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          12,
                        ),
                      ),
                    ),
                  ),
                  direction: ShimmerDirection.fromLTRB(),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 2,
                  color: Colors.black45,
                ),
                SizedBox(
                  height: 20,
                ),
                Shimmer(
                  duration: Duration(milliseconds: 800),
                  color: Colors.grey[600],
                  child: Container(
                    height: 50,
                    width: 160,
                    color: Colors.grey[300],
                  ),
                  direction: ShimmerDirection.fromLTRB(),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: Shimmer(
                    duration: Duration(milliseconds: 800),
                    color: Colors.grey[600],
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            12,
                          ),
                        ),
                      ),
                    ),
                    direction: ShimmerDirection.fromLTRB(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
