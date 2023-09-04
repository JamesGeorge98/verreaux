import 'package:flutter/material.dart';
import 'package:verreaux/core/constants/app_assets.dart';
import 'package:verreaux/features/widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  @override
  void initState() {
    _scrollController.addListener(() {
      _scrollController2.animateTo(_scrollController.offset - 200,
          curve: Curves.easeInOut, duration: const Duration(microseconds: 500));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Image.asset(
                AppAssets.homepage2,
                fit: BoxFit.cover,
              )),
              Expanded(
                  child: Image.asset(
                AppAssets.homepage2,
                color: Colors.transparent,
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.modulate,
              )),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Image.asset(
                AppAssets.homepage2,
                color: Colors.transparent,
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.modulate,
              )),
              Expanded(
                  child: Image.asset(
                AppAssets.homepage1,
                fit: BoxFit.cover,
              )),
            ],
          ),
          const VerreauxAppBar(),
        ],
      ),
    ));
  }
}
