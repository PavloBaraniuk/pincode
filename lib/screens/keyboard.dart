import 'package:flutter/material.dart';
import 'package:pincode/screens/keyboardVersion2.dart';

class CustomKeyboard extends StatelessWidget {
  const CustomKeyboard({Key? key, this.onTextInput, this.onBackSpace})
      : super(key: key);

  final ValueSetter<String>? onTextInput;
  final VoidCallback? onBackSpace;

  void _textInputHadler(String text) => onTextInput?.call(text);

  void _backSpaceHandler() => onBackSpace?.call();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          buildRowOne(),
          buildRowTwo(),
          buildRowThree(),
          buildRowFour(),
        ],
      ),
    );
  }

  Expanded buildRowOne() {
    return Expanded(
      child: Row(
        children: [
          TextKey(
            text: '1',
            onTextInput: _textInputHadler,
          ),
          TextKey(
            text: '2',
            onTextInput: _textInputHadler,
          ),
          TextKey(
            text: '3',
            onTextInput: _textInputHadler,
          ),
        ],
      ),
    );
  }

  Expanded buildRowTwo() {
    return Expanded(
      child: Row(
        children: [
          TextKey(
            text: '4',
            onTextInput: _textInputHadler,
          ),
          TextKey(
            text: '5',
            onTextInput: _textInputHadler,
          ),
          TextKey(
            text: '6',
            onTextInput: _textInputHadler,
          ),
        ],
      ),
    );
  }

  Expanded buildRowThree() {
    return Expanded(
      child: Row(
        children: [
          TextKey(
            text: '7',
            onTextInput: _textInputHadler,
          ),
          TextKey(
            text: '8',
            onTextInput: _textInputHadler,
          ),
          TextKey(
            text: '9',
            onTextInput: _textInputHadler,
          ),
        ],
      ),
    );
  }

  Expanded buildRowFour() {
    return Expanded(
      child: Row(
        children: [
          const SizedBox(
            height: 100,
            width: 120,
          ),
          TextKey(
            text: '0',
            onTextInput: _textInputHadler,
          ),
          BackSpaceKey(
            onBackSpace: _backSpaceHandler,
          ),
        ],
      ),
    );
  }
}
