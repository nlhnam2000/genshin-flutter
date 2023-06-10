import 'dart:async';

import 'package:genshin_app/models/customer_visit_model.dart';
import 'package:genshin_app/provider/base_provider.dart';

class VisitProvider extends BaseProvider {
  List<CustomerVisitModel> data = [
    const CustomerVisitModel(
        id: "001",
        name: "Nguyen Van A",
        age: 23,
        address: "135B Tran Hung Dao",
        distance: 100),
    const CustomerVisitModel(
        id: "002",
        name: "Nguyen Van B",
        age: 23,
        address: "135B Tran Hung Dao",
        distance: 100),
    const CustomerVisitModel(
        id: "003",
        name: "Nguyen Van C",
        age: 23,
        address: "135B Tran Hung Dao",
        distance: 100),
    const CustomerVisitModel(
        id: "004",
        name: "Nguyen Van D",
        age: 23,
        address: "135B Tran Hung Dao",
        distance: 100),
    const CustomerVisitModel(
        id: "005",
        name: "Nguyen Van E",
        age: 23,
        address: "135B Tran Hung Dao",
        distance: 100),
  ];

  int count = 0;
  String elapsedTime = "";
  CustomerVisitModel? visitingCustomer;
  late Timer timer;
  Stopwatch stopwatch = Stopwatch();

  void visit(CustomerVisitModel customer) {
    visitingCustomer = customer;
    notifyListeners();
    startCounting();
  }

  void unvisit(CustomerVisitModel customer) {
    visitingCustomer = null;
    cancel();
    notifyListeners();
  }

  void startCounting() {
    stopwatch.start();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      // count++;
      elapsedTime = stopwatch.elapsed.toString().substring(0, 7);
      notifyListeners();
    });
  }

  void cancel() {
    elapsedTime = "";
    stopwatch.reset();
    timer.cancel();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
