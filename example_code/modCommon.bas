Attribute VB_Name = "modCommon"
Option Explicit

Public Function GetStockRecByBC(ByVal strBarcode As String, Optional strMoreCond As String = "") As ADODB.Recordset
    Dim rs As ADODB.Recordset
    Dim strSql As String
    Dim strBarcode2 As String
    
    On Error GoTo ErrorHandler
    'Add 0 to barcode where len = 12 Some Scanner add extra leading zero to 12 digit barcode
    If gbolAddZero And Len(strBarcode) = 12 Then
        strBarcode2 = "0" & strBarcode
    ElseIf gbolAddZero And Len(strBarcode) = 13 And left$(strBarcode, 1) = "0" Then
        strBarcode2 = Mid$(strBarcode, 2)
    Else
        strBarcode2 = ""
    End If
    
    'strSql = "Select description,cat1 as Cat,cat2 as Sub,Sales_tax as Tax,sell,bonus,package,allow_fractions,stock_id ,cost from stock where barcode='" + strBarcode + " '"
    If strBarcode2 = "" Then
        strSql = "SELECT * FROM Stock WHERE barcode='" & strBarcode & "'"
    Else
        strSql = "SELECT * FROM Stock WHERE (barcode='" & strBarcode & " ' OR barcode ='" & strBarcode2 & "')"
    End If
    strSql = strSql & " " & strMoreCond & " ORDER BY description"
    
    Set rs = modAdo.GetRecordSet(strSql)
    Set GetStockRecByBC = rs
    Exit Function
ErrorHandler:
    err.Raise err.Number, err.Source, err.Description
End Function
'根据Stock_id获得Stock的细节
Public Function GetStockRecByID(ByVal strStockid As String) As ADODB.Recordset
    Dim rs As ADODB.Recordset
    Dim strSql As String
    
    On Error GoTo ErrorHandler
    strSql = "Select * from stock where stock_id=" + strStockid
    Set rs = modAdo.GetRecordSet(strSql)
    Set GetStockRecByID = rs
    Exit Function
ErrorHandler:
    err.Raise err.Number, err.Source, err.Description
End Function

Public Function GetComponentRecByID(ByVal strPackageID As String) As ADODB.Recordset
    Dim rs As ADODB.Recordset
    Dim strSql As String
    
    On Error GoTo ErrorHandler
    strSql = "Select stock_id,sell_inc,quantity from package where package_id=" + strPackageID
    Set rs = modAdo.GetRecordSet(strSql)
    Set GetComponentRecByID = rs
    Exit Function
ErrorHandler:
    err.Raise err.Number, err.Source, err.Description
End Function

'获取TaxCodes的数值
Public Function GetTaxPercentage(ByVal strTaxCode As String) As Double
    Dim rs As ADODB.Recordset
    Dim strSql As String
    
    On Error GoTo ErrorHandler
    strSql = "Select percentage from taxcodes where code='" + strTaxCode + "'"
    Set rs = modAdo.GetRecordSet(strSql)
    If Not rs.EOF Then
        GetTaxPercentage = nCdbl(rs(0)) / 100#
    End If
    Set rs = Nothing
    Exit Function
ErrorHandler:
    err.Raise err.Number, err.Source, err.Description
End Function

'根据Customer_id获得Customer的细节
Public Function GetCustomerRecByID(ByVal strCustomer As String) As ADODB.Recordset
    Dim rs As ADODB.Recordset
    Dim strSql As String
    
    On Error GoTo ErrorHandler
    strSql = "Select * from customer where customer_id=" & strCustomer
    Set rs = modAdo.GetRecordSet(strSql)
    'rs.CursorLocation = adUseClient
    'rs.Open strSql, conn, adOpenKeyset
    Set GetCustomerRecByID = rs
    Exit Function
ErrorHandler:
    err.Raise err.Number, err.Source, err.Description
End Function

Public Function GetValuationID() As Long
    Dim rs As ADODB.Recordset
    Dim strSql As String
    
    On Error GoTo ErrorHandler
    strSql = "SELECT TOP 1 valuation_id FROM Valuation ORDER BY valuation_id DESC"
    Set rs = modAdo.GetRecordSet(strSql)
    If Not (rs.EOF Or rs.BOF) Then
        GetValuationID = nClng(rs("valuation_id")) + 1
    Else
        GetValuationID = 1
    End If
    Set rs = Nothing
    Exit Function
ErrorHandler:
    If Not rs Is Nothing Then Set rs = Nothing
    err.Raise err.Number, err.Source, err.Description
    GetValuationID = 1
End Function

