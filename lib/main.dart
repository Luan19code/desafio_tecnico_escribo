import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Desafio Técnico Escribo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int totalSum = 0;
  List<int> numbers = [];
  void _calculation(int entryNumber) {
    if (entryNumber > 0 && entryNumber != null) {
      totalSum = 0;
      numbers = [];
      for (var i = 1; i < entryNumber; i++) {
        if ((i % 3 == 0) || (i % 5 == 0)) {
          totalSum += i;
          numbers.add(i);
        }
      }
      setState(() {});
    }
  }

  TextEditingController valueTextField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(border: Border.all(width: 1.0)),
                child: new TextField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: valueTextField,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Insira o valor",
                    hintStyle: new TextStyle(color: Colors.grey[300]),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextButton(
                  style: TextButton.styleFrom(),
                  child: Text(
                    'Calcular',
                  ),
                  onPressed: () {
                    _calculation(int.parse(valueTextField.text));
                  },
                ),
              ),
              if (totalSum != 0)
                Text(
                  "OS números Somados ${numbers.toString()}",
                  style: TextStyle(fontSize: 16),
                ),
              SizedBox(
                height: 20,
              ),
              if (totalSum != 0)
                Text(
                  "A Soma de todos os valores inteiros dividíveis por 3 ou 5 é $totalSum",
                  style: TextStyle(fontSize: 22),
                ),
              if (totalSum == 0)
                Text(
                  "Por favor escolha um numero inteiro e positivo",
                  style: TextStyle(fontSize: 22),
                )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
