VERSION 5.00
Object = "{A8E5842E-102B-4289-9D57-3B3F5B5E15D3}#15.0#0"; "Codejock.Controls.v15.0.1.ocx"
Object = "{79EB16A5-917F-4145-AB5F-D3AEA60612D8}#15.0#0"; "Codejock.Calendar.v15.0.1.ocx"
Begin VB.Form frmDatePick 
   Caption         =   "Select Date Range"
   ClientHeight    =   6135
   ClientLeft      =   5445
   ClientTop       =   4410
   ClientWidth     =   11685
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   6135
   ScaleWidth      =   11685
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdOk 
      Caption         =   "Select"
      Height          =   495
      Left            =   9600
      TabIndex        =   40
      Top             =   5520
      Width           =   1935
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Cancel"
      Height          =   495
      Left            =   9600
      TabIndex        =   39
      Top             =   4920
      Width           =   1935
   End
   Begin VB.Timer popupTimer2 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   14520
      Top             =   4080
   End
   Begin VB.TextBox wndLabel_PopUp 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   14880
      Locked          =   -1  'True
      MousePointer    =   1  'Arrow
      TabIndex        =   29
      ToolTipText     =   " Click here !"
      Top             =   5040
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Test History"
      Height          =   255
      Left            =   15840
      TabIndex        =   28
      ToolTipText     =   "GetRange"
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Set History"
      Height          =   255
      Left            =   14280
      TabIndex        =   27
      ToolTipText     =   "SetRange"
      Top             =   3120
      Width           =   1335
   End
   Begin VB.CheckBox chkThemeOffice2007 
      Caption         =   "Enable Office 2007 Theme "
      Height          =   255
      Left            =   17280
      TabIndex        =   26
      Top             =   2040
      Width           =   2295
   End
   Begin VB.Timer popupTimer 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   13800
      Top             =   4080
   End
   Begin VB.CheckBox chkTooltips 
      Caption         =   "Show day tooltips"
      Height          =   255
      Left            =   14160
      TabIndex        =   25
      Top             =   2880
      Width           =   2415
   End
   Begin VB.PictureBox pictDay 
      Height          =   375
      Left            =   13800
      Picture         =   "frmDatePick.frx":0000
      ScaleHeight     =   315
      ScaleWidth      =   315
      TabIndex        =   24
      Top             =   3720
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.CheckBox chkCustomize 
      Caption         =   "Customize special days"
      Height          =   255
      Left            =   14160
      TabIndex        =   23
      Top             =   2640
      Width           =   2295
   End
   Begin VB.CheckBox chkRightToLeft 
      Caption         =   "&Right To Left"
      Height          =   255
      Left            =   17280
      TabIndex        =   17
      Top             =   1800
      Width           =   2175
   End
   Begin VB.Frame Frame1 
      Height          =   1215
      Left            =   120
      TabIndex        =   18
      Top             =   120
      Width           =   9375
      Begin VB.ComboBox cboCompareFrom 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         IntegralHeight  =   0   'False
         Left            =   4200
         TabIndex        =   36
         TabStop         =   0   'False
         Top             =   720
         Width           =   2295
      End
      Begin VB.ComboBox cboCompareTo 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         IntegralHeight  =   0   'False
         Left            =   6960
         TabIndex        =   35
         TabStop         =   0   'False
         Top             =   720
         Width           =   2295
      End
      Begin VB.ComboBox cboDateTo 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         IntegralHeight  =   0   'False
         Left            =   4200
         TabIndex        =   31
         TabStop         =   0   'False
         Top             =   240
         Width           =   2295
      End
      Begin VB.ComboBox cboDateFrom 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         IntegralHeight  =   0   'False
         Left            =   1440
         TabIndex        =   20
         TabStop         =   0   'False
         Top             =   240
         Width           =   2295
      End
      Begin XtremeCalendarControl.DatePicker wndDatePickerPopUp 
         Height          =   255
         Left            =   7560
         TabIndex        =   21
         Top             =   240
         Visible         =   0   'False
         Width           =   735
         _Version        =   983040
         _ExtentX        =   1296
         _ExtentY        =   450
         _StockProps     =   64
         ShowWeekNumbers =   -1  'True
         Show3DBorder    =   2
      End
      Begin XtremeSuiteControls.ComboBox cboComparePreset 
         Height          =   360
         Left            =   1440
         TabIndex        =   34
         Top             =   720
         Width           =   2655
         _Version        =   983040
         _ExtentX        =   4683
         _ExtentY        =   635
         _StockProps     =   77
         BackColor       =   -2147483643
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Text            =   "ComboBox1"
      End
      Begin VB.Label lblCompareFrom 
         Caption         =   "Compare With"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   38
         Top             =   720
         Width           =   1695
      End
      Begin VB.Label lblCompareTo 
         Caption         =   "To"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   6600
         TabIndex        =   37
         Top             =   720
         Width           =   375
      End
      Begin VB.Label Label2 
         Caption         =   "To"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3840
         TabIndex        =   32
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label1 
         Caption         =   "Date From"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   19
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.ComboBox cmbFirstWeekOfYear 
      Height          =   315
      Left            =   15240
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   720
      Width           =   1575
   End
   Begin VB.CheckBox chkAutoSize 
      Caption         =   "Auto Size"
      Height          =   255
      Left            =   13800
      TabIndex        =   6
      Top             =   1560
      Value           =   1  'Checked
      Width           =   1095
   End
   Begin VB.ComboBox cmbMaxSelectedDays 
      Height          =   315
      Left            =   15240
      TabIndex        =   5
      Text            =   "(no limit)"
      Top             =   1080
      Width           =   1575
   End
   Begin VB.ComboBox cmbFirstDayOfWeek 
      Height          =   315
      Left            =   15240
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   360
      Width           =   1575
   End
   Begin VB.CheckBox chkShowNoneButton 
      Caption         =   "Show &None button"
      Height          =   255
      Left            =   17280
      TabIndex        =   16
      Top             =   1560
      Value           =   1  'Checked
      Width           =   2175
   End
   Begin VB.CheckBox chkShowTodayButton 
      Caption         =   "Show Today button"
      Height          =   255
      Left            =   17280
      TabIndex        =   15
      Top             =   1320
      Value           =   1  'Checked
      Width           =   2175
   End
   Begin VB.CheckBox chkShow3DBorder 
      Caption         =   "Show 3D border"
      Height          =   255
      Left            =   17280
      TabIndex        =   14
      Top             =   1080
      Value           =   1  'Checked
      Width           =   2175
   End
   Begin VB.CheckBox chkShowNonmonthDays 
      Caption         =   "Show &non-month days"
      Height          =   255
      Left            =   17280
      TabIndex        =   13
      Top             =   840
      Value           =   1  'Checked
      Width           =   2175
   End
   Begin VB.CheckBox chkHighlighToday 
      Caption         =   "&Highligh today"
      Height          =   255
      Left            =   17280
      TabIndex        =   12
      Top             =   600
      Value           =   1  'Checked
      Width           =   2055
   End
   Begin VB.CheckBox chkShowWeekNumbers 
      Caption         =   "Show &week numbers"
      Height          =   195
      Left            =   17280
      TabIndex        =   11
      Top             =   360
      Width           =   2175
   End
   Begin VB.TextBox txtRows 
      BackColor       =   &H8000000F&
      Height          =   285
      Left            =   16200
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   1920
      Width           =   495
   End
   Begin VB.TextBox txtColumns 
      BackColor       =   &H8000000F&
      Height          =   285
      Left            =   14760
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   1920
      Width           =   495
   End
   Begin XtremeCalendarControl.DatePicker wndDatePicker 
      Height          =   4575
      Left            =   120
      TabIndex        =   22
      Top             =   1440
      Width           =   9375
      _Version        =   983040
      _ExtentX        =   16536
      _ExtentY        =   8070
      _StockProps     =   64
      Show3DBorder    =   2
      RowCount        =   2
      ColumnCount     =   4
   End
   Begin XtremeSuiteControls.ListBox lstPreset 
      Height          =   4575
      Left            =   9600
      TabIndex        =   33
      Top             =   240
      Width           =   1935
      _Version        =   983040
      _ExtentX        =   3413
      _ExtentY        =   8070
      _StockProps     =   77
      BackColor       =   -2147483643
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      RightToLeft     =   -1  'True
   End
   Begin VB.Label wndClickHereLabel 
      AutoSize        =   -1  'True
      Caption         =   "Click here:"
      ForeColor       =   &H00404040&
      Height          =   195
      Left            =   14040
      TabIndex        =   30
      Top             =   5040
      Width           =   750
   End
   Begin VB.Label lblFirstWeekOfYear 
      AutoSize        =   -1  'True
      Caption         =   "First week of year:"
      Height          =   195
      Left            =   13800
      TabIndex        =   2
      Top             =   765
      Width           =   1290
   End
   Begin VB.Label lblMaxSelectedDays 
      AutoSize        =   -1  'True
      Caption         =   "Max selected days:"
      Height          =   195
      Left            =   13800
      TabIndex        =   4
      Top             =   1125
      Width           =   1365
   End
   Begin VB.Label lblFirstDayOfWeek 
      AutoSize        =   -1  'True
      Caption         =   "First day of week:"
      Height          =   195
      Left            =   13800
      TabIndex        =   0
      Top             =   405
      Width           =   1245
   End
   Begin VB.Label lblRows 
      AutoSize        =   -1  'True
      Caption         =   "&Rows:"
      Height          =   195
      Left            =   15600
      TabIndex        =   9
      Top             =   1920
      Width           =   450
   End
   Begin VB.Label lblColumn 
      AutoSize        =   -1  'True
      Caption         =   "&Columns:"
      Height          =   195
      Left            =   14040
      TabIndex        =   7
      Top             =   1920
      Width           =   645
   End
