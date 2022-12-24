import 'package:flutter/cupertino.dart';

import '../NavPages/categoria_page.dart';
import '../NavPages/chat_page.dart';
import '../NavPages/main_page.dart';
import '../NavPages/image_page.dart';

class rutas extends StatelessWidget{
  final int index;
  const rutas({Key? key, required this.index}) : super (key: key);

  @override
  Widget build(BuildContext context) {

    List <Widget> pages = [
      const MainPage(),
      CategoriaPage(),
      const ImagePage(),
      const ChatPage(),
    ];


    return pages[index];
  }
}