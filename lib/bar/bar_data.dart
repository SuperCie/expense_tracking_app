import 'package:expense_tracker/bar/individual_graph.dart';

class BarData {
  final double sunAmount;
  final double monAmount;
  final double tueAmount;
  final double wedAmount;
  final double thuAmount;
  final double friAmount;
  final double satAmount;

  BarData({
    required this.sunAmount,
    required this.monAmount,
    required this.tueAmount,
    required this.wedAmount,
    required this.thuAmount,
    required this.friAmount,
    required this.satAmount,
  });

  //list individual graph
  List<IndividualGraph> barData = [];

  // initialize bar data
  void initializeBarData() {
    barData = [
      IndividualGraph(x: 0, y: sunAmount),
      IndividualGraph(x: 1, y: monAmount),
      IndividualGraph(x: 2, y: tueAmount),
      IndividualGraph(x: 3, y: wedAmount),
      IndividualGraph(x: 4, y: thuAmount),
      IndividualGraph(x: 5, y: friAmount),
      IndividualGraph(x: 6, y: satAmount),
    ];
  }
}
