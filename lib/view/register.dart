import 'package:flutter/material.dart';
import 'package:flutter_espacoeleva_app/helpers/utils.dart';
import 'package:flutter_espacoeleva_app/view/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _rememberMe = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rosaSecundario,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: rosaPrimario,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back, color: branco),
                  color: branco,
                  iconSize: 24.0,
                  splashRadius: 24.0,
                  splashColor: rosaPrimario,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  tooltip: 'Voltar',
                  constraints: const BoxConstraints(),
                  alignment: Alignment.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Cadastro',
                    style: TextStyle(
                      color: rosaPrimario,
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 1),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Crie sua nova conta agora!',
                    style: TextStyle(
                      color: branco,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, color: rosaPrimario),
                    filled: true,
                    fillColor: rosaPrimario.withOpacity(0.3),
                    hintText: 'Nome Completo',
                    hintStyle: const TextStyle(color: rosaPrimario, fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  ),
                  style: const TextStyle(color: rosaPrimario),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_rounded, color: rosaPrimario),
                    filled: true,
                    fillColor: rosaPrimario.withOpacity(0.3),
                    hintText: 'E-mail',
                    hintStyle: const TextStyle(color: rosaPrimario, fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  ),
                  style: const TextStyle(color: rosaPrimario),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 5,
                ),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    TextFormField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock, color: rosaPrimario),
                        filled: true,
                        fillColor: rosaPrimario.withOpacity(0.3),
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: rosaPrimario, fontSize: 14),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                      ),
                      style: const TextStyle(color: rosaPrimario),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(
                        _obscurePassword ? Icons.visibility_off : Icons.visibility,
                        color: rosaPrimario,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 355,
                    height: 50,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: rosaPrimario,
                        backgroundColor: rosaPrimario,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      child: const Text(
                        'Criar minha conta',
                        style: TextStyle(
                          color: rosaSecundario,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        visualDensity: VisualDensity.compact,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _rememberMe = newValue!;
                          });
                        },
                        checkColor: rosaPrimario,
                        fillColor: MaterialStateProperty.all(branco),
                        side: BorderSide(color: _rememberMe ? rosaPrimario.withOpacity(0.3) : rosaPrimario),
                      ),
                      const Text(
                        'Lembrar-me',
                        style: TextStyle(
                          color: rosaPrimario,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Text(
                      'Esqueceu sua senha?',
                      style: TextStyle(
                        color: rosaPrimario,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: rosaPrimario,
                      thickness: 1,
                      indent: 10,
                      endIndent: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Ou continue com',
                      style: TextStyle(
                        color: rosaPrimario,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: rosaPrimario,
                      thickness: 1,
                      indent: 5,
                      endIndent: 10,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook, color: Colors.indigo, size: 30),
                      ),
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.g_mobiledata, color: Colors.green, size: 40),
                      ),
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.apple, color: Colors.black, size: 30),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Já possui uma conta?',
                    style: TextStyle(
                      color: branco,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login()));
                    },
                    child: const Text(
                      'Entrar agora',
                      style: TextStyle(
                        color: rosaPrimario,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: rosaPrimario,
                      ),
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
