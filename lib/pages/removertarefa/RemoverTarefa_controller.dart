import 'package:flutter/material.dart';

class RemoverTarefa extends StatefulWidget {
  final VoidCallback onRemover;
  final String ConfirmRemover;

  const RemoverTarefa(
      {Key? key, required this.onRemover, required this.ConfirmRemover})
      : super(key: key);

  @override
  State<RemoverTarefa> createState() => _RemoverTarefaState();
}

class _RemoverTarefaState extends State<RemoverTarefa> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.delete_outline),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Deseja deletar este Item?'),
              content: Text(
                  'O item "${widget.ConfirmRemover}" será removido para a lixeira!'),
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
