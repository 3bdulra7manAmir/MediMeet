import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateStars extends StatefulWidget
{
  final double initialValue;
  final ValueChanged<double>? onChanged;
  final double itemSize;
  final int starCount;
  final bool allowHalfRating;

  const RateStars({
    super.key,
    this.initialValue = 1.5,
    this.onChanged,
    this.itemSize = 30,
    this.starCount = 5,
    this.allowHalfRating = true,
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
      maxRating: 5,
      //minRating: 0,
      //direction: Axis.horizontal,
      
      itemCount: widget.starCount,
      itemSize: widget.itemSize,
      unratedColor: Colors.grey[300],
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),

      glow: false,
      allowHalfRating: widget.allowHalfRating,
      updateOnDrag: true,

      itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber,),
      onRatingUpdate: (rating)
      {
        setState(() => _value = rating);
        widget.onChanged?.call(rating);
      },
    );
  }
}
