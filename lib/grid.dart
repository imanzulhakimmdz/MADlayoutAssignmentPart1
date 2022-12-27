import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  final List<bool> _selections1 = List.generate(1, (_) => false);
  final List<bool> _selections2 = List.generate(1, (_) => false);
  final List<bool> _selections3 = List.generate(1, (_) => false);
  final List<bool> _selections4 = List.generate(1, (_) => false);
  final List<bool> _selections5 = List.generate(1, (_) => false);
  Color _powerColor = Colors.black;
  Color _bulbColor = Colors.black;
  var onOffButton = ['OFF', 'ON'];

  var textIndex1 = 0;
  var textIndex2 = 0;
  bool imageBool2 = false;
  var textIndex3 = 0;
  var textIndex4 = 0;
  bool imageBool4 = false;
  var textIndex5 = 0;

  void toggleDevice1(int index) {
    setState(() {
      _selections1[index] = !_selections1[index];
      if (textIndex1 == 0) {
        textIndex1 = textIndex1 + 1;
      }
      else {
        textIndex1 = textIndex1 - 1;
      }
    });
  }

  void toggleDevice2(int index) {
    setState(() {
      _selections2[index] = !_selections2[index];
      if (textIndex2 == 0) {
        textIndex2 = textIndex2 + 1;
      }
      else {
        textIndex2 = textIndex2 - 1;
      }
      imageBool2 = !imageBool2;
    });
  }

  void toggleDevice3(int index) {
    setState(() {
      _selections3[index] = !_selections3[index];
      if (_bulbColor == Colors.black) {
        _bulbColor = Colors.yellow;
      }
      else {
        _bulbColor = Colors.black;
      }
      if (textIndex3 == 0) {
        textIndex3 = textIndex3 + 1;
      }
      else {
        textIndex3 = textIndex3 - 1;
      }
    });
  }

  void toggleDevice4(int index) {
    setState(() {
      _selections4[index] = !_selections4[index];
      if (textIndex4 == 0) {
        textIndex4 = textIndex4 + 1;
      }
      else {
        textIndex4 = textIndex4 - 1;
      }
      imageBool4 = !imageBool4;
    });
  }

  void toggleDevice5(int index) {
    setState(() {
      _selections5[index] = !_selections5[index];
      if (_powerColor == Colors.black) {
        _powerColor = Colors.green;
      }
      else {
        _powerColor = Colors.black;
      }
      if (textIndex5 == 0) {
        textIndex5 = textIndex5 + 1;
      }
      else {
        textIndex5 = textIndex5 - 1;
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          // Wi-Fi
          Container(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                children: <Widget>[
                  Container( // deal with row side, left -> right
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(17.0, 17.0, 0, 0),
                          child: ToggleButtons(
                            fillColor: Colors.blue.shade100,
                            children: <Widget>[
                              Icon(
                                Icons.wifi,
                                size: 30.0
                              )
                            ],
                            isSelected: _selections1,
                            onPressed: toggleDevice1,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(35.0, 15.0, 0, 0),
                          child: ToggleButtons(
                            borderRadius: BorderRadius.circular(40),
                            children: <Widget>[
                              Icon(
                                Icons.settings_power_rounded,
                                size: 30.0
                              )
                            ],
                            isSelected: _selections1,
                            onPressed: toggleDevice1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(3.0, 26.0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: const Text(
                            'Home Wi-Fi',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Arial', fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(3.0, 0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: Text(
                            onOffButton.elementAt(textIndex1),
                            style: const TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // TV
          Container(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                children: <Widget>[
                  Container( // deal with row side, left -> right
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(12.0, 12.0, 0, 0),
                          child: Image(
                            width: 60,
                            height: 60,
                            image: AssetImage(imageBool2
                              ? 'asset/tvOn.png'
                              : 'asset/tvOff.png'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 0, 0),
                          child: ToggleButtons(
                            borderRadius: BorderRadius.circular(40),
                            children: <Widget>[
                              Icon(
                                Icons.settings_power_rounded,
                                size: 30.0
                              )
                            ],
                            isSelected: _selections2,
                            onPressed: toggleDevice2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: const Text(
                            'Home TV',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Arial', fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: Text(
                            onOffButton.elementAt(textIndex2),
                            style: const TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // Gate lamp
          Container(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                children: <Widget>[
                  Container( // deal with row side, left -> right
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(17.0, 17.0, 0, 0),
                          child: ToggleButtons(
                            fillColor: Colors.blue.shade100,
                            children: <Widget>[
                              Icon(
                                Icons.lightbulb,
                                size: 30.0,
                                color: _bulbColor,
                              )
                            ],
                            isSelected: _selections3,
                            onPressed: toggleDevice3,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(35.0, 15.0, 0, 0),
                          child: ToggleButtons(
                            borderRadius: BorderRadius.circular(40),
                            children: <Widget>[
                              Icon(
                                Icons.settings_power_rounded,
                                size: 30.0
                              )
                            ],
                            isSelected: _selections3,
                            onPressed: toggleDevice3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(3.0, 26.0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: const Text(
                            'Gate Lamp',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Arial', fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(3.0, 0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: Text(
                            onOffButton.elementAt(textIndex3),
                            style: const TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // Room Air-cond
          Container(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                children: <Widget>[
                  Container( // deal with row side, left -> right
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(12.0, 12.0, 0, 0),
                          child: Image(
                            width: 60,
                            height: 60,
                            image: AssetImage(imageBool4
                              ? 'asset/aircondOn.png'
                              : 'asset/aircondOff.png'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 0, 0),
                          child: ToggleButtons(
                            borderRadius: BorderRadius.circular(40),
                            children: <Widget>[
                              Icon(
                                Icons.settings_power_rounded,
                                size: 30.0
                              )
                            ],
                            isSelected: _selections4,
                            onPressed: toggleDevice4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: const Text(
                            'Room AirCond',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Arial', fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: Text(
                            onOffButton.elementAt(textIndex4),
                            style: const TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // Power
          Container(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                children: <Widget>[
                  Container( // deal with row side, left -> right
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(17.0, 17.0, 0, 0),
                          child: ToggleButtons(
                            fillColor: Colors.blue.shade100,
                            children: <Widget>[
                              Icon(
                                Icons.power,
                                size: 30.0,
                                color: _powerColor,
                              )
                            ],
                            isSelected: _selections5,
                            onPressed: toggleDevice5,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(35.0, 15.0, 0, 0),
                          child: ToggleButtons(
                            borderRadius: BorderRadius.circular(40),
                            children: <Widget>[
                              Icon(
                                Icons.settings_power_rounded,
                                size: 30.0
                              )
                            ],
                            isSelected: _selections5,
                            onPressed: toggleDevice5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(3.0, 26.0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: const Text(
                            'Power Plug',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Arial', fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(3.0, 0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: Text(
                            onOffButton.elementAt(textIndex5),
                            style: const TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}