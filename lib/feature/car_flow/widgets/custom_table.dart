import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vee_car/core/resources/color_manager.dart';
import 'package:vee_car/core/widgets/custom_text.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({super.key, required this.carPrice, required this.annualRate});
  final double carPrice ;
  final double annualRate ;
  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(1.5),
        2: FlexColumnWidth(1.5),
        3: FlexColumnWidth(1.5),
      },
      border: TableBorder.all(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10.r),
      ),
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: ColorManager.baseColor.withValues(alpha: 0.1),
          ),
          children: _buildHeaderCells([
            'Month',
            'Interest',
            'After Int.',
            'Payment',
          ]),
        ),

        buildTableRow(1, 0.0, carPrice),
        buildTableRow(6, annualRate, carPrice),
        buildTableRow(12, annualRate, carPrice),
        buildTableRow(60, annualRate, carPrice),
      ],
    );
  }

  List<Widget> _buildHeaderCells(List<String> titles) {
    return titles
        .map(
          (title) => Padding(
            padding: EdgeInsets.all(8.0.r),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
        .toList();
  }

  TableRow buildTableRow(int months, double annualRate, double carPrice) {
    double totalInterestPercent = (annualRate / 12) * months;
    double totalAfterInterest = carPrice + (carPrice * totalInterestPercent);
    double monthlyPayment = totalAfterInterest / months;

    return TableRow(
      children: [
        _buildCell('$months'),
        _buildCell('${(totalInterestPercent * 100).toStringAsFixed(0)}%'),
        _buildCell(totalAfterInterest.toStringAsFixed(0)),
        _buildCell('${monthlyPayment.toStringAsFixed(0)} EGP'),
      ],
    );
  }

  Widget _buildCell(String text) {
    return Padding(
      padding: EdgeInsets.all(8.0.r),
      child: CustomText(
        text: text,
        color: ColorManager.black,
        fontWeight: FontWeight.w500,
        size: 13.sp,
      ),
    );
  }
}
