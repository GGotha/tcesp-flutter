import 'package:flutter/material.dart';
import 'package:tcesp/models/portal_model.dart';
import 'package:tcesp/themes/colors.dart';

class TcespButton extends StatefulWidget {
  TcespButton({this.portalStore});

  final portalStore;

  @override
  _TcespButtonState createState() => _TcespButtonState();
}

class _TcespButtonState extends State<TcespButton> {
  final textFieldController = TextEditingController();

  final isOverSpendList = <String>["Sim", "Não"];

  String dropdownValue = 'Não';

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Adicionar Portal'),
            content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return Container(
                height: 180,
                child: Column(
                  children: [
                    TextField(
                      controller: textFieldController,
                      decoration: InputDecoration(
                        counterText: "",
                        labelText: "Nome do portal",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: TCESPGreyColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: TCESPGreyColor),
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Portal excedeu o teto limite?'),
                          Container(
                            width: double.infinity,
                            child: DropdownButton<String>(
                              elevation: 16,
                              style: const TextStyle(color: TCESPGreyColor),
                              underline:
                                  Container(height: 2, color: TCESPGreyColor),
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                });
                              },
                              value: dropdownValue,
                              items: isOverSpendList
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  var isOverSpendFormatted = false;

                  if (dropdownValue == "Não") {
                    isOverSpendFormatted = false;
                  }
                  if (dropdownValue == "Sim") {
                    isOverSpendFormatted = true;
                  }

                  var portal = new PortalModel(
                    id: 1,
                    name: textFieldController.text,
                    image: 'bauru.jpg',
                    isOverSpend: isOverSpendFormatted,
                  );

                  widget.portalStore.add(portal);

                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
      child: Material(
        color: Colors.transparent,
        child: Ink(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/icon_tcesp.png'),
              fit: BoxFit.fill,
            ),
            border: Border.all(
              color: Colors.grey[200],
              width: 4,
            ),
            shape: BoxShape.circle,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(75),
            onTap: null,
          ),
        ),
      ),
    );
  }
}
