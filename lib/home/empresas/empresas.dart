import 'package:flutter/material.dart';
import 'package:flyvoo/tema.dart';
import 'package:google_fonts/google_fonts.dart';

class Empresas extends StatefulWidget {
  const Empresas({super.key});

  @override
  State<Empresas> createState() => _EmpresasState();
}

class _EmpresasState extends State<Empresas> {
  var list = <Widget>[];

  @override
  Widget build(BuildContext context) {
    list = <Widget>[];
    for (var i = 0; i < 20; i++) {
      list.add(
        const Padding(
          padding: EdgeInsets.all(17.0),
          child: CardEmpresas(),
        ),
      );
      i != 49
          ? list.add(
              Divider(
                color: Tema.texto.toColor(),
              ),
            )
          : list.add(
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 50,
                  top: 30,
                ),
                child: Center(
                  child: CircularProgressIndicator(
                    color: Tema.texto.toColor(),
                  ),
                ),
              ),
            );
    }

    return Column(
      children: [
        Text(
          "Empresas",
          style: GoogleFonts.inter(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.41,
            color: Tema.texto.toColor(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return list[index];
            },
            shrinkWrap: true,
            itemCount: list.length,
          ),
        ),
      ],
    );
  }
}

class CardEmpresas extends StatelessWidget {
  const CardEmpresas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipOval(
          child: Image.asset(
            "assets/background/loading.gif",
            width: 50,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Estágio em Web Design | Home Office",
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(
                  color: Tema.texto.toColor(),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Google",
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(
                  color: Tema.texto.toColor(),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "São Paulo, São Paulo, Brasil(Remoto)",
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(
                  color: Tema.texto.toColor(),
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icons/alvo.png",
                    color: Tema.texto.toColor(),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Text("Recrutando"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
