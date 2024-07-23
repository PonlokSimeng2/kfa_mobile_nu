import '../../exports.dart';

enum PropertyAndAutoVerbalStatus {
  pending,
  resubmit,
  approved,
  rejected,
}

extension PropertyAndAutoVerbalStatusExtensions on PropertyAndAutoVerbalStatus {
  Color get statusColor {
    switch (this) {
      case PropertyAndAutoVerbalStatus.pending:
        return Colors.yellow[100]!;
      case PropertyAndAutoVerbalStatus.approved:
        return Colors.green[100]!;
      case PropertyAndAutoVerbalStatus.rejected:
        return Colors.red[100]!;
      case PropertyAndAutoVerbalStatus.resubmit:
        return Colors.blue[100]!;
    }
  }

  Color get statusTextColor {
    switch (this) {
      case PropertyAndAutoVerbalStatus.pending:
        return Colors.yellow[800]!;
      case PropertyAndAutoVerbalStatus.approved:
        return Colors.green[800]!;
      case PropertyAndAutoVerbalStatus.rejected:
        return Colors.red[800]!;
      case PropertyAndAutoVerbalStatus.resubmit:
        return Colors.blue[800]!;
    }
  }
}
