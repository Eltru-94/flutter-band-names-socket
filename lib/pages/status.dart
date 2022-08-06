import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:band_names/services/socket.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);
    //socketService.socket.o

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text('ServerStatus: ${socketService.serverStatus}')],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {
          //Tarea
          //emitir: emitir-mensaje
          //{ nombre:'Flutter', mensaje:'Hola que tal'}
          socketService.socket.emit('emitir-mensaje',
              {'nombre': 'Flutter', 'mensaje': 'Hola que tal tru'});
        },
      ),
    );
  }
}
