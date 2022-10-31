import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuizCategoryListWidget extends StatefulWidget {
  const QuizCategoryListWidget({super.key, required this.categoryList});
  final List categoryList;

  @override
  State<QuizCategoryListWidget> createState() => _QuizCategoryListWidgetState();
}

class _QuizCategoryListWidgetState extends State<QuizCategoryListWidget> {
  int _categoryValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView.separated(
        padding: const EdgeInsets.all(1),
        itemCount: widget.categoryList.length,
        itemBuilder: (BuildContext context, int index) {
          return OutlinedButton(
            style:
                OutlinedButton.styleFrom(side:const BorderSide(color: buttonBorderColor)),
            onPressed: () {
              setState(() {
                _categoryValue = index ;
              });
              print(_categoryValue);
            },
            child: ListTile(
              title: Text(widget.categoryList[index]),
              trailing: Radio(
                mouseCursor: MouseCursor.defer,
                value: index,
                groupValue: _categoryValue,
                activeColor: Color.fromARGB(255, 0, 135, 23),
                onChanged: (value) {
                  setState(() {
                    _categoryValue = value as int;
                  });
                  print(_categoryValue);
                },
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.white,
        ),
      ),
    );
  }
}
