import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class RateStars extends StatefulWidget
{
  final double initialValue;
  final ValueChanged<double>? onChanged;

  const RateStars({
    super.key,
    this.initialValue = 0.0,
    this.onChanged,
  });

  @override
  State<RateStars> createState() => _RateStarsState();
}

class _RateStarsState extends State<RateStars>
{
  late double value;

  @override
  void initState()
  {
    super.initState();
    value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context)
  {
    return RatingStars(
      value: value,
      onValueChanged: (v)
      {
        setState(() {value = v;});
        widget.onChanged?.call(v);
      },
      //starCount: 5,
      starSize: 30,
      starSpacing: 4,
      //maxValue: 5,
      maxValueVisibility: false,
      valueLabelVisibility: false,
      animationDuration: const Duration(milliseconds: 400),
      starOffColor: Colors.grey[300]!,
      starColor: Colors.amber,
    );
  }
}