End
Attribute VB_Name = "frmDatePick"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function PostMessage Lib "user32" Alias "PostMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Const CB_SHOWDROPDOWN = &H14F

Dim g_sDPpopUpCBValue As String
Dim g_sDPpopUpCBValue2 As String

Dim intRange As Integer

Public Sub SetCompareFlag(ByVal bolAvail As Boolean)
    If bolAvail Then
        lblCompareFrom.Visible = True
        cboCompareFrom.Visible = True
        cboCompareTo.Visible = True
        lblCompareTo.Visible = True
        cboComparePreset.Visible = True
    Else
        lblCompareFrom.Visible = True
        cboCompareFrom.Visible = True
        cboCompareTo.Visible = True
        lblCompareTo.Visible = True
        cboComparePreset.Visible = True
        cboComparePreset.ListIndex = 0
    End If
End Sub

Private Sub cboCompareFrom_DropDown()
    DropDown cboCompareFrom

End Sub

Private Sub cboCompareFrom_GotFocus()
    intRange = 1

End Sub

Private Sub cboComparePreset_Click()
    If cboDateFrom.Text = "" Then
        cboCompareFrom.Text = ""
        cboCompareTo.Text = ""
        cboComparePreset.ListIndex = 0
        Exit Sub
    End If
    
    Select Case cboComparePreset.ListIndex
    Case 0 'Today
        cboCompareFrom.Text = ""
        cboCompareTo.Text = ""
    Case 1 'Yesterday
        cboCompareFrom.Text = DateValue(cboDateFrom) - 1
        cboCompareTo.Text = cboCompareFrom.Text
    Case 2 'Last Week
        cboCompareFrom.Text = FirstDateInWeek(DateValue(cboDateFrom) - 7)
        cboCompareTo.Text = LastDateInWeek(DateValue(cboDateFrom) - 7)
    Case 3 'Last Month
        cboCompareFrom.Text = MonthFirstDay(MonthFirstDay(DateValue(cboDateFrom)) - 1)
        cboCompareTo.Text = MonthFirstDay(DateValue(cboDateFrom)) - 1
    Case 4 'Last Quarter
        cboCompareFrom.Text = FirstDayInQuarter(FirstDayInQuarter(DateValue(cboDateFrom)) - 1)
        cboCompareTo.Text = FirstDayInQuarter(DateValue(cboDateFrom)) - 1
    Case 5 'Last year
        cboCompareFrom.Text = DateSerial(Year(DateValue(cboDateFrom)) - 1, 1, 1)
        cboCompareTo.Text = DateSerial(Year(DateValue(cboDateFrom)) - 1, 12, 31)
    Case 6 'Same day Last Week
        cboCompareFrom.Text = DateValue(cboDateFrom) - 7
        cboCompareTo.Text = DateValue(cboDateTo) - 7
    Case 7 'Same Week Last Year
        cboCompareFrom.Text = DateSerial(Year(DateValue(cboDateFrom)) - 1, 1, 1)
        cboCompareTo.Text = DateSerial(Year(DateValue(cboDateFrom)) - 1, 12, 31)
    Case 8 'Same Month Last Year
        cboCompareFrom.Text = DateSerial(Year(DateValue(cboDateFrom)) - 1, Month(DateValue(cboDateFrom)), 1)
        cboCompareTo.Text = MonthLastDay(DateValue(cboCompareFrom.Text))
    End Select

