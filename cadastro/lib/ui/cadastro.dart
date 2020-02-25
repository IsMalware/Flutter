import 'package:flutter/material.dart';

void main() => runApp(Cadastro());

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final TextEditingController _usuarioController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  String _bemvindo = 'Bem-Vindo...  ';

  void _mostraBemVindo(){
    setState(() {
      if(_usuarioController.text.isNotEmpty && _senhaController.text.isNotEmpty){
        debugPrint(_senhaController.text);
        _bemvindo = _usuarioController.text;
      }
    });
  }

  void _cancelar(){
    setState(() {
      _usuarioController.clear();
      _senhaController.clear();
      _bemvindo = 'Bem-Vindo...';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.deepPurpleAccent,
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          children: <Widget>[
            // Adicionando uma imagem a sua tela.
            Image.asset('assets/face.png',
              width: 90,
              height: 90,
              color: Colors.black87,
            ),
            // Exibindo um text acima do form.
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('$_bemvindo',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            // Adicionando um formulário a sua tela.
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Container(
                width: double.infinity,
                color: Colors.white54,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: TextField(
                        controller: _usuarioController,
                        decoration: InputDecoration(
                          hintText: 'Insira seu nome',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.5),
                          ),
                          icon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: TextField(
                        controller: _senhaController,
                        decoration: InputDecoration(
                          hintText: 'Insira sua senha',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.5),
                          ),
                          icon: Icon(Icons.lock),
                        ),
                        obscureText: true,
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          // Botão entrar
                          Container(
                            child: RaisedButton(
                              onPressed: _mostraBemVindo,
                              color: Colors.white70,
                              child: Text('Entrar',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16.9,
                                ),
                              ),
                            ),
                          ),
                          // Botão cancelar
                          Container(
                            child: RaisedButton(
                              onPressed: _cancelar,
                              color: Colors.white70,
                              child: Text('Cancelar',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16.9,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
