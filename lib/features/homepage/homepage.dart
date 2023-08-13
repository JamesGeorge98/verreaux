import 'package:flutter/material.dart';
import 'package:verreaux/core/constants/app_assets.dart';
import 'package:verreaux/features/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Image.asset(AppAssets.homepage1)),
                  Expanded(child: Image.asset(AppAssets.homepage2))
                ],
              ),
              const VerreauxAppBar(),
            ],
          ),
          const Placeholder(),
          const Placeholder(),
        ],
      ),
    ));
  }
}