End Sub

Private Sub cboCompareTo_DropDown()
    DropDown cboCompareTo
End Sub


Private Sub cboDateFrom_GotFocus()
    intRange = 0

End Sub

Private Sub cboDateTo_DropDown()
    DropDown cboDateTo
End Sub

Private Sub chkAutoSize_Click()
    wndDatePicker.AutoSize = chkAutoSize.Value
    
    txtColumns.Locked = IIf(chkAutoSize.Value = 1, True, False)
    txtRows.Locked = IIf(chkAutoSize.Value = 1, True, False)
    
    txtColumns.BackColor = IIf(txtColumns.Locked, &H8000000F, &H80000005)
    txtRows.BackColor = IIf(txtRows.Locked, &H8000000F, &H80000005)
End Sub

Sub UpdateColRowText()
    txtColumns.Text = wndDatePicker.ColumnCount
    txtRows.Text = wndDatePicker.RowCount
End Sub

Private Sub chkCustomize_Click()
    wndDatePicker.AskDayMetrics = chkCustomize.Value
    wndDatePickerPopUp.AskDayMetrics = chkCustomize.Value
    wndDatePicker.RedrawControl
End Sub

Private Sub chkHighlighToday_Click()
    wndDatePicker.HighlightToday = chkHighlighToday.Value
