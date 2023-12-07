import 'package:sber/model/service.dart';
import 'package:sber/model/tariff.dart';

final List<Service> sampleServices = [
  Service(
      icon: 'assets/sberprime.png',
      name: 'СберПрайм',
      info: 'Платёж 9 июля',
      price: '199 ₽ в месяц'),
  Service(
      icon: 'assets/percent_fill.png',
      name: 'Переводы',
      info: 'Автопродление 21 августа',
      price: '199 ₽ в месяц'),
];

final List<Tariff> sampleTariffs = [
  Tariff(name: "Изменить суточный лимит", description: "На платежи и переводы", icon: "assets/speedometer.png"),
  Tariff(name: "Переводы без комиссии", description: "Показать остаток в этом месяце", icon: "assets/percent.png"),
  Tariff(name: "Информация о тарифах и лимитах", description: "", icon: "assets/arrows_forward_back.png"),
];

final Map<String, bool> sampleIntersts = {
  'Еда': false,
  'Саморазвитие': false,
  'Технологии': false,
  'Дом': false,
  'Досуг': false,
  'Забота о себе': false,
  'Наука': false
};