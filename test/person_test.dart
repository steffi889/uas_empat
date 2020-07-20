import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/person.dart';

void main() {
  group("Mengecek jumlah karyawan", () {
    Person p;
    p = Person();

    test("mengecek absensi karyawan", () {
      expect(p.name, equals("no name"));
      expect(p.age, equals(0));
    });

    test("Karyawan wajib mengikuti Rapid Test", () {
      p.age = -5;
      expect(p.age, isPositive);
    });

    test("Karyawan harus mengkuti protokol kesehatan", () {
      expect(p.luckyNumbers,
          allOf([hasLength(equals(3)), isNot(anyElement(isNegative))]));
    });
  });

  setUp(() {
    print("Set Up");
  });

  tearDown(() {
    print("Tear Down");
  });
}