End Sub

Private Sub chkRightToLeft_Click()
    wndDatePicker.RightToLeft = chkRightToLeft.Value
End Sub

Private Sub chkShow3DBorder_Click()
    wndDatePicker.BorderStyle = IIf(chkShow3DBorder.Value, xtpDatePickerBorder3D, xtpDatePickerBorderNone)
End Sub

Private Sub chkShowNoneButton_Click()
    wndDatePicker.ShowNoneButton = chkShowNoneButton.Value
End Sub

Private Sub chkShowNonmonthDays_Click()
    wndDatePicker.ShowNonMonthDays = chkShowNonmonthDays.Value
End Sub

Private Sub chkShowTodayButton_Click()
    wndDatePicker.ShowTodayButton = chkShowTodayButton.Value
End Sub

Private Sub chkShowWeekNumbers_Click()
    wndDatePicker.ShowWeekNumbers = chkShowWeekNumbers.Value
End Sub

Private Sub chkThemeOffice2007_Click()
    If chkThemeOffice2007.Value = vbChecked Then
        wndDatePicker.SetTheme New DatePickerThemeOffice2007
        wndDatePickerPopUp.SetTheme New DatePickerThemeOffice2007
    Else
        wndDatePicker.SetTheme Nothing
        wndDatePickerPopUp.SetTheme Nothing
    End If
End Sub

Private Sub cmbFirstDayOfWeek_Click()
    wndDatePicker.FirstDayOfWeek = cmbFirstDayOfWeek.ListIndex + 1
End Sub

Private Sub cmbFirstWeekOfYear_Click()
    Select Case (cmbFirstWeekOfYear.ListIndex)
        Case 0:
            wndDatePicker.FirstWeekOfYearDays = 1
        Case 1:
            wndDatePicker.FirstWeekOfYearDays = 4
        Case 2:
            wndDatePicker.FirstWeekOfYearDays = 7
    End Select
End Sub

Private Sub cmbMaxSelectedDays_LostFocus()
    If cmbMaxSelectedDays.Text = "(no limit)" Then
        wndDatePicker.MaxSelectionCount = -1
    Else
        wndDatePicker.MaxSelectionCount = cmbMaxSelectedDays.Text
    End If
    
End Sub



Private Sub cboDateFrom_Validate(Cancel As Boolean)
    Debug.Print "cboDateFrom_Validate"

End Sub

Private Sub cmdCancel_Click()
    selectResult(0) = ""
    selectResult(1) = ""
    selectResult(2) = ""
    selectResult(3) = ""
    Unload Me
