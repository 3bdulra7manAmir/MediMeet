import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RateStars extends StatefulWidget
{
  final double initialValue;
  final double? maxRating;
  final int? starCount;
  final double? itemSize;
  final bool? allowHalfRating;
  final EdgeInsetsGeometry? itemPadding;
  final Color? unratedColor;
  final bool? glow;
  final bool? updateOnDrag;
  final ValueChanged<double>? onChanged;

  const RateStars({
    super.key,
    this.initialValue = 1.5,
    this.maxRating,
    this.starCount,
    this.itemSize,
    this.allowHalfRating,
    this.itemPadding,
    this.unratedColor,
    this.glow,
    this.updateOnDrag,
    this.onChanged,
  });

  @override
  State<RateStars> createState() => _RateStarsState();
}

class _RateStarsState extends State<RateStars>
{
  late double _value;

  @override
  void initState()
  {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context)
  {
    return RatingBar.builder(
      initialRating: _value,
      maxRating: widget.maxRating ?? 5,
      itemCount: widget.starCount ?? 5,
      itemSize: widget.itemSize ?? 20,
      allowHalfRating: widget.allowHalfRating ?? true,
      itemPadding: widget.itemPadding ?? EdgeInsets.symmetric(horizontal: 4.0.w),
      unratedColor: widget.unratedColor ?? Colors.grey[300],
      glow: widget.glow ??false,
      updateOnDrag: widget.updateOnDrag ?? true,
      itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber,),
      onRatingUpdate: (rating)
      {
        setState(() => _value = rating);
        widget.onChanged?.call(rating);
      },
    );
  }
}
