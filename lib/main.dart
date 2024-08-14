import 'package:flutter/material.dart';

void main() => runApp(const TarjetaApp());

class TarjetaApp extends StatelessWidget {
  const TarjetaApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'Tarjeta cesar',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: const PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo de Tarjetas"),
        actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
        backgroundColor: Color(0xffdc0a5a),
        shape: const StadiumBorder(),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide.merge(
                  BorderSide(
                      width: 1.5, color: Colors.grey, style: BorderStyle.solid),
                  BorderSide(
                      width: 1.5,
                      color: Colors.grey,
                      style: BorderStyle.solid)),
              borderRadius: BorderRadius.circular(20),
            ),
            color: const Color(0xffcb118d),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cesar is Cool',
                  style:
                      const TextStyle(color: Color(0xfff8f2fd), fontSize: 30),
                ),
                const SizedBox(height: 20),
                Container(height: 100, width: 100, child: const FlutterLogo()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
