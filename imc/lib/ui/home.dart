import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TextEditingController _idadeController = TextEditingController();
  final TextEditingController _alturaController = TextEditingController();
  final TextEditingController _pesoController = TextEditingController();

  double resultado = 0.0;
  String _resultadoConsulta = "";

  void calcularImc(){
    setState(() {
      int idade = int.parse(_idadeController.text);
      double altura = double.parse(_alturaController.text);
      double peso = double.parse(_pesoController.text);

      if( (_idadeController.text.isNotEmpty || idade > 0)
        && (_pesoController.text.isNotEmpty || peso > 0)
        && (_alturaController.text.isNotEmpty || altura > 0)){
          resultado = peso / (altura * altura);

        if(double.parse(resultado.toStringAsFixed(1 )) < 16){
          _resultadoConsulta = "Baixo peso muito grave!";
        }else if(double.parse(resultado.toStringAsFixed(1)) >= 16 &&
        double.parse(resultado.toStringAsFixed(1)) < 17){
          _resultadoConsulta = "Baixo peso grave!";
        }else if(double.parse(resultado.toStringAsFixed(1)) >= 17 &&
        double.parse(resultado.toStringAsFixed(1)) < 18.50){
          _resultadoConsulta = "Baixo peso!";
        }else if(double.parse(resultado.toStringAsFixed(1)) >= 18.50 &&
        double.parse(resultado.toStringAsFixed(1)) < 25){
          _resultadoConsulta = "Peso normal!";
        }else if(double.parse(resultado.toStringAsFixed(1)) >= 25 &&
        double.parse(resultado.toStringAsFixed(1)) < 30){
          _resultadoConsulta = "Sobrepeso!";
        }else if(double.parse(resultado.toStringAsFixed(1)) >= 30 &&
        double.parse(resultado.toStringAsFixed(1)) < 35){
          _resultadoConsulta = "Obesidade grau I";
        }else if(double.parse(resultado.toStringAsFixed(1)) >= 35 &&
        double.parse(resultado.toStringAsFixed(1)) < 40){
          _resultadoConsulta = "Obesidade grau II";
        }else if(double.parse(resultado.toStringAsFixed(1)) >= 40){
          _resultadoConsulta = "Obesidade grau III";
        }else{
          resultado = 0.0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora de IMC',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 25
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple[500],
        ),
        body: Container(
          alignment: Alignment.center,
          child: ListView(
            children: <Widget>[
              Image.asset(
                './images/imc_logo.png',
                height: 75.0,
                width: 75.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(right: 8.0, left: 8.0),
                    color: Colors.grey.shade300,
                    child: Column(
                      children: <Widget>[
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: _idadeController,
                          decoration: InputDecoration(
                            labelText: 'Idade',
                            hintText: '18',
                            icon: Icon(Icons.person_outline),
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: _alturaController,
                          decoration: InputDecoration(
                            labelText: 'Altura (m)',
                            hintText: '1.70',
                            icon: Icon(Icons.insert_chart),
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: _pesoController,
                          decoration: InputDecoration(
                            labelText: 'Peso (Kg)',
                            hintText: '39.5',
                            icon: Icon(Icons.line_weight)
                          ),
                        ),

                        // Buttom
                        Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: RaisedButton(
                              onPressed: calcularImc,
                              color: Colors.deepPurple,
                              child: Text('Calcular'),
                              textColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    text: 
                      TextSpan(
                        text: 'Você possui $_resultadoConsulta Pois seu imc é:',
                          style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          fontSize: 15.0,
                      ),
                      children: [
                        TextSpan(
                          text: '${resultado.toStringAsFixed(2)}',
                            style: TextStyle(
                            color: resultado < 25 ? Colors.purple : Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15.0,
                          ),
                        )
                      ], // Children
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
