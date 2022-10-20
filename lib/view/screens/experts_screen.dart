import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_45/view/widgets/custom_image_asset.dart';
import 'package:test_45/view/widgets/double_vertical_dividers_widget.dart';
import 'package:test_45/view/widgets/experts_screen_top_widget.dart';
import 'package:test_45/view/widgets/online_experts_widget.dart';
import 'package:test_45/view/widgets/recommended_experts_widget.dart';
import 'package:test_45/view/widgets/sheet_item_cart_widget.dart';

class ExpertsScreen extends StatefulWidget {
  const ExpertsScreen({super.key});

  @override
  State<ExpertsScreen> createState() => _ExpertsScreenState();
}

class _ExpertsScreenState extends State<ExpertsScreen> {
  List<String> iconsList = [
    'assets/images/information_technology_logo.png',
    'assets/images/supply_chain_logo.png',
    'assets/images/security_logo.png',
    'assets/images/hr_logo.png',
    'assets/images/immigration_logo.png',
    'assets/images/translation_logo.png',
  ];
  List<String> titleList = [
    'Information Technology',
    'Supply Chain',
    'Security',
    'Human Resources',
    'Immigration',
    'Translation',
  ];
  List<String> subtitleList = [
    '23',
    '12',
    '14',
    '8',
    '18',
    '3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Stack(
            children: [
              SizedBox(
                height: 84.h,
                width: 100.w,
                child: ExpandableBottomSheet(
                  background: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      children: const [
                        ExpertsScreenTopWidget(),
                        RecommendedExpertsWidget(),
                        OnlineExpertsWidget(),
                      ],
                    ),
                  ),
                  persistentHeader: Container(
                    height: 3.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7.w),
                        topRight: Radius.circular(7.w),
                      ),
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 0.5.h,
                        width: 15.w,
                        child: const CustomImageAsset(
                            path: 'assets/images/sheet_icon.png'),
                      ),
                    ),
                  ),
                  expandableContent: Container(
                    height: 80.h,
                    color: Colors.white,
                    child: ListView.builder(
                      itemBuilder: (context, index) => SheetItemCartWidget(
                          title: titleList[index],
                          numberOfExperts: subtitleList[index],
                          leadingIcon: iconsList[index]),
                      itemCount: iconsList.length,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  height: 8.h,
                  width: 100.w,
                  child: const CustomImageAsset(
                      path: 'assets/images/tab_menu.png'),
                ),
              ),
              const DoubleVerticalDividers(),
            ],
          ),
        ),
      ),
    );
  }
}
