// ignore_for_file: prefer_final_fields

import 'package:logger/logger.dart';

class LoggerCustomFileLogOutput extends LogOutput {
  Function _fileOutputFunction;

  LoggerCustomFileLogOutput(this._fileOutputFunction);

  @override
  void output(OutputEvent event) {
    _fileOutputFunction.call(event.lines);
  }
}
