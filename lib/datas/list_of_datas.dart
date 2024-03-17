import 'package:flutter/material.dart';
import 'package:interview_project/screens/widgets/forms/credit_note_form.dart';
import 'package:interview_project/screens/widgets/forms/debit_note_form.dart';
import 'package:interview_project/screens/widgets/forms/delivery_challan_form.dart';
import 'package:interview_project/screens/widgets/forms/purchase_invoice_form.dart';
import 'package:interview_project/screens/widgets/forms/sales_invoice_form.dart';
import '../screens/widgets/forms/customer_form.dart';
import '../screens/widgets/forms/supplier_form.dart';
import '../screens/widgets/forms/item_name_form.dart';
import '../screens/widgets/forms/item_type_form.dart';
import '../screens/widgets/forms/stock_opening_form.dart';
import '../screens/widgets/forms/ledger_form.dart';

List<String> mainHeading = [
  "invoices",
  "master",
  "estimates",
  "income",
  "vouchers",
  "cash/bank",
  "payroll",
  "report",
  "final ac"
];

List<String> columnHeadings = [
  "Customer",
  "Supplier",
  "Ledger",
  "Item Type",
  "Item Name",
  "Stock Opening",
  "Bank Account",
  "Loan/Advances"
];
List<String> finalColumn = [
  "Trading",
  "profit & Loss",
  "Trial Balance",
  "Balance Sheet"
];
List<String> column2 = [
  "GST",
  "Day Book",
  "Stock Details",
  "Register",
  "Cash Account",
  'Bank Account',
  "Ledger",
  "Duties and Tax",
  "Summary"
];

Map<String, List<String>> topicData = {
  'invoices': [
    "Sales Invoice",
    "Delivery Challan",
    "Credit Note",
    "Purchase Invoice",
    "Debit Note"
  ],
  'master': [
    "Master Invoice",
    "Master Challan",
    "Master Note",
    "Master Invoice",
    "Debit Note"
  ],
  "estimates": [
    "estimates Invoice",
    "estimates Challan",
    "estimates Note",
    "estimates Invoice",
    "Debit Note"
  ],
  "income": [
    "Sales Invoice",
    "Delivery Challan",
    "Credit Note",
    "Purchase Invoice",
    "Debit Note"
  ],
  "vouchers": [
    "vouchers Invoice",
    "vouchers Challan",
    "vouchers Note",
    "vouchers Invoice",
    "Debit Note"
  ],
  "cash/bank": [
    "cash Invoice",
    "cash Challan",
    "cash Note",
    "cash Invoice",
    "Debit Note"
  ],
  "payroll": [
    "payroll Invoice",
    "payroll Challan",
    "payroll Note",
    "payroll Invoice",
    "Debit Note"
  ],
  "report": [
    "report Invoice",
    "report Challan",
    "report Note",
    "report Invoice",
    "report Note"
  ],
  "final ac": [
    "final Invoice",
    "final Challan",
    "final Note",
    "final Invoice",
    "Debit Note"
  ]
};
Map<String, Widget> formsList = {
  'Item Type': const ItemTypeForm(),
  "Supplier": const SupplierForm(),
  "Item Name": const ItemNameForm(),
  "Customer": const CustomerForm(),
  "Stock Opening": const StockOpeningForm(),
  "Ledger": const LedgerForm(),
  "Sales Invoice": const SalesInvoiceForm(),
  "Delivery Challan": const DeliveryChallanForm(),
  "Credit Note": const CreditNoteForm(),
  "Purchase Invoice": const PurchaseInvoiceForm(),
  "Debit Note": const DebitNoteForm(),
};

Map<int, List> customerList = {
  0: ["GST Number", "Client Name", "Exempted"],
  1: ["Email", "Phone", "Opening Balance"],
  2: ["Address", "City", "State"]
};
