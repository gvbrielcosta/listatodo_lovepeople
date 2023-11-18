import 'package:flutter/material.dart';
import 'package:listatodo_lovepeople/data/model/todo_response.dart';

class RemovTarefa extends StatefulWidget {
  final VoidCallback onRemover;
  final String confirmarRemover;
  final Todo todo;

  const RemovTarefa({
    Key? key,
    required this.onRemover,
    required this.confirmarRemover,
    required this.todo,
  }) : super(key: key);

  @override
  State<RemovTarefa> createState() => _RemovTarefaState();
}

class _RemovTarefaState extends State<RemovTarefa> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.delete_outline),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Deseja deletar este item?'),
              content: Text(
                  'O item "${widget.confirmarRemover}" será removido para a lixeira!'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    widget.onRemover();
                  },
                  child: Text('Confirmar'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