Public Function GetCustomerIDByBC(ByVal strBarcode As String) As Long
    Dim rsCustomer As ADODB.Recordset
    Dim strSql As String
    
    On Error GoTo ErrorHandler
    
    GetCustomerIDByBC = 0
    strSql = "SELECT customer_id FROM Customer WHERE barcode='" & Trim$(strBarcode) & "'"
    Set rsCustomer = modAdo.GetRecordSet(strSql)
    If Not rsCustomer.EOF Then
        GetCustomerIDByBC = rsCustomer("customer_id")
    End If
    Set rsCustomer = Nothing
    Exit Function
ErrorHandler:
    If rsCustomer Is Nothing Then
        Set rsCustomer = Nothing
    End If
    err.Raise err.Number, err.Source, err.Description

End Function

Public Function GetStaffIDByBC(ByVal strBarcode As String) As Long
    Dim rsStaff As ADODB.Recordset
    Dim strSql As String
    
    On Error GoTo ErrorHandler
    
    GetStaffIDByBC = 0
    strSql = "SELECT staff_id FROM Staff WHERE barcode='" & Trim$(strBarcode) & "'"
    Set rsStaff = modAdo.GetRecordSet(strSql)
    If Not rsStaff.EOF Then
        GetStaffIDByBC = rsStaff("staff_id")
    End If
    Set rsStaff = Nothing
    Exit Function
ErrorHandler:
    If rsStaff Is Nothing Then
        Set rsStaff = Nothing
    End If
    err.Raise err.Number, err.Source, err.Description

End Function

