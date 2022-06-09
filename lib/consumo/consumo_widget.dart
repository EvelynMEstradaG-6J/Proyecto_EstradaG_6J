import '../articulos/articulos_widget.dart';
import '../clientes/clientes_widget.dart';
import '../empleado2/empleado2_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../iniciar_sesion/iniciar_sesion_widget.dart';
import '../inicio/inicio_widget.dart';
import 'package:flutter/material.dart';

class ConsumoWidget extends StatefulWidget {
  const ConsumoWidget({Key key}) : super(key: key);

  @override
  _ConsumoWidgetState createState() => _ConsumoWidgetState();
}

class _ConsumoWidgetState extends State<ConsumoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF0F6E99),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.menu_outlined,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          'CONSUMO',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Open Sans Condensed',
                color: Colors.white,
                fontSize: 20,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            buttonSize: 60,
            icon: Icon(
              Icons.help_outline,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16,
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Image.network(
              'https://raw.githubusercontent.com/EvelynMEstradaG-6J/Proyecto_UIII_Estrada_Gallegos_6J/main/IniciarSesion2.png',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InicioWidget(),
                  ),
                );
              },
              child: ListTile(
                title: Text(
                  'INICIO',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Open Sans Condensed',
                        color: Color(0xFF23517C),
                      ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF23517C),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticulosWidget(),
                  ),
                );
              },
              child: ListTile(
                title: Text(
                  'ARTÍCULOS',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Open Sans Condensed',
                        color: Color(0xFF23517C),
                      ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF23517C),
                  size: 20,
                ),
                tileColor: Colors.white,
                dense: false,
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ClientesWidget(),
                  ),
                );
              },
              child: ListTile(
                title: Text(
                  'CLIENTE',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Open Sans Condensed',
                        color: Color(0xFF23517C),
                      ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF23517C),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Empleado2Widget(),
                  ),
                );
              },
              child: ListTile(
                title: Text(
                  'EMPLEADO',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Open Sans Condensed',
                        color: Color(0xFF23517C),
                      ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF23517C),
                  size: 20,
                ),
                tileColor: Colors.white,
                dense: false,
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConsumoWidget(),
                  ),
                );
              },
              child: ListTile(
                title: Text(
                  'CONSUMO',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Open Sans Condensed',
                        color: Color(0xFF23517C),
                      ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF23517C),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IniciarSesionWidget(),
                  ),
                );
              },
              child: ListTile(
                title: Text(
                  'CERRAR SESIÓN',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Open Sans Condensed',
                        color: Color(0xFFD16433),
                      ),
                ),
                trailing: Icon(
                  Icons.login_outlined,
                  color: Color(0xFFD16433),
                  size: 30,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Divider(
                      color: Color(0x000F6E99),
                    ),
                    Image.network(
                      'https://raw.githubusercontent.com/EvelynMEstradaG-6J/Proyecto_UIII_Estrada_Gallegos_6J/main/Consumo1.png',
                      width: 500,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Bienvenido a la configuracion de red Telmex',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Open Sans Condensed',
                            color: Color(0xFF23517C),
                            fontSize: 22,
                          ),
                    ),
                    Divider(
                      height: 20,
                      color: Color(0x000F6E99),
                    ),
                    Text(
                      'Aqui puedes hacer un chequeo de tu red \ny revisar los dispositivos que se conectan',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Open Sans Condensed',
                            color: Color(0xFF3171B6),
                            fontSize: 18,
                          ),
                    ),
                    Divider(
                      height: 40,
                      color: Color(0x000F6E99),
                    ),
                  ],
                ),
              ),
              Image.network(
                'https://raw.githubusercontent.com/EvelynMEstradaG-6J/Proyecto_UIII_Estrada_Gallegos_6J/main/Consumo2.png',
                width: 100,
                height: 300,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    height: 20,
                    color: Color(0x000F6E99),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    title: Text(
                      'Revisar dispositivos conectados',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Open Sans Condensed',
                            color: Color(0xFF23517C),
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF23517C),
                      size: 20,
                    ),
                    tileColor: Color(0x207AB2CB),
                    dense: false,
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'Seguridad de la red',
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Open Sans Condensed',
                        color: Color(0xFF23517C),
                      ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF23517C),
                  size: 20,
                ),
                tileColor: Color(0x000F6E99),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Aumentar velocidad de tu red Infinitum',
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Open Sans Condensed',
                        color: Color(0xFF23517C),
                      ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF23517C),
                  size: 20,
                ),
                tileColor: Color(0x207AB2CB),
                dense: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
