import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optimob2b/shared/controllers/session.controller.dart';
import 'package:optimob2b/shared/controllers/widget.controller.dart';
import 'package:optimob2b/shared/helpers/utils.dart';
import 'package:optimob2b/shared/models/chartdata.model.dart';
import 'package:optimob2b/shared/models/widgets/incomes.model.dart';
import 'package:optimob2b/shared/models/widgets/widget.response.model.dart';
import 'package:optimob2b/shared/widgets/appdrawer.dart';
import 'package:optimob2b/themes/themes.dart';
import 'package:shimmer/shimmer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class AdminHomePage extends GetView<WidgetController> {
  AdminHomePage({Key? key}) : super(key: key);

  final SessionController sessionController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: primarySwatch[300],
        appBar: AppBar(
          systemOverlayStyle: getStatusBarTheme(context),
          centerTitle: true,
          title: Text("Administrator365"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Badge(
                position: BadgePosition.topEnd(top: -10, end: -5),
                padding: EdgeInsets.all(4),
                badgeContent: Text(
                  "",
                  style: GoogleFonts.poppins(color: Colors.black54, fontSize: 12),
                ),
                child: Icon(
                  Icons.notifications_outlined,
                ),
                badgeColor: Get.isDarkMode ? Colors.white : Color(primaryColor),
                elevation: 0,
              ),
            ),
          ],
        ),
        drawer: AppDrawer(),
        body: FutureBuilder<WidgetResponse?>(
          future: controller.getIncomes(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return _loading(context);
            }
            if (snapshot.data != null) {
              var wigetResponse = snapshot.data!;
              return SingleChildScrollView(
                padding: EdgeInsets.all(7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardTheme.color,
                            border: Border.all(color: Colors.black12, width: 1),
                            borderRadius: BorderRadius.circular(5),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Theme.of(context).primaryColor.withOpacity(0.1),
                            //     spreadRadius: 2,
                            //     blurRadius: 10,
                            //     // offset: Offset(1, -1),
                            //   ),
                            // ],
                          ),
                          padding: EdgeInsets.all(10),
                          height: 100.h,
                          width: 164.5.h,
                          child: Column(
                            children: [
                              Icon(Icons.savings_outlined),
                              SizedBox(height: 5),
                              Text(
                                "MARŻA OPERATORA",
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 10),
                              Text(
                                numberFormatter.format(snapshot.data!.operatorCurrentMonthMargin) + " PLN",
                                style: GoogleFonts.rajdhani(fontWeight: FontWeight.w700, fontSize: 18.h),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardTheme.color,
                            border: Border.all(color: Colors.black12, width: 1),
                            borderRadius: BorderRadius.circular(5),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Theme.of(context).primaryColor.withOpacity(0.1),
                            //     spreadRadius: 2,
                            //     blurRadius: 10,
                            //   ),
                            // ],
                          ),
                          padding: EdgeInsets.all(10),
                          height: 100.h,
                          width: 164.5.h,
                          child: Column(
                            children: [
                              Icon(
                                Icons.monetization_on_outlined,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "OBRÓT OPERATORA",
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 10),
                              Text(
                                numberFormatter.format(snapshot.data!.operatorCurrentMonthIncome) + " PLN",
                                style: GoogleFonts.rajdhani(fontWeight: FontWeight.w700, fontSize: 18.h),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardTheme.color,
                        border: Border.all(color: Colors.black12, width: 1),
                        borderRadius: BorderRadius.circular(5),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: primarySwatch[800]!.withOpacity(0.6),
                        //     spreadRadius: 5,
                        //     blurRadius: 10,
                        //   ),
                        // ],
                      ),
                      height: 250.h,
                      width: double.infinity,
                      child: SfTheme(
                        data: SfThemeData(brightness: Get.isDarkMode ? Brightness.dark : Brightness.light),
                        child: SfCircularChart(
                          annotations: <CircularChartAnnotation>[
                            CircularChartAnnotation(
                              widget: Container(
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                  // color: Theme.of(context).scaffoldBackgroundColor,
                                  // color: primarySwatch[300],
                                  shape: BoxShape.circle,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Theme.of(context).primaryColor.withOpacity(0.3),
                                  //     spreadRadius: 8,
                                  //     blurRadius: 8,
                                  //   ),
                                  // ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "OBRÓT",
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      numberFormatter.format(wigetResponse.currentMonthIncome),
                                      style: GoogleFonts.poppins(fontSize: 12.h, fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                          // title: ChartTitle(
                          //   text: "ZESTAWIENIE MIESIĘCZNE",
                          //   textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 10.h, color: Colors.black54),
                          // ),
                          legend: Legend(
                            isVisible: true,
                            position: LegendPosition.right,
                            textStyle: GoogleFonts.poppins(),
                          ),
                          series: <CircularSeries>[
                            DoughnutSeries<ChartData, String>(
                              dataSource: [
                                // ChartData("OBRÓT", snapshot.data!.currentMonthIncome, Color(primaryColor)),
                                ChartData("ZYSK", wigetResponse.currentMonthMarginAmount, primarySwatch[400]!),
                                ChartData("KOSZTY", wigetResponse.currentMonthIncome - wigetResponse.currentMonthMarginAmount, primarySwatch[900]!),
                              ],
                              xValueMapper: (ChartData data, _) => data.label,
                              yValueMapper: (ChartData data, _) => data.value,
                              pointColorMapper: (ChartData data, _) => data.color,
                              dataLabelMapper: (ChartData data, _) => numberFormatter.format(data.value),
                              radius: "100%",
                              dataLabelSettings: DataLabelSettings(
                                isVisible: true,
                                textStyle: GoogleFonts.poppins(
                                  fontSize: 9.h,
                                  fontWeight: FontWeight.w600,
                                  // color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardTheme.color,
                        border: Border.all(color: Colors.black12, width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 215.h,
                      child: SfTheme(
                        data: SfThemeData(brightness: Get.isDarkMode ? Brightness.dark : Brightness.light),
                        child: SfCartesianChart(
                          tooltipBehavior: TooltipBehavior(activationMode: ActivationMode.singleTap, enable: true),
                          legend:
                              Legend(isVisible: true, position: LegendPosition.bottom, textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                          title: ChartTitle(
                            text: "MARŻA",
                            textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 10.h),
                          ),
                          primaryXAxis: CategoryAxis(labelStyle: GoogleFonts.poppins(fontSize: 9.h, fontWeight: FontWeight.w600)),
                          primaryYAxis: NumericAxis(labelStyle: GoogleFonts.poppins(fontSize: 9.h, fontWeight: FontWeight.w600)),
                          series: <ChartSeries>[
                            ColumnSeries<Incomes, String>(
                              name: (DateTime.now().year - 2).toString(),
                              dataSource: wigetResponse.marginChart.where((element) => element.serie == DateTime.now().year - 2).toList(),
                              xValueMapper: (incomes, _) => incomes.label,
                              yValueMapper: (incomes, _) => incomes.value,
                              color: primarySwatch[900],
                            ),
                            ColumnSeries<Incomes, String>(
                              name: (DateTime.now().year - 1).toString(),
                              dataSource: wigetResponse.marginChart.where((element) => element.serie == DateTime.now().year - 1).toList(),
                              xValueMapper: (incomes, _) => incomes.label,
                              yValueMapper: (incomes, _) => incomes.value,
                              color: primarySwatch[600],
                            ),
                            ColumnSeries<Incomes, String>(
                              name: (DateTime.now().year).toString(),
                              dataSource: wigetResponse.marginChart.where((element) => element.serie == DateTime.now().year).toList(),
                              xValueMapper: (incomes, _) => incomes.label,
                              yValueMapper: (incomes, _) => incomes.value,
                              color: primarySwatch[400],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }

            return connectionError();
          },
        ));
  }

  Widget _loading(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Shimmer.fromColors(
                baseColor: context.isDarkMode ? Theme.of(context).cardTheme.color! : primarySwatch[100]!,
                highlightColor: context.isDarkMode ? Theme.of(context).scaffoldBackgroundColor : Colors.white12,
                child: SizedBox(
                  height: 100.h,
                  width: 164.5.h,
                  child: Card(),
                ),
              ),
              Shimmer.fromColors(
                baseColor: context.isDarkMode ? Theme.of(context).cardTheme.color! : primarySwatch[100]!,
                highlightColor: context.isDarkMode ? Theme.of(context).scaffoldBackgroundColor : Colors.white12,
                child: SizedBox(
                  height: 100.h,
                  width: 164.5.h,
                  child: Card(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Shimmer.fromColors(
            baseColor: context.isDarkMode ? Theme.of(context).cardTheme.color! : primarySwatch[100]!,
            highlightColor: context.isDarkMode ? Theme.of(context).scaffoldBackgroundColor : Colors.white12,
            child: SizedBox(
              height: 250.h,
              width: double.infinity,
              child: Card(),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Shimmer.fromColors(
            baseColor: context.isDarkMode ? Theme.of(context).cardTheme.color! : primarySwatch[100]!,
            highlightColor: context.isDarkMode ? Theme.of(context).scaffoldBackgroundColor : Colors.white12,
            child: SizedBox(
              height: 215.h,
              width: double.infinity,
              child: Card(),
            ),
          ),
        ],
      ),
    );
  }
}
