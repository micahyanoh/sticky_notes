import 'package:gsheets/gsheets.dart';

class GoogleSheetsApi {
  // create credentials
  static const _credentials = r'''
{
  "type": "service_account",
  "project_id": "sticky-notes-431316",
  "private_key_id": "c6c9219311f005b6b3f0947607f457acbee20c8a",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCY5INF9Vby2ffy\njm+95EajTvxPF8wSaVnswBLFW7ZMDrxSMJ7sx0lsH8AtBOuoyOBzIUx45zvvRCC6\nwQEBTOccJUcEsV/mjjkXupf8q3F2Rkb8GeP8j0ku31/teTH9G8Dc4BNWmxcVol64\nllmWsl67XGOhFXsQMT1wfgsfgLEkq5jLdNZxDXTQXNY2e7vLzcpxGnBTjIj7pJg6\nRGJbltIK7kVFpxTPrZBLY+j02Fwg3P4mSF1Vi0vDZ6ZhUwzkmFibuQ6fXY1FkOPm\ndkTzhVvcDi2ythXJAuO0xnmpLP0rqbzrRxAva6Xpf9wWoAZQg6tGXWPFxEB4gAC3\natiyb/N5AgMBAAECggEAAg4VPR4bc3NuT5xuQFBGikikH8iHOcqgdqwMvIobaMmM\narLkWfSiRiGlnr1JkRjVGnsMuPXLso84/OWd9rdixlgybIvZSQMpnYnoo9DmmyM9\n7kLHU5RV9Js0Qf/+ZeNm+9kHrYLzZBss+IBt1xaR6yUGYkqEf07YH3BURDHBv8dI\n2n85WBOTOkyyCpY8jugw51OHzAkYr2ZvO8M2kkakg24nDxdJZMDXGsd7U62In//9\nPm+iaY4g2fP0rmuBdoMW0z7SSiJ7fIFZqhCY571OmfxAd7wPAZnyzFycIts3+DeT\nl5/I8RSOhJAFXQt2oQfEo/MYL6qZgIWe+fu8BWBukQKBgQDIOe1BDeqHOxpXz2mN\nXBiRn5nJ786hFOkSwHxwXbc/Yi/3XNYidqS/xr7p454LCMiyZ2rV2coLt2NIyDOC\nWi6nYQgkut+BhrDjJD4KgMKoQzEjia9T7Rk2g1SXHFO/0kz6Kl+CpPAFXxlSXZa9\nepWjTdrYbwq2dsKOdVwsykXy8QKBgQDDez0DVgJmMMOJ+1DEkpUgi+sNwjAgyos9\nWDrcc+Akh33mFlfV0a7Mxyviy1/KmY29lNVc/24o9JG2ma+5COPfac0z3jzW0ev6\nY8PFYDVJ1d0W85S6VD4hfxEuhVWs90PACxWrcPtA5FYRGKoOUFjbaADjZLydQumD\nFWwRe475CQKBgCbNuyI5bTNKC//qjX081PIb6TUOiZAEOmtM7JDmSKY7BCq/Tiyd\nq64S+Vrgpvdie2q/yh+ptpNwtggb7IedrJ75mhdsM/apQMy0cGWesJrlcrd9boIo\nWBONfi5O6hgpzItK/PmXt4CC/qhMxPLxt+BPLVN2qa/U8j2jlvqDNO0xAoGBAJmC\nCLq66y1ms9eCVL3ZQmSJm+91BChsBgYJaEfAc08cW4C5IQbXH8bNzafO/41xIj6z\nRw49xDtDO75CWB0dXx0Nz8ggiHRF62L4vz8bOx2dZX5lj/D2wMe7Kjn3GP24Oyrv\nSXgVRCmEZhYM4VZWQEEkHjZz4C464nc+9luQRQlJAoGAX1S+xp/+Vtks9Ljh7X3l\nl3di9ORO2ZYpYC/Ow4M49v2QszqQCfobTDhibE3aD6RXWi3dx52DQMEDDlF5XGTm\njUPRJnjKW1h8s7MiQnFMhckrrFAdIrKImDA5cHqwFOkSnr82SG8tBQEn/5l5j8x1\nOnkI2CcT96p5OaK3bJLQxMo=\n-----END PRIVATE KEY-----\n",
  "client_email": "sticky-notes-317@sticky-notes-431316.iam.gserviceaccount.com",
  "client_id": "108739328541209265128",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/sticky-notes-317%40sticky-notes-431316.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}

''';
// set up and connect to the spreadsheet
  // spreadsheet id
  static final _spreadsheetId = '14oIYlMBUYGpikx4ZA1w9z-95ex8u87XH7iCAMWPiPk4';
  static final _gsheets = GSheets(_credentials);
  static Worksheet? _worksheet;

  // initialize the spreadsheet!
  Future Init() async {
    final ss = await _gsheets.spreadsheet(_spreadsheetId);
    _worksheet = ss.worksheetByTitle('worksheet1');
  }
}
