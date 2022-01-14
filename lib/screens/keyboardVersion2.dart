import "package:flutter/material.dart";

class TextKey extends StatelessWidget {
  const TextKey({
    Key? key,
    this.text,
    this.onTextInput,
    this.flex = 1,
  }) : super(key: key);

  final String? text;
  final ValueSetter<String>? onTextInput;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Material(
          shape: const CircleBorder(),
          color: const Color(0x6fe2e2ea),
          child: InkWell(
            onTap: () => onTextInput?.call(text!), // not null chek !
            child: Center(
              child: Text(text!),
            ),
          ),
        ),
      ),
    );
  }
}

class BackSpaceKey extends StatelessWidget {
  const BackSpaceKey({Key? key, this.onBackSpace, this.flex = 1})
      : super(key: key);

  final VoidCallback? onBackSpace;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(60, 1, 1, 0),
        child: Material(
          child: InkWell(
            onTap: () => onBackSpace?.call(),
            child: const Center(
              child: Icon(Icons.backspace),
            ),
          ),
        ),
      ),
    );
  }
}
