import 'package:EPASIEN/config.dart';
import 'package:EPASIEN/screens/booking/controller/models.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class GetCekBooking {
  Future<CekBookingRegistrasi> cekbooking(
      String action, String no_booking, String no_hp) async {
    var res = await http.post(BaseUrl().baseURL,
        body: {
          'action': action,
          'no_booking': no_booking,
          'no_telp': no_hp,
        },
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return cekBookingRegistrasiFromJson(res.body);
  }
}

class GetBookingDiterima {
  Future<CekBookingsukses> cekbookingsukses(
      String action, String no_booking, String no_hp) async {
    var res = await http.post(BaseUrl().baseURL,
        body: {
          'action': action,
          'no_booking': no_booking,
          'no_telp': no_hp,
        },
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return cekBookingsuksesFromJson(res.body);
  }
}
