import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_45/models/expert.dart';
import 'package:test_45/view/widgets/custom_image_asset.dart';

class RecommendedExpertCartWidget extends StatefulWidget {
  final Expert expert;
  const RecommendedExpertCartWidget({
    super.key,
    required this.expert,
  });

  @override
  State<RecommendedExpertCartWidget> createState() =>
      _RecommendedExpertCartWidgetState();
}

class _RecommendedExpertCartWidgetState
    extends State<RecommendedExpertCartWidget> {
  late bool _isFavorite;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isFavorite = widget.expert.favorite;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      width: 45.w,
      margin: EdgeInsets.only(right: 5.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.w),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.h,
            width: 45.w,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.w),
                topRight: Radius.circular(5.w),
              ),
              child: CustomImageAsset(
                path: widget.expert.image,
                // path: 'assets/images/merna_photo.png',
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: const Color(0xFFFFC817),
                size: 5.w,
              ),
              Text(
                widget.expert.rate,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      // fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  setState(() {
                    _isFavorite = !_isFavorite;
                  });
                },
                child: Icon(
                  Icons.favorite,
                  color: _isFavorite ? Colors.red : Colors.grey,
                  size: 5.w,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              widget.expert.name,
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Supply Chain',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