End Sub

Private Sub cmdOk_Click()
    selectResult(0) = cboDateFrom.Text
    selectResult(1) = cboDateTo.Text
    selectResult(2) = cboCompareFrom.Text
    selectResult(3) = cboCompareTo.Text
    Unload Me
End Sub

Private Sub Command1_Click()
    wndDatePicker.SetRange #4/1/101#, #6/1/101#
    wndDatePicker.EnsureVisible #4/1/101#
End Sub

Private Sub Command2_Click()
'    wndDatePicker.Select #4/1/101#
'    wndDatePicker.EnsureVisible #4/1/101#

'    wndDatePicker.SelectRange #4/1/101#, #6/1/101#
'    wndDatePicker.EnsureVisible #4/1/101#

Dim d1, d2 As Date
d1 = wndDatePicker.Selection.Blocks(0).DateBegin
d2 = wndDatePicker.Selection.Blocks(0).dateEnd
MsgBox "Selection:" & d1 & " -- " & d2
    
End Sub

Private Sub Form_Load()
    ' Update default text
    UpdateColRowText
    
    ' Initialize weekdays combobox
    cmbFirstDayOfWeek.AddItem "1 - Sunday"
    cmbFirstDayOfWeek.AddItem "2 - Monday"
    cmbFirstDayOfWeek.AddItem "3 - Tuesday"
    cmbFirstDayOfWeek.AddItem "4 - Wednesday"
    cmbFirstDayOfWeek.AddItem "5 - Thursday"
    cmbFirstDayOfWeek.AddItem "6 - Friday"
    cmbFirstDayOfWeek.AddItem "7 - Saturday"
    cmbFirstDayOfWeek.ListIndex = wndDatePicker.FirstDayOfWeek - 1
    
    ' Initialize First Week of the Year combobox
    cmbFirstWeekOfYear.AddItem "Starts on Jan 1"
    cmbFirstWeekOfYear.AddItem "First 4-day week"
    cmbFirstWeekOfYear.AddItem "First full week"
    cmbFirstWeekOfYear.ListIndex = 0
    
    ' Initialize Maximum Selected Days combobox
    cmbMaxSelectedDays.AddItem "(no limit)"
    cmbMaxSelectedDays.AddItem "5"
    cmbMaxSelectedDays.AddItem "10"
    cmbMaxSelectedDays.AddItem "20"
    cmbMaxSelectedDays.AddItem "50"
    cmbMaxSelectedDays.AddItem "100"
    
    ' Select default range (today)
    'wndDatePicker.SetRange #4/1/1601#, #6/1/1701#
    
    wndDatePicker.Select Now
    'wndDatePicker.EnsureVisible #4/1/1601#
    
    'wndDatePicker.SetRange Now, Now
    
    lstPreset.Clear
    lstPreset.AddItem "Today"
    lstPreset.AddItem "Yesterday"
    lstPreset.AddItem "Week-to-date"
    lstPreset.AddItem "Last Week"
    lstPreset.AddItem "Last 7 days"
    lstPreset.AddItem "Month-to-date"
    lstPreset.AddItem "Last Month"
    lstPreset.AddItem "Last 30 days"
    lstPreset.AddItem "Quarter-to-date"
    lstPreset.AddItem "Last Quarter"
    lstPreset.AddItem "This year"
    lstPreset.AddItem "last year"
    
    cboComparePreset.Clear
    cboComparePreset.AddItem "None"
    cboComparePreset.AddItem "Yeserday"
    cboComparePreset.AddItem "Last Week"
    cboComparePreset.AddItem "Last Month"
    cboComparePreset.AddItem "Last Quarter"
    cboComparePreset.AddItem "Last Year"
    cboComparePreset.AddItem "Same day Last Week"
    cboComparePreset.AddItem "Same Week Last Year"
    cboComparePreset.AddItem "Same Month Last Year"
    cboComparePreset.ListIndex = 0
    
    wndDatePicker.SetRange DateSerial(Year(Date), Month(Date) - 8, 1), MonthLastDay(Date)
    
    
End Sub


Private Sub Form_Resize()
    'On Error Resume Next
    'Dim nWidth As Long, nHeight As Long
    'nWidth = Me.ScaleWidth - 200
    'nHeight = Me.ScaleHeight - wndDatePicker.top - 100
    'If nWidth > 0 And nHeight > 0 Then
    '    wndDatePicker.Move 100, wndDatePicker.top, nWidth, nHeight
    'End If
    'UpdateColRowText
