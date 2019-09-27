import 'package:flutter/material.dart';
import 'module/ItemModule.dart';

class CollectList extends Scaffold {
  BuildContext context;
  var _collectItem = <ItemModule>[];

  CollectList(this.context, this._collectItem);

  set collectItem(value) {
    _collectItem = value;
  }

  @override
  PreferredSizeWidget get appBar => new AppBar(
        title: new Text("收dddd藏"),
      );

  @override
  Widget get body => new ListView.builder(
      itemCount: _collectItem.length,
      itemBuilder: (context, i) {
        return new ListTile(
          title: new Text(
            _collectItem[i].name,
            style: new TextStyle(color: Colors.redAccent),
          ),
        );
      });
}