Public Function GetPackageSellEx(ByVal curSellInc As Currency, Package_id As Long) As Currency
    Dim rsComponents As ADODB.Recordset
    Dim rsStock As ADODB.Recordset
    Dim SellInc, SellEx As Currency
    Dim PackageSellEx As Currency
    
    Set rsComponents = GetComponentRecByID(nCstr(Package_id))
    If rsComponents.EOF Then
        '没有components
        ShowPrompt (errNoComponents)
        GetPackageSellEx = 0
        Exit Function
    End If
    
    SellInc = 0
    SellEx = 0
    While Not rsComponents.EOF
        If nCdbl(rsComponents("quantity")) > 0 Then
            SellInc = SellInc + nCcur(rsComponents("sell_inc")) * nCdbl(rsComponents("quantity"))
            Set rsStock = GetStockRecByID(Trim$(rsComponents("stock_id")))
            If Not rsStock.EOF Then
                SellEx = SellEx + nCcur(rsComponents("sell_inc")) _
                            / (1# + GetTaxPercentage(rsStock("sales_tax"))) _
                            * nCdbl(rsComponents("quantity"))
            Else
                MsgBox "Can not find Stock in GetPackageSellEx - Stock_id " & nCstr(rsComponents("stock_id"))
                SellEx = SellEx + nCcur(rsComponents("sell_inc")) * nCdbl(rsComponents("quantity"))
            End If
            Set rsStock = Nothing
        End If
        rsComponents.MoveNext
    Wend
    Set rsComponents = Nothing
    
    If SellInc = 0 Then
        PackageSellEx = 0
    Else
        PackageSellEx = SellEx * curSellInc / SellInc
    End If
    GetPackageSellEx = PackageSellEx
    
End Function


Public Function GetPackageSellInc(ByVal curSellEx As Currency, Package_id As Long) As Currency
    Dim rsComponents As ADODB.Recordset
    Dim rsStock As ADODB.Recordset
    Dim SellInc, SellEx As Currency
    Dim PackageSellInc As Currency
    
    Set rsComponents = GetComponentRecByID(nCstr(Package_id))
    If rsComponents.EOF Then
        '没有components
        ShowPrompt (errNoComponents)
        GetPackageSellInc = 0
        Exit Function
    End If
    
    SellInc = 0
    SellEx = 0
    While Not rsComponents.EOF
        If nCdbl(rsComponents("quantity")) > 0 Then
            SellInc = SellInc + nCcur(rsComponents("sell_inc")) * nCdbl(rsComponents("quantity"))
            Set rsStock = GetStockRecByID(Trim$(rsComponents("stock_id")))
            If Not rsStock.EOF Then
                SellEx = SellEx + nCcur(rsComponents("sell_inc")) _
                            / (1# + GetTaxPercentage(rsStock("sales_tax"))) _
                            * nCdbl(rsComponents("quantity"))
            Else
                MsgBox "Can not find Stock in GetPackageSellEx - Stock_id " & nCstr(rsComponents("stock_id"))
                SellEx = SellEx + nCcur(rsComponents("sell_inc")) * nCdbl(rsComponents("quantity"))
            End If
            Set rsStock = Nothing
        End If
        rsComponents.MoveNext
    Wend
    Set rsComponents = Nothing
    
    If SellEx = 0 Then
        PackageSellInc = 0
    Else
        PackageSellInc = curSellEx * SellInc / SellEx
    End If
    GetPackageSellInc = PackageSellInc
    
End Function

Public Function IsStockLow(ByVal lngStock_id As Long, Optional lngSellingQty As Double) As Boolean

    Dim SQLQuery As String
    Dim rsTemp As ADODB.Recordset
    Dim lngCurrentQty As Double
    
    SQLQuery = "SELECT order_threshold, quantity, order_quantity FROM Stock WHERE stock_id = " & lngStock_id
    Set rsTemp = modAdo.GetRecordSet(SQLQuery)

    IsStockLow = False
    If Not rsTemp.EOF Then
        lngCurrentQty = nCdbl(rsTemp("quantity"))
        If Not IsMissing(lngSellingQty) Then lngCurrentQty = lngCurrentQty - lngSellingQty
        If nCdbl(rsTemp("order_threshold")) >= lngCurrentQty And nCdbl(rsTemp("order_quantity")) > 0 Then
            IsStockLow = True
        End If
    End If
    Set rsTemp = Nothing
End Function

Public Function LowerThanCost(ByVal lngStockID As Long, ByVal curSell As Currency) As Boolean

    Dim SQLQuery As String
    Dim rsTemp As ADODB.Recordset
    Dim curCost As Currency
    Dim curSaleEx As Currency

    SQLQuery = "SELECT cost,sales_tax FROM Stock WHERE stock_id = " & lngStockID
    Set rsTemp = modAdo.GetRecordSet(SQLQuery)

    LowerThanCost = False
    If Not rsTemp.EOF Then
        curCost = nCcur(rsTemp("cost"))
        curSaleEx = curSell / (1# + GetTaxPercentage(rsTemp("sales_tax")))
        If curSaleEx < curCost Then LowerThanCost = True
    End If
    Set rsTemp = Nothing
    
End Function

Public Function LowerThanMin(ByVal lngStockID As Long, ByVal curSell As Currency) As Boolean

    Dim SQLQuery As String
    Dim rsTemp As ADODB.Recordset
    Dim CurMin As Currency

    SQLQuery = "SELECT custom2 FROM Stock WHERE stock_id = " & lngStockID
    Set rsTemp = modAdo.GetRecordSet(SQLQuery)

    LowerThanMin = False
    If Not rsTemp.EOF Then
        If IsNumeric(rsTemp("custom2")) Then
            CurMin = nCcur(rsTemp("custom2"))
            If CurMin > 0 And curSell < CurMin Then LowerThanMin = True
        End If
    End If
    Set rsTemp = Nothing
    
End Function

Public Function NoPassword() As Boolean
    Dim strPassword As String
    strPassword = ReadIniFile(App.Path & "\POS.ini", "POS", "Password")
    If modEnc.MyDecode(strPassword, "89") = "#%&*" Then
        NoPassword = True
    End If
End Function

Public Sub UnLoadDocketList(ByVal strTable As String)
    Dim SQLQuery As String
    
    On Error Resume Next
    SQLQuery = "DROP TABLE " & strTable
    modAdo.ExecuteCmd SQLQuery
End Sub

Public Function LoadDocketList(ByVal strFile As String, ByVal strTable As String) As Boolean
    Dim SQLQuery As String
    Dim rsDocketList As Recordset
    Dim intFile As Integer
    Dim strLine As String
    Dim strNum() As String
    Dim strdocket As String
    Dim i As Integer
    
    If Dir(strFile) = "" Then Exit Function
    
    On Error Resume Next
    SQLQuery = "DROP TABLE " & strTable
    modAdo.ExecuteCmd SQLQuery
    SQLQuery = "SELECT TOP 1 docket_id INTO " & strTable & " FROM Docket"
    modAdo.ExecuteCmd SQLQuery
    SQLQuery = "DELETE * FROM " & strTable
    modAdo.ExecuteCmd SQLQuery
    
    On Error GoTo errHandler
    
    SQLQuery = "SELECT * FROM " & strTable
    Set rsDocketList = modAdo.GetRecordSetWrite(SQLQuery)
    
    intFile = FreeFile
    Open strFile For Input As #intFile
    Do While (Not EOF(intFile))
        Line Input #intFile, strLine
        strNum() = Split(strLine, " ")
        For i = 0 To UBound(strNum)
            strdocket = Trim$(strNum(i))
            If strdocket <> "" Then
                If nClng(strdocket) > 0 Then
                    rsDocketList.AddNew
                    rsDocketList("docket_id") = nClng(strdocket)
                    rsDocketList.Update
                Else
                    MsgBox "Error load docket no. - " & strdocket
                End If
            End If
        Next i
    Loop
    Close #intFile
    rsDocketList.Close
    
    LoadDocketList = True
    
    Exit Function
errHandler:
    MsgBox err.Description
End Function

Public Sub CheckDefaultLanguage(ByRef SelectedLanguage As Integer)
'>> Add the 2nd line to VBLMRTSModule

'>>'else if language not specified on command line, query the user
'>>        CheckDefaultLanguage SelectedLanguage
'>>        If SelectedLanguage = False Then

    Dim intIndex As Integer
    Static bolChecked As Boolean
    
    If bolChecked Then Exit Sub
    intIndex = nCint(ReadIniFile(App.Path & "\POS.ini", "POS", "Language"))
    If intIndex > 0 Then
        bolChecked = True
        SelectedLanguage = intIndex
    End If
End Sub

'20180712L

Public Function MonthFirstDay(ByVal dCurrDate As Date)
  Dim dFirstDayNextMonth As Date
  
  On Error GoTo lbl_Error
 
  MonthFirstDay = DateSerial(Year(dCurrDate), Month(dCurrDate), 1)
  
  Exit Function
lbl_Error:
  MsgBox err.Description, vbOKOnly + vbExclamation
End Function

Public Function MonthLastDay(ByVal dCurrDate As Date)
  Dim dFirstDayNextMonth As Date
  
  On Error GoTo lbl_Error
 
  MonthLastDay = Empty
  dFirstDayNextMonth = DateSerial(CInt(Format(dCurrDate, "yyyy")), CInt(Format(dCurrDate, "mm")) + 1, 1)
  MonthLastDay = DateAdd("d", -1, dFirstDayNextMonth)
  
  Exit Function
lbl_Error:
  MsgBox err.Description, vbOKOnly + vbExclamation
End Function

'20180712L
Public Function FirstDayInQuarter(Optional dtmDate As Date = 0) As Date
    ' Returns the first day in the quarter specified
    ' by the date in dtmDate.
    Const dhcMonthsInQuarter As Integer = 3
    If dtmDate = 0 Then
        ' Did the caller pass in a date? If not, use
        ' the current date.
        dtmDate = Date
    End If
    FirstDayInQuarter = DateSerial( _
     Year(dtmDate), _
     Int((Month(dtmDate) - 1) / dhcMonthsInQuarter) * _
     dhcMonthsInQuarter + 1, _
     1)
End Function

'20180712L
Public Function LastDayInQuarter(Optional dtmDate As Date = 0) As Date
    ' Returns the last day in the quarter specified
    ' by the date in dtmDate.
    Const dhcMonthsInQuarter As Integer = 3
    If dtmDate = 0 Then
        ' Did the caller pass in a date? If not, use
        ' the current date.
        dtmDate = Date
    End If
    LastDayInQuarter = DateSerial( _
     Year(dtmDate), _
     Int((Month(dtmDate) - 1) / dhcMonthsInQuarter) _
      * dhcMonthsInQuarter + (dhcMonthsInQuarter + 1), _
     0)
End Function

'20180712L
Public Function LastDateWeekNo(ByVal intYear As Integer, ByVal intWeek As Integer) As Date
    'Dim theDate As Date
    'theDate = DateSerial(intYear, 1, 1)
    'theDate = DateAdd("d", -Weekday(theDate, vbUseSystemDayOfWeek) + 1, theDate)
    'LastDateWeekNo = DateAdd("ww", intWeek, theDate) - 1
    Dim strSql As String
    Dim rsDate As ADODB.Recordset
    
    strSql = "SELECT DATEADD(wk, DATEDIFF(wk, 5, '" & intYear & "0101" & "') + (" & intWeek & "-1), 6) AS EndOfWeek"
    Set rsDate = modAdo.GetRecordSet(strSql)
    If Not rsDate.EOF Then
        LastDateWeekNo = nCdate(rsDate("EndOfWeek"))
    End If
End Function

'20180712L
Public Function LastDateQuarterNo(ByVal intYear As Integer, ByVal intQuarter As Integer) As Date
    Dim intMonth As Integer
    
    If intQuarter = 1 Then
        intMonth = 1
    ElseIf intQuarter = 2 Then
        intMonth = 4
    ElseIf intQuarter = 3 Then
        intMonth = 7
    ElseIf intQuarter = 4 Then
        intMonth = 10
    End If
    LastDateQuarterNo = LastDayInQuarter(DateSerial(intYear, intMonth, 1))
End Function

'20180712L
Public Function LastDateInWeek(ByVal theDate As Date) As Date
    Dim dateEnd As Date
    dateEnd = theDate
    dateEnd = DateAdd("d", -Weekday(dateEnd, vbUseSystemDayOfWeek) + 1, dateEnd)
    dateEnd = DateAdd("ww", 1, dateEnd) - 1
    LastDateInWeek = dateEnd

End Function

'20180712L
Public Function FirstDateInWeek(ByVal theDate As Date) As Date
    Dim dateStart As Date
    dateStart = theDate
    dateStart = DateAdd("d", -Weekday(dateStart, vbUseSystemDayOfWeek) + 1, dateStart)
    FirstDateInWeek = dateStart

End Function



