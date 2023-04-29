import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  @override
  Widget build(BuildContext context) {
    const _title = "Create your first node";
    const _description = "Add a note";
    const _createNote = "Create a note";
    const _importNote = "Import Note";
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
          padding: PaddingItems.horizontalPadding,
          child: Column(children: [
            PngImage(name: ImageItems().appleWithoutPath),
            const _TitleWidget(title: _title),
            _getSubtitleWidgetWithPadding(_description),
            const Spacer(),
            _createButton(_createNote, context),
            TextButton(onPressed: () {}, child: Text(_importNote)),
            SizedBox(height: 50)
          ])),
    );
  }

  Padding _getSubtitleWidgetWithPadding(String _description) => Padding(padding: PaddingItems.verticalPadding,child: const _SubTitleWidget(textAlign: TextAlign.center,description: _description,),);

  ElevatedButton _createButton(String _createNote, BuildContext context) {
    return ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                  height: ButtonHeights.buttonNormalHeight,
                  child: Center(
                    child: Text(_createNote,
                        style: Theme.of(context).textTheme.headlineSmall),
                  )));
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    super.key,
    required this.textAlign,
    required this.description,
  });
  final TextAlign textAlign;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Text("Add a a note " * 7,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400));
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800));
  }
}

class PaddingItems {
  static EdgeInsets horizontalPadding =
      new EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets verticalPadding = new EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
