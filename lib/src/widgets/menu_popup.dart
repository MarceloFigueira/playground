import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree, itemFour, itemFive }

class MenuPopup extends StatefulWidget {
  const MenuPopup({super.key});

  @override
  State<MenuPopup> createState() => _MenuPopupState();
}

class _MenuPopupState extends State<MenuPopup> {
  SampleItem? selectedMenu;
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        popupMenuTheme: const PopupMenuThemeData(
          color: Colors.white, // Defina a cor de fundo desejada aqui.
        ),
      ),
      child: PopupMenuButton<SampleItem>(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        initialValue: selectedMenu,
        // Callback that sets the selected popup menu item.
        onSelected: (SampleItem item) {
          setState(() {
            selectedMenu = item;
            _isFavorited = !_isFavorited;
          });
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
          PopupMenuItem<SampleItem>(
            value: SampleItem.itemOne,
            child: Row(
              children: const [
                Icon(
                  Icons.share_outlined,
                  color: Colors.black,
                ),
                SizedBox(width: 16),
                Text("Compartilhar aula")
              ],
            ),
          ),
          PopupMenuItem<SampleItem>(
            onTap: () {},
            value: SampleItem.itemTwo,
            child: Row(
              children: [
                Icon(
                  _isFavorited ? Icons.favorite : Icons.favorite_border,
                  color: Colors.black,
                ),
                const SizedBox(width: 16),
                const Text("Favoritar aula")
              ],
            ),
          ),
          PopupMenuItem<SampleItem>(
            value: SampleItem.itemThree,
            child: Row(
              children: const [
                Icon(
                  Icons.font_download_outlined,
                  color: Colors.black,
                ),
                SizedBox(width: 16),
                Text("Ajustar tamanho do texto")
              ],
            ),
          ),
          PopupMenuItem<SampleItem>(
            value: SampleItem.itemFour,
            child: Row(
              children: const [
                Icon(
                  Icons.error_outline_outlined,
                  color: Colors.black,
                ),
                SizedBox(width: 16),
                Text("Reportar erro")
              ],
            ),
          ),
          PopupMenuItem<SampleItem>(
            value: SampleItem.itemFive,
            child: Row(
              children: const [
                Icon(
                  Icons.cancel_outlined,
                  color: Colors.black,
                ),
                SizedBox(width: 16),
                Text("Fechar aula")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
