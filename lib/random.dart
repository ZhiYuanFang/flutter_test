import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'module/ItemModule.dart';

final _suggestions = <ItemModule>[];

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    for (int i = 0; i < 10; i++) {
      _suggestions.add(new ItemModule(false, String.fromCharCode(i + 65)));
    }
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("列表"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.list),
              onPressed: () {
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (context) {
                  final _selectSuggesstions = <ItemModule>[];
                  for (ItemModule item in _suggestions) {
                    if (item.select) {
                      _selectSuggesstions.add(item);
                    }
                  }
                  return new Scaffold(
                    appBar: new AppBar(
                      title: new Text("收藏"),
                    ),
                    body: new ListView.builder(
                        itemCount: _selectSuggesstions.length,
                        itemBuilder: (context, i) {
                          return new ListTile(
                            title: new Text(_selectSuggesstions[i].name),
                          );
                        }),
                  );
                }));
              })
        ],
      ),
      body: _buildSuggestions(context, _suggestions),
    );
  }

  Widget _buildSuggestions(_context, _suggestions) {
    return new ListView.builder(
        itemCount: _suggestions.length,
        itemBuilder: (_context, i) {
          return _buildRow(_suggestions[i]);
        });
  }

  Widget _buildRow(ItemModule itemModule) {
    ListTile _listTitle = new ListTile(
      title: new Text(
        itemModule.name,
        style: const TextStyle(fontSize: 18.0),
      ),
      trailing: new Icon(
          itemModule.select ? Icons.favorite : Icons.favorite_border,
          color: itemModule.select ? Colors.red : Colors.redAccent),
      onTap: () {
        setState(() {
          itemModule.select = !itemModule.select;
        });
      },
    );
    return _listTitle;
  }
}
