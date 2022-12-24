import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Informacion'),
    backgroundColor: Colors.indigo[400],
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 250.0,
            width: 450.0,
            child: Image.network('https://mott.pe/noticias/wp-content/uploads/2016/09/Una-historia-sobre-la-depresi%C3%B3n-que-nos-muestra-que-no-est%C3%A1n-solos-ante-esto.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            child: const Text('Depresion: es un trastorno mental caracterizado fundamentalmente por un bajo estado de ánimo y sentimientos de tristeza, asociados a alteraciones del comportamiento, del grado de actividad y del pensamiento.'),
          ),
          SizedBox(
            height: 250.0,
            width: 450.0,
            child: Image.network('https://www.alteapsicologos.com/wp-content/uploads/2019/05/ansiedad-normal-o-ansiedad-patolgica-cundo-debemos-consultar-01-300x300.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            child: const Text('Ansiedad: es una emoción normal que se experimenta en situaciones en las que el sujeto se siente amenazado por un peligro externo o interno.'),
          ),
          SizedBox(
            height: 250.0,
            width: 450.0,
            child: Image.network(' https://www.nascia.com/wp-content/uploads/2020/10/Motivos-para-controlar-el-estr%C3%A9s.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
              child: const Text('Estres: es un sentimiento de tensión física o emocional. El estrés es la reacción de su cuerpo a un desafío o demanda.'),
          ),
        ]

      ),
    ),
    );
  }
}
