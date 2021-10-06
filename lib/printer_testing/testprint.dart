import 'package:blue_thermal_printer/blue_thermal_printer.dart';

class TestPrint {
  BlueThermalPrinter bluetooth = BlueThermalPrinter.instance;

  Future<void> sample(String pathImage) async {
    //SIZE
    // 0- normal size text
    // 1- only bold text
    // 2- bold with medium text
    // 3- bold with large text
    //ALIGN
    // 0- ESC_ALIGN_LEFT
    // 1- ESC_ALIGN_CENTER
    // 2- ESC_ALIGN_RIGHT

//     var response = await http.get("IMAGE_URL");
//     Uint8List bytes = response.bodyBytes;
    bluetooth.isConnected.then((bool? isConnected) {
      if (isConnected ?? false) {
        bluetooth.printNewLine();
        bluetooth.printCustom('PO. Tiara Mas', 3, 1);
        bluetooth.printNewLine();

        bluetooth.printCustom('Tanggal    :21/10/2021 08:12', 0, 0);
        bluetooth.printCustom('Kelas      : EKSEKUTIF 35 SEAT', 0, 0);
        bluetooth.printCustom('--------------------------------', 1, 0);

        for (var i = 0; i < 3; i++) {
          bluetooth.printCustom('Ticket No. :#RSVP/210922/0$i', 0, 0);
          bluetooth.printCustom('No. Kursi  : $i', 0, 0);
          bluetooth.printCustom('--------------------------------', 1, 0);
        }

        bluetooth.printNewLine();

        bluetooth.printCustom('Rute       : BALARAJA - BIMA', 0, 0);
        bluetooth.printCustom('> Terminal Balaraja - Balaraja', 0, 0);
        bluetooth.printCustom(
            '> Kantor Tiara Mas, Jl Sultan Kaharudin No. 8 - Bima', 0, 0);
        bluetooth.printNewLine();
        bluetooth.printCustom('* LUNAS *', 3, 1);
        bluetooth.printNewLine();
        bluetooth.printCustom('------------------------------', 1, 0);
        bluetooth.printNewLine();
      } else {
        print('findme');
      }
    });
  }
}
