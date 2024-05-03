import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Fotter extends StatefulWidget {
  const Fotter({super.key});

  @override
  State<Fotter> createState() => _FotterState();
}

class _FotterState extends State<Fotter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 50,
        right: 50,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 200,
              ),
              Column(
                children: [
                  const Text(
                    'Support Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/bmc.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Contact Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ResizableButton(
                        iconData: FontAwesomeIcons.linkedin,
                        colors: Color.fromARGB(255, 11, 3, 108),
                        Url:
                            'https://www.linkedin.com/in/abhishek-naik-6853382ba/',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ResizableButton(
                        iconData: FontAwesomeIcons.github,
                        colors: const Color.fromARGB(255, 43, 43, 43),
                        Url: 'https://github.com/abhisheknaik2k20',
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 200,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 300, right: 300, top: 25, bottom: 10),
            child: Container(
              height: 1,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
            ),
          ),
          const Text(
            'Made By Abhishek Naik',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ResizableButton extends StatefulWidget {
  final String Url;
  final IconData iconData;
  final Color colors;
  var isHovered = false;
  ResizableButton(
      {required this.Url,
      required this.colors,
      required this.iconData,
      super.key});

  @override
  State<ResizableButton> createState() => _ResizableButtonState();
}

class _ResizableButtonState extends State<ResizableButton> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          widget.isHovered = true;
        });
      },
      onExit: (event) {
        setState(
          () {
            widget.isHovered = false;
          },
        );
      },
      child: InkWell(
        onTap: () async {
          final Uri url = Uri.parse(widget.Url);
          await launchUrl(url);
        },
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(color: Colors.white, width: 2),
            color: widget.colors,
          ),
          child: Icon(
            widget.iconData,
            color: Colors.white,
            size: widget.isHovered ? 40 : 30,
          ),
        ),
      ),
    );
  }
}
