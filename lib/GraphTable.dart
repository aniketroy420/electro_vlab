import 'package:flutter/material.dart';
import 'observationBrain.dart';
import 'package:fl_chart/fl_chart.dart';
class GraphTable extends StatefulWidget {
    @override
    _GraphTableState createState() => _GraphTableState();
}
final List < Color > gradientColors = [
    const Color(0xff23b6e6),
        const Color(0xff02d39a),
];
class _GraphTableState extends State < GraphTable > {
        @override
        Widget build(BuildContext context) {
            return Scaffold(appBar: AppBar(title: Text('Observation Table and Graph'), ), body: SingleChildScrollView(child: Padding(padding: const EdgeInsets.all(8.0),
                                child: Column(children: [
                                        Table(columnWidths: {
                                                0: FlexColumnWidth(1.2),
                                                2: FlexColumnWidth(1.2),
                                            }, border: TableBorder.all(width: 2.0, color: Colors.blueGrey), children: <TableRow>[
 TableRow(
 children: <Widget>[
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 'Observation No.',
 style: TextStyle(fontSize: 16),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 'Voltage',
 style: TextStyle(fontSize: 16),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 'Equivalent Resistance',
 style: TextStyle(fontSize: 16),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 'Current',
 style: TextStyle(fontSize: 16),
 ),
 ),
 ],
 ),
 TableRow(

 children: <Widget>[
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 '1.',
 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 volt.toString(),
 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 eResistance[0].toString(),
 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 current[0].toStringAsFixed(2),
 style: TextStyle(fontSize: 17),
 ),
 ),
 ],
 ),
 TableRow(
 children: <Widget>[
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 '2.',

 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 volt.toString(),
 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 eResistance[1].toString(),
 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 current[1].toStringAsFixed(2),
 style: TextStyle(fontSize: 17),
 ),
 ),
 ],
 ),
 TableRow(
 children: <Widget>[
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 '3.',
 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),

 child: Text(
 volt.toString(),
 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 eResistance[2].toString(),
 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 current[2].toStringAsFixed(2),
 style: TextStyle(fontSize: 17),
 ),
 ),
 ],
 ),
 TableRow(
 children: <Widget>[
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 '4.',
 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 volt.toString(),
 style: TextStyle(fontSize: 17),
 ),
 ),

 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 eResistance[3].toString(),
 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 current[3].toStringAsFixed(2),
 style: TextStyle(fontSize: 17),
 ),
 ),
 ],
 ),
 TableRow(
 children: <Widget>[
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 '5.',
 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 volt.toString(),
 style: TextStyle(fontSize: 17),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 eResistance[4].toString(),
 style: TextStyle(fontSize: 17),

 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(
 current[4].toStringAsFixed(2),
 style: TextStyle(fontSize: 17),
 ),
 ),
 ],
 ),
 ],
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 color: Colors.blueGrey[700],
 padding: EdgeInsets.all(10),
 width: double.infinity,
 child: LineChart(
 LineChartData(
 axisTitleData: FlAxisTitleData(
 leftTitle: AxisTitle(
 showTitle: true,
 titleText: 'Current (Amp)',
 textStyle:
 TextStyle(color: Colors.white, fontSize: 20),
 margin: 0.0,
 ),
 topTitle: AxisTitle(
 margin: 10,
 showTitle: true,
 titleText: 'I vs R Graph',
 textAlign: TextAlign.center,
 textStyle:
 TextStyle(color: Colors.white, fontSize: 20),
 ),

 bottomTitle: AxisTitle(
 margin: 0.0,
 showTitle: true,
 titleText: 'Equivalent Resistance (Ohm)',
 textStyle:
 TextStyle(color: Colors.white, fontSize: 20),
 ),
 rightTitle: AxisTitle()),
 //titlesData: LineTitles.getTitleData(),
 gridData: FlGridData(
 show: true,
 getDrawingHorizontalLine: (value) {
 return FlLine(
 color: Colors.blueGrey, strokeWidth: 2);
 },
 drawVerticalLine: true,
 getDrawingVerticalLine: (value) {
 return FlLine(
 color: Colors.blueGrey, strokeWidth: 2);
 }),
 backgroundColor: Colors.white,
 borderData: FlBorderData(
 show: true,
 border:
 Border.all(color: Colors.blueGrey[900], width: 5),
 ),
 lineBarsData: [
 LineChartBarData(
 spots: [
 FlSpot(eResistance[0].roundToDouble(),
 current[0].roundToDouble()),
 FlSpot(eResistance[1].roundToDouble(),
 current[1].roundToDouble()),
 FlSpot(eResistance[2].roundToDouble(),
 current[2].roundToDouble()),
 FlSpot(eResistance[3].roundToDouble(),
 current[3].roundToDouble()),

 FlSpot(eResistance[4].roundToDouble(),
 current[4].roundToDouble()),
 ],
 isCurved: true,
 barWidth: 5,
 colors: gradientColors,
 belowBarData: BarAreaData(
 show: true,
 colors: gradientColors
 .map((color) => color.withOpacity(0.3))
 .toList(),
 ),
 ),
 ],
 ),
 ),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 color: Colors.blueGrey[700],
 padding: EdgeInsets.all(10),
 width: double.infinity,
 child: LineChart(
 LineChartData(
 axisTitleData: FlAxisTitleData(
 leftTitle: AxisTitle(
 showTitle: true,
 titleText: 'Current (Amp)',
 textStyle:
 TextStyle(color: Colors.white, fontSize: 20),
 margin: 0.0,
 ),
 topTitle: AxisTitle(
 margin: 10,
 showTitle: true,

 titleText: 'V vs I Graph',
 textAlign: TextAlign.center,
 textStyle:
 TextStyle(color: Colors.white, fontSize: 20),
 ),
 bottomTitle: AxisTitle(
 margin: 0.0,
 showTitle: true,
 titleText: 'Voltage (Volts)',
 textStyle:
 TextStyle(color: Colors.white, fontSize: 20),
 ),
 rightTitle: AxisTitle()),
 //titlesData: LineTitles.getTitleData(),
 gridData: FlGridData(
 show: true,
 getDrawingHorizontalLine: (value) {
 return FlLine(
 color: Colors.blueGrey, strokeWidth: 2);
 },
 drawVerticalLine: true,
 getDrawingVerticalLine: (value) {
 return FlLine(
 color: Colors.blueGrey, strokeWidth: 2);
 }),
 backgroundColor: Colors.white,
 borderData: FlBorderData(
 show: true,
 border:
 Border.all(color: Colors.blueGrey[900], width: 5),
 ),
 lineBarsData: [
 LineChartBarData(
 spots: [
 FlSpot(volt.toDouble(), current[0].roundToDouble()),
 FlSpot(volt.toDouble(), current[1].roundToDouble()),
 FlSpot(volt.toDouble(), current[2].roundToDouble()),

 FlSpot(volt.toDouble(), current[3].roundToDouble()),
 FlSpot(volt.toDouble(), current[4].roundToDouble()),
 ],
 isCurved: true,
 barWidth: 5,
 colors: gradientColors,
 belowBarData: BarAreaData(
 show: true,
 colors: gradientColors
 .map((color) => color.withOpacity(0.3))
 .toList(),
 ),
 ),
 ],
 ),
 ),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 color: Colors.blueGrey[700],
 padding: EdgeInsets.all(10),
 width: double.infinity,
 child: LineChart(
 LineChartData(
 axisTitleData: FlAxisTitleData(
 leftTitle: AxisTitle(
 showTitle: true,
 titleText: ' Equivalent Resistance (Ohm)',
 textStyle:
 TextStyle(color: Colors.white, fontSize: 20),
 margin: 0.0,
 ),
 topTitle: AxisTitle(
 margin: 10,
 showTitle: true,

 titleText: 'V vs R Graph',
 textAlign: TextAlign.center,
 textStyle:
 TextStyle(color: Colors.white, fontSize: 20),
 ),
 bottomTitle: AxisTitle(
 margin: 0.0,
 showTitle: true,
 titleText: 'Voltage (Volts)',
 textStyle:
 TextStyle(color: Colors.white, fontSize: 20),
 ),
 rightTitle: AxisTitle()),
 //titlesData: LineTitles.getTitleData(),
 gridData: FlGridData(
 show: true,
 getDrawingHorizontalLine: (value) {
 return FlLine(
 color: Colors.blueGrey, strokeWidth: 2);
 },
 drawVerticalLine: true,
 getDrawingVerticalLine: (value) {
 return FlLine(
 color: Colors.blueGrey, strokeWidth: 2);
 }),
 backgroundColor: Colors.white,
 borderData: FlBorderData(
 show: true,
 border:
 Border.all(color: Colors.blueGrey[900], width: 5),
 ),
 lineBarsData: [
 LineChartBarData(
 spots: [
 FlSpot(
 volt.toDouble(),
 eResistance[0].roundToDouble(),

 ),
 FlSpot(
 volt.toDouble(),
 eResistance[1].roundToDouble(),
 ),
 FlSpot(
 volt.toDouble(),
 eResistance[2].roundToDouble(),
 ),
 FlSpot(
 volt.toDouble(),
 eResistance[3].roundToDouble(),
 ),
 FlSpot(
 volt.toDouble(),
 eResistance[4].roundToDouble(),
 ),
 ],
 isCurved: true,
 barWidth: 5,
 colors: gradientColors,
 belowBarData: BarAreaData(
 show: true,
 colors: gradientColors
 .map((color) => color.withOpacity(0.3))
 .toList(),
 ),
 ),
 ],
 ),
 ),
 ),
 ),
 ],
 ),
 ),
 ),

 );
 }
}
