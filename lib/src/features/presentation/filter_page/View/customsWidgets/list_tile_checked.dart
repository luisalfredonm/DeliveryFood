import 'package:deliveryfood/src/colors/colors.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListTileChecked extends StatefulWidget {
  String texto;
  bool isActive;
  Function func;
  ListTileChecked({Key key, this.texto, this.isActive, this.func})
      : super(key: key);

  @override
  _ListTileCheckedState createState() => _ListTileCheckedState();
}

class _ListTileCheckedState extends State<ListTileChecked> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
            context: context,
            texto: widget.texto,
            isActive: widget.isActive,
            func: widget.func),
      ],
    );
  }

  Widget listTiles(
      {BuildContext context, texto: String, isActive: bool, Function func}) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Theme.of(context).dividerColor),
        ),
      ),
      child: ListTile(
        onTap: func,
        title: headerText(
            texto: texto,
            color: isActive ? orange : Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 17.0),
        trailing: isActive
            ? Icon(
                Icons.check,
                color: isActive ? orange : gris,
              )
            : Text(''),
      ),
    );
  }
}
