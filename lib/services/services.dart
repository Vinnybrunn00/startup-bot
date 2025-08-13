import 'package:process_run/process_run.dart';

class Services {
  final Shell _shell = Shell(options: ShellOptions());
  final String _args = 'pm2 restart 0';

  Future<void> execPowershellCommand() async {
    await _shell.run(_args);
  }
}
