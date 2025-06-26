import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/widgets/custom_divider.dart';
import '../../../../../../../core/widgets/custom_listview_builder.dart';
import 'specialty_filter_widget.dart';

class SpecialtyFilterChooseListWidget extends StatelessWidget
{
  const SpecialtyFilterChooseListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    final specialties =
    [
      "Dermatology",
      "Cardiology",
      "Orthopedics",
      "Neurology",
      "Pediatrics",
      "ENT",
      "Gynecology",
      "Urology",
      "Oncology",
      "Psychiatry",
      "Dentistry",
      "Endocrinology",
      "Nephrology",
      "Gastroenterology",
      "Rheumatology",
      "Ophthalmology",
      "Pulmonology",
      "Hematology",
      "Allergy & Immunology",
      "Anesthesiology",
      "Plastic Surgery",
      "General Surgery",
      "Family Medicine",
      "Infectious Diseases",
      "Internal Medicine",
    ];

    return CustomListviewBuilder(
      itemCount: specialties.length,
      itemBuilder: (context, index) => SpecialtyFilterChooseWidget(index: index, specialtyName: specialties[index],),
      separatorBuilder: (context, index) => Column(
        children:
        [
          Sizes.size5.verticalSpace,
          CustomDivider(endIndent: 30.w, indent: 30.w),
          Sizes.size5.verticalSpace,
        ],
      ),
    );
  }
}