End Sub

Private Sub lstPreset_Click()
    Select Case lstPreset.ListIndex
    Case 0 'Today
        cboDateFrom.Text = Date
        cboDateTo.Text = Date
    Case 1 'Yesterday
        cboDateFrom.Text = Date - 1
        cboDateTo.Text = Date - 1
    Case 2 'Week to date
        cboDateFrom.Text = FirstDateInWeek(Date)
        cboDateTo.Text = Date
    Case 3 'Last Week
        cboDateFrom.Text = FirstDateInWeek(Date - 7)
        cboDateTo.Text = LastDateInWeek(Date - 7)
    Case 4 'Last 7 days
        cboDateFrom.Text = Date - 7
        cboDateTo.Text = Date
    Case 5 'Month to date
        cboDateFrom.Text = MonthFirstDay(Date)
        cboDateTo.Text = Date
    Case 6 'Last Month
        cboDateFrom.Text = MonthFirstDay(MonthFirstDay(Date) - 1)
        cboDateTo.Text = MonthFirstDay(Date) - 1
    Case 7 'Last 30 days
        cboDateFrom.Text = Date - 30
        cboDateTo.Text = Date
    Case 8 'Quarter to date
        cboDateFrom.Text = FirstDayInQuarter(Date)
        cboDateTo.Text = Date
    Case 9 'Last Quarter
        cboDateFrom.Text = FirstDayInQuarter(FirstDayInQuarter(Date) - 1)
        cboDateTo.Text = FirstDayInQuarter(Date) - 1
    Case 10 'This year
        cboDateFrom.Text = DateSerial(Year(Date), 1, 1)
        cboDateTo.Text = DateSerial(Year(Date), 12, 31)
    Case 11 'Last year
        cboDateFrom.Text = DateSerial(Year(Date) - 1, 1, 1)
        cboDateTo.Text = DateSerial(Year(Date) - 1, 12, 31)
    End Select
End Sub

Private Sub popupTimer_Timer()
    popupTimer.Enabled = False
    
    cboDateFrom.Text = g_sDPpopUpCBValue
    g_sDPpopUpCBValue = "?-?-?"
    
End Sub

Private Sub popupTimer2_Timer()
    popupTimer2.Enabled = False
    
    cboDateTo.Text = g_sDPpopUpCBValue2
    g_sDPpopUpCBValue2 = "?-?-?"
    

End Sub

Private Sub txtColumns_LostFocus()
    If (Not txtColumns.Locked) Then wndDatePicker.ColumnCount = txtColumns.Text
End Sub

Private Sub txtRows_LostFocus()
    If (Not txtRows.Locked) Then wndDatePicker.RowCount = txtRows.Text
End Sub

Private Sub wndDatePicker_DayMetrics(ByVal Day As Date, ByVal Metrics As XtremeCalendarControl.IDatePickerDayMetrics)
      
    If Weekday(Day) = vbSunday Then
        Metrics.ForeColor = vbRed
    End If
        
    If Weekday(Day) = vbSaturday Then
        Metrics.Font.Bold = True
    End If
        
    If Date - Day < 4 And Date - Day > 0 Then
        Metrics.BackColor = vbGreen
    End If

    If Day - Date = 6 Then
        Set Metrics.Picture = pictDay
    End If

End Sub

Private Sub wndDatePicker_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    Dim CurDate As Date
    
    If chkTooltips.Value = vbChecked Then
        CurDate = wndDatePicker.HitTest
        If CurDate <> 0 Then
            wndDatePicker.ToolTipText = "You can select [" + CStr(CurDate) + "]"
        Else
            wndDatePicker.ToolTipText = ""
        End If
    Else
        wndDatePicker.ToolTipText = ""
    End If
End Sub

Private Sub wndDatePickerPopUp_DayMetrics(ByVal Day As Date, ByVal Metrics As XtremeCalendarControl.IDatePickerDayMetrics)
    wndDatePicker_DayMetrics Day, Metrics
End Sub

