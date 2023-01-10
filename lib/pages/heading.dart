

import 'package:flutter/material.dart';

 @override

class HeadingText extends StatefulWidget {
  const HeadingText({ Key? key }) : super(key: key);

  @override
  State<HeadingText> createState() => _HeadingTextState();
}

class _HeadingTextState extends State<HeadingText> {
  _NewsListState(){
    _selectedVal =_NewsList[0];
  }
  final  _NewsList =["Popular","oldest","Newest"];
  String? _selectedVal="";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Top HeadLines",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: const [
                Text('Sort:'),// SortDropdown(),
                
              ],
            ),
          ),
          DropdownButton(icon: Icon(Icons.arrow_drop_down),
          value:null,
          isDense: true,
            items: _NewsList.map((e) => DropdownMenuItem(child: Text(e),value: e,)).toList(),
             onChanged:(value){
              setState(() {
                _selectedVal=value as String;
              });
             }
          
          
       ) ],
      ),
    );
  }
}