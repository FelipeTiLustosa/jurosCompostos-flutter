import 'package:flutter/material.dart';
import 'tela_resultados.dart';

class TelaComparacao extends StatefulWidget {
  const TelaComparacao({Key? key}) : super(key: key);

  @override
  _TelaComparacaoState createState() => _TelaComparacaoState();
}

class _TelaComparacaoState extends State<TelaComparacao> {
  final _capital1Controller = TextEditingController();
  final _capital2Controller = TextEditingController();
  final _aplicacao1Controller = TextEditingController();
  final _aplicacao2Controller = TextEditingController();
  final _mesesController = TextEditingController();
  final _taxa1Controller = TextEditingController();
  final _taxa2Controller = TextEditingController();

  void _calcularEComparar() {
    if (_capital1Controller.text.isEmpty ||
        _capital2Controller.text.isEmpty ||
        _aplicacao1Controller.text.isEmpty ||
        _aplicacao2Controller.text.isEmpty ||
        _mesesController.text.isEmpty ||
        _taxa1Controller.text.isEmpty ||
        _taxa2Controller.text.isEmpty) {
      _mostrarAlerta("Por favor, preencha todos os campos.");
      return;
    }

    final capital1 = double.parse(_capital1Controller.text);
    final capital2 = double.parse(_capital2Controller.text);
    final aplicacao1 = double.parse(_aplicacao1Controller.text);
    final aplicacao2 = double.parse(_aplicacao2Controller.text);
    final meses = int.parse(_mesesController.text);
    final taxa1 = double.parse(_taxa1Controller.text) / 100;
    final taxa2 = double.parse(_taxa2Controller.text) / 100;

    final resultado1 = _calcularJurosCompostos(capital1, aplicacao1, meses, taxa1);
    final resultado2 = _calcularJurosCompostos(capital2, aplicacao2, meses, taxa2);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaResultados(
          resultados1: resultado1,
          resultados2: resultado2,
        ),
      ),
    );
  }

  List<double> _calcularJurosCompostos(double capital, double aplicacao, int meses, double taxa) {
    List<double> rendimentos = [];
    for (int i = 0; i < meses; i++) {
      double rendimentoMensal = capital * taxa;
      capital += rendimentoMensal + aplicacao;
      rendimentos.add(capital);
    }
    return rendimentos;
  }

  void _mostrarAlerta(String mensagem) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Atenção"),
        content: Text(mensagem),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  Widget _campoTexto(String label, TextEditingController controller, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: Colors.blue),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue, width: 2),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comparação de Investimentos"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Investimento 1",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 8),
            _campoTexto("Investimento inicial (R\$)", _capital1Controller, Icons.savings),
            _campoTexto("Aplicação mensal (R\$)", _aplicacao1Controller, Icons.attach_money),
            _campoTexto("Taxa de juros mensal (%)", _taxa1Controller, Icons.percent),
            const SizedBox(height: 16),
            const Text(
              "Investimento 2",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 8),
            _campoTexto("Investimento inicial (R\$)", _capital2Controller, Icons.savings),
            _campoTexto("Aplicação mensal (R\$)", _aplicacao2Controller, Icons.attach_money),
            _campoTexto("Taxa de juros mensal (%)", _taxa2Controller, Icons.percent),
            const SizedBox(height: 16),
            const Text(
              "Detalhes do Período",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            _campoTexto("Período em meses", _mesesController, Icons.calendar_month),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _calcularEComparar,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Comparar Investimentos",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