Private Sub wndDatePicker_SelectionChanged()
    Dim DateMin As Date, DateMax As Date
    
    If (wndDatePicker.Selection.BlocksCount = 1) Then
        DateMin = wndDatePicker.Selection(0).DateBegin
        DateMax = wndDatePicker.Selection(0).dateEnd
        If (DateMin = DateMax) Then
            Debug.Print "SelectionChanged. Date = "; DateMin
        Else
            Debug.Print "SelectionChanged. Min Date = " & DateMin & ", Max Date = " & DateMax
        End If
    ElseIf (wndDatePicker.Selection.BlocksCount > 1) Then
        DateMin = wndDatePicker.Selection(0).DateBegin
        DateMax = wndDatePicker.Selection(wndDatePicker.Selection.BlocksCount - 1).dateEnd
        
        Debug.Print "SelectionChanged. Total Selected Blocks = " & wndDatePicker.Selection.BlocksCount& _
            ; ", Min Date = " & DateMin & ", Max Date = " & DateMax
    Else
        Debug.Print "SelectionChanged. No Selection"
    End If
    
    If DateMin > 0 Then
        If intRange = 0 Then
            cboDateFrom.Text = DateMin
            cboDateTo.Text = DateMax
        Else
            cboCompareFrom.Text = DateMin
            cboCompareTo.Text = DateMax
        End If
    End If
End Sub

Private Sub cboDateFrom_DropDown()
    DropDown cboDateFrom
End Sub

Private Sub wndDatePickerPopUp_SelectionChanged()
'    Label1.Caption = "*"
End Sub

Private Sub wndDatePickerPopUp2_DayMetrics(ByVal Day As Date, ByVal Metrics As XtremeCalendarControl.IDatePickerDayMetrics)
    wndDatePicker_DayMetrics Day, Metrics

End Sub

Private Sub wndLabel_PopUp_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    Dim pDatePicker
    Set pDatePicker = CreateObject("Codejock.DatePicker." + XtremeCalendarControl.Version)
    
    If Not pDatePicker Is Nothing Then
    
        Dim pixX As Long, pixY As Long, pixWidth As Long, pixHeight As Long
        
        pixX = x / Screen.TwipsPerPixelX
        pixY = y / Screen.TwipsPerPixelY
                
        pDatePicker.GetMinReqRect pixWidth, pixHeight, 2, 2
        
        If pDatePicker.ShowModalEx(pixX, pixY, pixWidth, pixHeight, wndLabel_PopUp.hwnd) Then
        
            Dim strDate0 As String, strDate1 As String
            Dim nCount As Long
            
            nCount = pDatePicker.Selection.BlocksCount
            If nCount > 0 Then
                cboDateFrom.Refresh
                cboDateFrom.Text = pDatePicker.Selection.Blocks(0).DateBegin
                                        
                strDate0 = pDatePicker.Selection.Blocks(0).DateBegin
                strDate1 = pDatePicker.Selection.Blocks(nCount - 1).dateEnd
                
                wndLabel_PopUp.Text = strDate0 & " - " & strDate1
            End If
        
        End If
    End If

End Sub

Private Sub DropDown(ByRef cboBox As ComboBox)
                    
    'get the current value of the combo box
    g_sDPpopUpCBValue = cboBox.Text

    If IsDate(cboBox.Text) Then
        wndDatePickerPopUp.EnsureVisible cboBox.Text
    End If
    
    wndDatePickerPopUp.left = cboBox.left
    wndDatePickerPopUp.top = cboBox.top + cboBox.Height + 20
    
    If wndDatePickerPopUp.ShowModal(1, 1) Then
    
        Dim strDate0 As String, strDate1 As String
        Dim nCount As Long
            
        nCount = wndDatePickerPopUp.Selection.BlocksCount
        If nCount > 0 Then
            cboBox.Refresh
            cboBox.Text = wndDatePickerPopUp.Selection.Blocks(0).DateBegin
                                    
            strDate0 = wndDatePickerPopUp.Selection.Blocks(0).DateBegin
            strDate1 = wndDatePickerPopUp.Selection.Blocks(nCount - 1).dateEnd
            
            wndLabel_PopUp.Text = strDate0 & " - " & strDate1
        Else
            wndLabel_PopUp.Text = "-none-"
            bRestore = True
        End If
    End If
    PostMessage cboBox.hwnd, CB_SHOWDROPDOWN, 0, 0
    cboBox.Refresh
  
End Sub

