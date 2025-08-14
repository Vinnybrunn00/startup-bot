import 'package:process_run/process_run.dart';

class Services {
  final Shell _shell = Shell(options: ShellOptions());
  final String _path = 'C:\\Users\\vindev\\Desktop\\projects\\tester\\main.js';

  Future<void> execPowershellCommand() async {
    await _shell.runExecutableArguments('powershell', [
      '-Command',
      'Start-Process',
      '-FilePath',
      'powershell.exe',
      '-ArgumentList',
      '"-Command pm2 start '
          '${_path.replaceAll('\\', '/')}'
          '"',
      '-WindowStyle',
      'Hidden',
      '-Wait',
    ]);
  }
}
