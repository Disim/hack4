import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hack4/app/data/models/appeal/appeal.dart';

class AppealController extends GetxController {
  AppealController();
  List<String> appealCategories = [
    'Дороги',
    'Дворы',
    'Парки и общественные територии',
    'Коронавирус',
    'Мусор',
    'Зимние объекты спорта',
    'Имущество. Землянные отношения',
    'Содержание многоквартирных домов',
    'Уличное освещение',
    'Доступность здравоохранения',
    'Борщевик',
    'Образовательные учереждения',
    'Уборка снега',
    'Капитальный ремонт многоквартирных домов',
    'Мемориальные объекты',
    'Доступная среда',
    'Лицензии на алкоголь',
    'Муниципальные проекты',
    'Граффити',
    'Лесное хозяйство',
    'Кладбища',
    'МФЦ',
    'Наркотики',
    'Нестационарные торговые объекты',
    'Общественный транспорт',
    'Проекты инициативного бюджетирования',
    'Проекты общественного самоуправления',
    'Реестр региональных дорог',
    'Рекламные конструкции',
    'Спорт для каждого',
  ];

  List<Appeal> appeals = [
    Appeal(
      title: 'Зсыпало всё, невозможно выехать',
      text: 'text',
      category: 'Снег на дорогах',
      status: 1,
      images: [],
      answer: 'answer',
      answerImages: [],
    ),
    Appeal(
      title: 'Нет спортзалов по близости!',
      text: 'text',
      category: 'Спорт для каждого',
      status: 0,
      images: [],
      answer: 'answer',
      answerImages: [],
    ),
    Appeal(
      title: 'Вандалы разрисовали каркас дома',
      text: 'text',
      category: 'Граффити',
      status: 1,
      images: [],
      answer: 'answer',
      answerImages: [],
    ),
  ];

  addAppeal() {
    Get.bottomSheet(Text('data'));
  }
}
