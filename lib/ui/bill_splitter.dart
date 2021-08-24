import 'package:flutter/material.dart';
import '/ui/theme.dart';

class BillSplitter extends StatefulWidget {
  @override
  _BillSplitterState createState() => _BillSplitterState();
}

class _BillSplitterState extends State<BillSplitter> {

  var _billValue = 0.0;
  var _numberOfPersons = 1;
  var _tipPercentage = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Bill splitter")),
        body: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            child: ListView(
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: mainColor)),
                  child: Column(
                    children: [
                      TextField(controller: TextEditingController(text: _billValue.toString()),
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        style: TextStyle(color: mainColor),
                        decoration: InputDecoration(labelText: "Bill value:"),
                        onChanged: _onBillValueChanged),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Number of persons:", style: TextStyle(color: mainColor)),
                          Row(
                            children: [
                              InkWell(
                                onTap: _onRemovePerson,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(color: mainColor, borderRadius: BorderRadius.circular(4)),
                                  child: Center(
                                    child: Text("-", style: buttonTextStyle)))),
                              Text("$_numberOfPersons", style: textStyle),
                              InkWell(
                                  onTap: _onAddPerson,
                                  child: Container(
                                      width: 30,
                                      height: 30,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(color: mainColor, borderRadius: BorderRadius.circular(4)),
                                      child: Center(
                                          child: Text("+", style: buttonTextStyle))))
                            ]),
                        ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tip", style: TextStyle(color: mainColor)),
                          Padding(padding: EdgeInsets.all(10),
                              child: Text("${_totalTip().toStringAsFixed(2)} zł", style: textStyle))
                        ]),
                      Column(
                        children: [
                          Slider(
                            onChanged: _onTipPercentageChange,
                            min: 0,
                            max: 100,
                            divisions: 20,
                            activeColor: Colors.blue,
                            inactiveColor: mainColor,
                            value: _tipPercentage.toDouble()),
                          Text("$_tipPercentage %", style: textStyle)
                        ]
                      )
                    ])),
                SizedBox(height: 20),
                Center(
                  child: Text("Value per person: ${((_totalTip() + _billValue) / _numberOfPersons).toStringAsFixed(2)} zł", style: textStyle)
                )
              ]
            )));
  }

  double _totalTip() {
    return (_billValue * _tipPercentage) / 100;
  }
  _onTipPercentageChange(double value) {
    setState(() => _tipPercentage = value.round());
  }
  _onAddPerson() {
    setState(() => _numberOfPersons++);
  }
  _onRemovePerson() {
    if (_numberOfPersons > 1) {
      setState(() => _numberOfPersons--);
    }
  }
  _onBillValueChanged(String newValue) {
    try {
      _billValue = double.parse(newValue);
    } catch (exception) {
      _billValue = 0;
    }
  }
}
