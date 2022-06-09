import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../inicio/inicio_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IniciarSesionWidget extends StatefulWidget {
  const IniciarSesionWidget({Key key}) : super(key: key);

  @override
  _IniciarSesionWidgetState createState() => _IniciarSesionWidgetState();
}

class _IniciarSesionWidgetState extends State<IniciarSesionWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  bool passwordVisibility1;
  TextEditingController textController3;
  TextEditingController textController4;
  TextEditingController textController5;
  TextEditingController textController6;
  bool passwordVisibility2;
  TextEditingController textController7;
  bool passwordVisibility3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility1 = false;
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
    passwordVisibility2 = false;
    textController7 = TextEditingController();
    passwordVisibility3 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF0F6E99),
        automaticallyImplyLeading: false,
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Color(0xFF1F64A9),
                          labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Open Sans Condensed',
                              ),
                          indicatorColor: Color(0xFF356396),
                          tabs: [
                            Tab(
                              text: 'INICIAR SESIÓN',
                              icon: Icon(
                                Icons.person_rounded,
                                size: 35,
                              ),
                            ),
                            Tab(
                              text: 'CREAR CUENTA',
                              icon: Icon(
                                Icons.person_add_rounded,
                                size: 35,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    'https://raw.githubusercontent.com/EvelynMEstradaG-6J/Proyecto_UIII_Estrada_Gallegos_6J/main/IniciarSesion1.png',
                                    width: 500,
                                    height: 170,
                                    fit: BoxFit.cover,
                                  ),
                                  Divider(
                                    height: 20,
                                    color: Colors.transparent,
                                  ),
                                  Text(
                                    '¡Bienvenido!',
                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                          fontFamily: 'Open Sans Condensed',
                                          color: Color(0xFF3171B6),
                                          fontSize: 25,
                                        ),
                                  ),
                                  Text(
                                    'Ingresa con tu cuenta Mi Telmex',
                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                          fontFamily: 'Open Sans Condensed',
                                          color: Color(0xFF3171B6),
                                          fontSize: 18,
                                        ),
                                  ),
                                  Divider(
                                    height: 20,
                                    color: Colors.transparent,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                      child: TextFormField(
                                        controller: textController1,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'textController1',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: 'Correo electrónico',
                                          hintText: 'Correo electrónico',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x872B68A1),
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x872B68A1),
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          suffixIcon: textController1.text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () => setState(
                                                    () => textController1?.clear(),
                                                  ),
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: Color(0xFF757575),
                                                    size: 22,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                              fontFamily: 'Open Sans Condensed',
                                              color: Color(0xFF23517C),
                                              fontSize: 16,
                                            ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 30,
                                    color: Colors.transparent,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                      child: TextFormField(
                                        controller: textController2,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'textController2',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        obscureText: !passwordVisibility1,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: 'Contraseña',
                                          hintText: 'Contraseña',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x872B68A1),
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x872B68A1),
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => passwordVisibility1 = !passwordVisibility1,
                                            ),
                                            focusNode: FocusNode(skipTraversal: true),
                                            child: Icon(
                                              passwordVisibility1 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                              color: Color(0xFF757575),
                                              size: 22,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                              fontFamily: 'Open Sans Condensed',
                                              color: Color(0xFF23517C),
                                              fontSize: 16,
                                            ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 50,
                                    color: Colors.transparent,
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => InicioWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Ingresar',
                                    options: FFButtonOptions(
                                      width: 200,
                                      height: 50,
                                      color: Color(0xFF3D8DB4),
                                      textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                            fontFamily: 'Open Sans Condensed',
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                    child: Text(
                                      'O ingresa con...',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                            fontFamily: 'Open Sans Condensed',
                                            color: Color(0xFF23517C),
                                            fontSize: 16,
                                          ),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0x00EEEEEE),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          borderWidth: 1,
                                          buttonSize: 60,
                                          icon: FaIcon(
                                            FontAwesomeIcons.google,
                                            color: Color(0xFFD67B52),
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
                                          icon: FaIcon(
                                            FontAwesomeIcons.facebookF,
                                            color: Color(0xFF23517C),
                                            size: 25,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      'https://raw.githubusercontent.com/EvelynMEstradaG-6J/Proyecto_UIII_Estrada_Gallegos_6J/main/IniciarSesion2.png',
                                      width: 180,
                                      height: 180,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      'Regístrate en Mi Telmex',
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                            fontFamily: 'Open Sans Condensed',
                                            color: Color(0xFF3171B6),
                                            fontSize: 25,
                                          ),
                                    ),
                                    Text(
                                      'Ingresa con tu no. Telmex.',
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                            fontFamily: 'Open Sans Condensed',
                                            color: Color(0xFF3D8DB4),
                                            fontSize: 16,
                                          ),
                                    ),
                                    Divider(
                                      height: 20,
                                      color: Colors.transparent,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                        child: TextFormField(
                                          controller: textController3,
                                          onChanged: (_) => EasyDebounce.debounce(
                                            'textController3',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelText: 'Nombre y Apellido',
                                            hintText: 'Nombre y Apellido',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x872B68A1),
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x872B68A1),
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            suffixIcon: textController3.text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () => setState(
                                                      () => textController3?.clear(),
                                                    ),
                                                    child: Icon(
                                                      Icons.clear,
                                                      color: Color(0xFF757575),
                                                      size: 22,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Open Sans Condensed',
                                                color: Color(0xFF23517C),
                                                fontSize: 16,
                                              ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      height: 10,
                                      color: Colors.transparent,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                        child: TextFormField(
                                          controller: textController4,
                                          onChanged: (_) => EasyDebounce.debounce(
                                            'textController4',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelText: 'No. Telmex',
                                            hintText: 'No. Telmex',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x872B68A1),
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x872B68A1),
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            suffixIcon: textController4.text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () => setState(
                                                      () => textController4?.clear(),
                                                    ),
                                                    child: Icon(
                                                      Icons.clear,
                                                      color: Color(0xFF757575),
                                                      size: 22,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Open Sans Condensed',
                                                color: Color(0xFF23517C),
                                                fontSize: 16,
                                              ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      height: 10,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                        child: TextFormField(
                                          controller: textController5,
                                          onChanged: (_) => EasyDebounce.debounce(
                                            'textController5',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelText: 'Correo electrónico',
                                            hintText: 'Correo electrónico',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x872B68A1),
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x872B68A1),
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            suffixIcon: textController5.text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () => setState(
                                                      () => textController5?.clear(),
                                                    ),
                                                    child: Icon(
                                                      Icons.clear,
                                                      color: Color(0xFF757575),
                                                      size: 22,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Open Sans Condensed',
                                                color: Color(0xFF23517C),
                                                fontSize: 16,
                                              ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      height: 10,
                                      color: Colors.transparent,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                        child: TextFormField(
                                          controller: textController6,
                                          onChanged: (_) => EasyDebounce.debounce(
                                            'textController6',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          obscureText: !passwordVisibility2,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelText: 'Contraseña',
                                            hintText: 'Contraseña',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x872B68A1),
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x872B68A1),
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => passwordVisibility2 = !passwordVisibility2,
                                              ),
                                              focusNode: FocusNode(skipTraversal: true),
                                              child: Icon(
                                                passwordVisibility2 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                                color: Color(0xFF757575),
                                                size: 22,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Open Sans Condensed',
                                                color: Color(0xFF23517C),
                                                fontSize: 16,
                                              ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      height: 10,
                                      color: Colors.transparent,
                                    ),
                                    Divider(
                                      height: 1,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                        child: TextFormField(
                                          controller: textController7,
                                          onChanged: (_) => EasyDebounce.debounce(
                                            'textController7',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          obscureText: !passwordVisibility3,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelText: 'Confirmar contraseña',
                                            hintText: 'Confirmar contraseña',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x872B68A1),
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x872B68A1),
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => passwordVisibility3 = !passwordVisibility3,
                                              ),
                                              focusNode: FocusNode(skipTraversal: true),
                                              child: Icon(
                                                passwordVisibility3 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                                color: Color(0xFF757575),
                                                size: 22,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Open Sans Condensed',
                                                color: Color(0xFF23517C),
                                                fontSize: 16,
                                              ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      height: 10,
                                      color: Colors.transparent,
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => InicioWidget(),
                                          ),
                                        );
                                      },
                                      text: 'Crear cuenta',
                                      options: FFButtonOptions(
                                        width: 200,
                                        height: 50,
                                        color: Color(0xFF3D8DB4),
                                        textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                              fontFamily: 'Open Sans Condensed',
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                    ),
                                  ],
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
        ),
      ),
    );
  }
}
