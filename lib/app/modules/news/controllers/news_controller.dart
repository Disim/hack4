import 'package:get/get.dart';
import 'package:hack4/app/data/models/post/post.dart';

class NewsController extends GetxController {
  NewsController();
  List<Post> posts = [
    Post(
      address: 'address',
      lat: 50,
      lon: 50,
      by: 'Пермэнергосбыт',
      datePublish: DateTime.now(),
      dateStart: DateTime.now(),
      dateFinish: DateTime.now(),
      title: 'Отключение электричества',
      text:
          'С понедельника по среду будет отключено электричество во всём городе',
      type: 'type',
      tags: [
        'Свет',
      ],
      images: [
        'https://cdnn21.img.ria.ru/images/07e6/05/11/1788942558_0:0:3071:2048_1440x900_80_1_1_33c217074f427a83aa3ca65e61bbdee7.jpg?source-sid=rian_photo'
      ],
    ),
    Post(
      address: 'address',
      lat: 50,
      lon: 50,
      by: 'Mauris feugiat posuere orci sed rhoncus',
      datePublish: DateTime.now(),
      dateStart: DateTime.now(),
      dateFinish: DateTime.now(),
      title: 'Важные новости',
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum viverra, quam ac efficitur auctor, tortor dolor vulputate augue, vel varius turpis dui non turpis. Etiam placerat tristique ante a commodo. Aliquam auctor mollis augue, sed congue urna hendrerit eget. Maecenas a mi lectus. Vivamus lobortis magna id elementum tincidunt. Donec pellentesque maximus arcu a fermentum. Nulla ut neque ac leo mollis sagittis. Integer facilisis vestibulum turpis, id pretium lorem semper sed. Curabitur vestibulum congue justo eget vehicula.',
      type: 'type',
      tags: [
        'fsdf',
      ],
      images: [
        'https://old.oblgazeta.ru/media/filer_public_thumbnails/filer_public/2021/09/20/b7d16b9a-6dad-4448-9271-ea9f23a858e5-3-fdfb7049-a29.png__1024x713_q85_subsampling-2.jpg.1024x0_q85.jpg'
      ],
    ),
    Post(
      address: 'address',
      lat: 50,
      lon: 50,
      by: 'by',
      datePublish: DateTime.now(),
      dateStart: DateTime.now(),
      dateFinish: DateTime.now(),
      title: 'title',
      text: 'text',
      type: 'type',
      tags: [
        'fsdf',
      ],
      images: [
        'https://www.business-vector.info/wp-content/uploads/2020/09/dorogi.jpg'
      ],
    ),
  ];
}
