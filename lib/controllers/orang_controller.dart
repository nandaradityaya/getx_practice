import 'package:get/get.dart';
import 'package:getx_practice/models/orang.dart';

class OrangController extends GetxController {
  var orang = Orang(nama: "Rizal", umur: 20)
      .obs; // obs = observable yang ada di model orang

  void changeUpperCase() {
    orang.update((val) => orang.value.nama = orang.value.nama.toUpperCase());
  }
}
