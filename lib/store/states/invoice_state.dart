import 'package:meta/meta.dart';

@immutable
class InvoiceState {
  final bool confirmed;
  final int electionId;
  final int officeId;
  final String officeName;
  final String officeType;
  final int invoiceId;
  final bool delete;
  final String issuedAt;
  final int issuedBy;
  final int issuedToId;
  final int issuingOfficeId;
  final int receivingOfficeId;

  InvoiceState(
      {this.confirmed,
      this.electionId,
      this.officeId,
      this.officeName,
      this.officeType,
      this.invoiceId,
      this.delete,
      this.issuedAt,
      this.issuedBy,
      this.issuedToId,
      this.issuingOfficeId,
      this.receivingOfficeId});

  InvoiceState copyWith(
      {bool confirmed,
      int electionId,
      int officeId,
      String officeName,
      String officeType,
      int invoiceId,
      bool delete,
      String issuedAt,
      int issuedBy,
      int issuedTo,
      int issuingOfficeId,
      int receivingOfficeId}) {
    return new InvoiceState(
        confirmed: confirmed ?? this.confirmed,
        electionId: electionId ?? this.electionId,
        officeId: officeId ?? this.officeId,
        officeName: officeName ?? this.officeName,
        officeType: officeType ?? this.officeType,
        invoiceId: invoiceId ?? this.invoiceId,
        delete: delete ?? this.delete,
        issuedAt: issuedAt ?? this.issuedAt,
        issuedBy: invoiceId ?? this.issuedBy,
        issuedToId: issuedTo ?? this.issuedToId,
        issuingOfficeId: issuingOfficeId ?? this.issuingOfficeId,
        receivingOfficeId: receivingOfficeId ?? this.receivingOfficeId);
  }

  factory InvoiceState.initial() {
    return new InvoiceState(
        confirmed: false,
        electionId: 1,
        officeId: 0,
        officeName: "",
        officeType: "",
        invoiceId: 0,
        delete: false,
        issuedAt: "",
        issuedBy: 0,
        issuedToId: 0,
        issuingOfficeId: null,
        receivingOfficeId: null);
  }
}
