import 'package:flutter/material.dart';
import 'package:ecocycle/widget/appbar_widget.dart';
import 'package:ecocycle/widget/article1.dart';
import 'package:ecocycle/widget/howtouse_widget.dart';
import 'package:ecocycle/widget/pickup_widget.dart';
import 'package:ecocycle/widget/promotion_widget.dart';
import 'package:ecocycle/widget/wallet_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/image/bg2.png',
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: kToolbarHeight + 40),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const PickupWidget(),
                        const SizedBox(height: 20),
                        const WalletWidget(),
                        const SizedBox(height: 20),
                        Container(
                          width: 400,
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Column(
                            children: [
                              PromotionWidget(),
                              SizedBox(height: 20),
                              Article1(),
                              SizedBox(height: 20),
                              HowtouseWidget(),
                            ],
                          ),
                        ),
                      ],
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
}
