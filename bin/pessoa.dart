class Pessoa {
  String _nome;
  double _peso;
  double _altura;

Pessoa(this._nome, this._peso, this._altura);

String get nome => _nome;
set nome (String nome){
    if (nome.length > 3){
      _nome = nome;
    }
  }

double get peso => _peso;
set peso (double peso){
  if (peso > 0){
    _peso = peso;
  }else{
    throw Exception("O Peso nao pode ser Zero");
  }
}

double get altura => _altura;
set altura (double altura){
  if(altura > 0){
    _altura = altura;
  }else{
    throw Exception("A Altura nao pode ser Zero");
  }
}

double calcularIMC() {
    return _peso / (_altura * _altura);
  }


  @override
  String toString() {
    return "$nome, seu IMc: ${calcularIMC().toStringAsFixed(2)}";
  }
}






 