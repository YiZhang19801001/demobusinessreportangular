VERSION 5.00
Object = "{C0A63B80-4B21-11D3-BD95-D426EF2C7949}#1.0#0"; "vsflex7l.ocx"
Object = "{48932A52-981F-101B-A7FB-4A79242FD97B}#3.1#0"; "TAB32X30.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "mscomctl.ocx"
Object = "{ACD4732E-2B7C-40C1-A56B-078848D41977}#1.0#0"; "Image.ocx"
Object = "{C215CB9A-0AE1-499F-A101-48B3C370D3DF}#15.0#0"; "Codejock.ChartPro.v15.0.1.ocx"
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#15.0#0"; "Codejock.SkinFramework.v15.0.1.ocx"
Object = "{B8E5842E-102B-4289-9D57-3B3F5B5E15D3}#15.0#0"; "Codejock.TaskPanel.v15.0.1.ocx"
Object = "{A8E5842E-102B-4289-9D57-3B3F5B5E15D3}#15.0#0"; "Codejock.Controls.v15.0.1.ocx"
Begin VB.Form frmSaleChart 
   Caption         =   "Sales Chart"
   ClientHeight    =   12285
   ClientLeft      =   2775
   ClientTop       =   3765
   ClientWidth     =   16080
   ForeColor       =   &H00404040&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   12285
   ScaleWidth      =   16080
   StartUpPosition =   1  'CenterOwner
   Begin XtremeTaskPanel.TaskPanel wndTaskPanel 
      Height          =   12285
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   2535
      _Version        =   983040
      _ExtentX        =   4471
      _ExtentY        =   21669
      _StockProps     =   64
      Behaviour       =   1
      ItemLayout      =   2
      HotTrackStyle   =   1
      Begin MSComctlLib.ImageList imlTaskPanelIcons 
         Left            =   0
         Top             =   0
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   16
         ImageHeight     =   16
         MaskColor       =   65280
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   16
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":0000
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":0275
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":050E
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":0691
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":0829
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":09D1
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":0B73
               Key             =   ""
            EndProperty
            BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":0CFE
               Key             =   ""
            EndProperty
            BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":0E89
               Key             =   ""
            EndProperty
            BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":0F8D
               Key             =   ""
            EndProperty
            BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":121C
               Key             =   ""
            EndProperty
            BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":1328
               Key             =   ""
            EndProperty
            BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":15A4
               Key             =   ""
            EndProperty
            BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":166A
               Key             =   ""
            EndProperty
            BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":180A
               Key             =   ""
            EndProperty
            BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmSaleChart.frx":19A6
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
   Begin TabproLib.vaTabPro tabDashboard 
      Height          =   8655
      Left            =   2640
      TabIndex        =   65
      Top             =   3480
      Width           =   13335
      _Version        =   196609
      _ExtentX        =   23521
      _ExtentY        =   15266
      _StockProps     =   100
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabsPerRow      =   2
      TabCount        =   2
      AlignTextH      =   1
      AlignTextV      =   1
      ThreeD          =   0   'False
      TabShape        =   3
      ApplyTo         =   2
      GrayAreaColor   =   16777215
      OffsetFromClientTop=   -1  'True
      BookColor       =   16777215
      DataFormat      =   ""
      BookCornerGuardWidth=   105
      BookCornerGuardLength=   405
      ThreeDAppearance=   0
      DataField       =   ""
      TabCaption      =   "frmSaleChart.frx":1A51
      PageEarMarkPictureNext=   "frmSaleChart.frx":1C71
      PageEarMarkPicturePrev=   "frmSaleChart.frx":1C8D
      EarMarkPictureNext=   "frmSaleChart.frx":1CA9
      EarMarkPicturePrev=   "frmSaleChart.frx":1CC5
      Begin VB.PictureBox picChartSelect 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   615
         Left            =   15
         ScaleHeight     =   615
         ScaleWidth      =   13335
         TabIndex        =   69
         Top             =   8040
         Width           =   13335
         Begin VB.CheckBox chkCompare 
            Appearance      =   0  'Flat
            Caption         =   "Compare"
            ForeColor       =   &H80000008&
            Height          =   255
            Left            =   11640
            TabIndex        =   77
            Top             =   200
            Width           =   1575
         End
         Begin VB.CheckBox chkShowValue 
            Appearance      =   0  'Flat
            Caption         =   "Show Values"
            ForeColor       =   &H80000008&
            Height          =   255
            Left            =   9840
            TabIndex        =   76
            Top             =   200
            Width           =   1455
         End
         Begin VB.OptionButton optType 
            Appearance      =   0  'Flat
            Caption         =   "GP%"
            ForeColor       =   &H80000008&
            Height          =   255
            Index           =   3
            Left            =   5280
            TabIndex        =   75
            Top             =   200
            Width           =   1215
         End
         Begin VB.OptionButton optType 
            Appearance      =   0  'Flat
            Caption         =   "GP"
            ForeColor       =   &H80000008&
            Height          =   255
            Index           =   2
            Left            =   3600
            TabIndex        =   74
            Top             =   200
            Width           =   1215
         End
         Begin VB.OptionButton optType 
            Appearance      =   0  'Flat
            Caption         =   "Sales"
            ForeColor       =   &H80000008&
            Height          =   255
            Index           =   1
            Left            =   1680
            TabIndex        =   73
            Top             =   200
            Width           =   1215
         End
         Begin VB.OptionButton optType 
            Appearance      =   0  'Flat
            Caption         =   "Count"
            ForeColor       =   &H80000008&
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   72
            Top             =   200
            Width           =   1215
         End
         Begin VB.OptionButton optType 
            Appearance      =   0  'Flat
            Caption         =   "Cups"
            ForeColor       =   &H80000008&
            Height          =   255
            Index           =   5
            Left            =   6960
            TabIndex        =   71
            Top             =   200
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.OptionButton optType 
            Appearance      =   0  'Flat
            Caption         =   "Free Cups"
            ForeColor       =   &H80000008&
            Height          =   255
            Index           =   6
            Left            =   8280
            TabIndex        =   70
            Top             =   200
            Visible         =   0   'False
            Width           =   1215
         End
      End
      Begin VSFlex7LCtl.VSFlexGrid grdSales 
         Height          =   8055
         Left            =   -28349
         TabIndex        =   66
         Top             =   -23414
         Width           =   13335
         _cx             =   23521
         _cy             =   14208
         _ConvInfo       =   1
         Appearance      =   0
         BorderStyle     =   1
         Enabled         =   0   'False
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MousePointer    =   0
         BackColor       =   -2147483643
         ForeColor       =   -2147483640
         BackColorFixed  =   -2147483633
         ForeColorFixed  =   -2147483630
         BackColorSel    =   -2147483635
         ForeColorSel    =   -2147483634
         BackColorBkg    =   -2147483636
         BackColorAlternate=   16777215
         GridColor       =   -2147483633
         GridColorFixed  =   -2147483632
         TreeColor       =   -2147483632
         FloodColor      =   192
         SheetBorder     =   -2147483642
         FocusRect       =   1
         HighLight       =   1
         AllowSelection  =   -1  'True
         AllowBigSelection=   -1  'True
         AllowUserResizing=   0
         SelectionMode   =   0
         GridLines       =   1
         GridLinesFixed  =   2
         GridLineWidth   =   1
         Rows            =   50
         Cols            =   10
         FixedRows       =   1
         FixedCols       =   0
         RowHeightMin    =   0
         RowHeightMax    =   0
         ColWidthMin     =   0
         ColWidthMax     =   0
         ExtendLastCol   =   0   'False
         FormatString    =   ""
         ScrollTrack     =   0   'False
         ScrollBars      =   3
         ScrollTips      =   0   'False
         MergeCells      =   0
         MergeCompare    =   0
         AutoResize      =   -1  'True
         AutoSizeMode    =   0
         AutoSearch      =   0
         AutoSearchDelay =   2
         MultiTotals     =   -1  'True
         SubtotalPosition=   1
         OutlineBar      =   0
         OutlineCol      =   0
         Ellipsis        =   0
         ExplorerBar     =   0
         PicturesOver    =   0   'False
         FillStyle       =   0
         RightToLeft     =   0   'False
         PictureType     =   0
         TabBehavior     =   0
         OwnerDraw       =   0
         Editable        =   0
         ShowComboButton =   1
         WordWrap        =   0   'False
         TextStyle       =   0
         TextStyleFixed  =   0
         OleDragMode     =   0
         OleDropMode     =   0
         ComboSearch     =   3
         AutoSizeMouse   =   -1  'True
         FrozenRows      =   0
         FrozenCols      =   0
         AllowUserFreezing=   0
         BackColorFrozen =   0
         ForeColorFrozen =   0
         WallPaperAlignment=   9
      End
      Begin VSFlex7LCtl.VSFlexGrid grdTotal 
         Height          =   255
         Left            =   -28349
         TabIndex        =   67
         Top             =   -23654
         Width           =   13335
         _cx             =   23521
         _cy             =   450
         _ConvInfo       =   1
         Appearance      =   0
         BorderStyle     =   1
         Enabled         =   0   'False
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MousePointer    =   0
         BackColor       =   -2147483643
         ForeColor       =   -2147483640
         BackColorFixed  =   -2147483633
         ForeColorFixed  =   -2147483630
         BackColorSel    =   -2147483635
         ForeColorSel    =   -2147483634
         BackColorBkg    =   -2147483636
         BackColorAlternate=   -2147483643
         GridColor       =   -2147483633
         GridColorFixed  =   -2147483632
         TreeColor       =   -2147483632
         FloodColor      =   192
         SheetBorder     =   -2147483642
         FocusRect       =   1
         HighLight       =   1
         AllowSelection  =   -1  'True
         AllowBigSelection=   -1  'True
         AllowUserResizing=   0
         SelectionMode   =   0
         GridLines       =   1
         GridLinesFixed  =   2
         GridLineWidth   =   1
         Rows            =   1
         Cols            =   10
         FixedRows       =   0
         FixedCols       =   0
         RowHeightMin    =   0
         RowHeightMax    =   0
         ColWidthMin     =   0
         ColWidthMax     =   0
         ExtendLastCol   =   0   'False
         FormatString    =   ""
         ScrollTrack     =   0   'False
         ScrollBars      =   3
         ScrollTips      =   0   'False
         MergeCells      =   0
         MergeCompare    =   0
         AutoResize      =   -1  'True
         AutoSizeMode    =   0
         AutoSearch      =   0
         AutoSearchDelay =   2
         MultiTotals     =   -1  'True
         SubtotalPosition=   1
         OutlineBar      =   0
         OutlineCol      =   0
         Ellipsis        =   0
         ExplorerBar     =   0
         PicturesOver    =   0   'False
         FillStyle       =   0
         RightToLeft     =   0   'False
         PictureType     =   0
         TabBehavior     =   0
         OwnerDraw       =   0
         Editable        =   0
         ShowComboButton =   1
         WordWrap        =   0   'False
         TextStyle       =   0
         TextStyleFixed  =   0
         OleDragMode     =   0
         OleDropMode     =   0
         ComboSearch     =   3
         AutoSizeMouse   =   -1  'True
         FrozenRows      =   0
         FrozenCols      =   0
         AllowUserFreezing=   0
         BackColorFrozen =   0
         ForeColorFrozen =   0
         WallPaperAlignment=   9
      End
      Begin XtremeChartControl.ChartControl ChartDashboard 
         Height          =   7755
         Left            =   15
         TabIndex        =   68
         Top             =   330
         Width           =   13335
         _Version        =   983040
         _ExtentX        =   23521
         _ExtentY        =   13679
         _StockProps     =   0
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1215
      Left            =   2760
      ScaleHeight     =   1185
      ScaleWidth      =   13305
      TabIndex        =   62
      Top             =   12840
      Width           =   13335
      Begin VB.TextBox txtCatNum 
         Height          =   285
         Left            =   0
         TabIndex        =   64
         Text            =   "10"
         Top             =   0
         Width           =   495
      End
      Begin VB.CommandButton cmdCategory 
         Caption         =   "By Category"
         Height          =   375
         Left            =   960
         TabIndex        =   63
         Top             =   0
         Width           =   1215
      End
   End
   Begin VB.PictureBox picSelect1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1215
      Left            =   2760
      ScaleHeight     =   1185
      ScaleWidth      =   13305
      TabIndex        =   55
      Top             =   12360
      Width           =   13335
      Begin VB.CommandButton cmdShow 
         Caption         =   "By Staff"
         Height          =   375
         Left            =   0
         TabIndex        =   61
         Top             =   0
         Width           =   855
      End
      Begin VB.CommandButton cmdByDay 
         Caption         =   "By Day"
         Height          =   375
         Left            =   2160
         TabIndex        =   60
         Top             =   0
         Width           =   975
      End
      Begin VB.CommandButton cmdByHour 
         Caption         =   "By Hour"
         Height          =   375
         Left            =   1080
         TabIndex        =   59
         Top             =   0
         Width           =   975
      End
      Begin VB.CommandButton cmdByQuarter 
         Caption         =   "By Quarter"
         Height          =   375
         Left            =   2280
         TabIndex        =   58
         Top             =   720
         Width           =   975
      End
      Begin VB.CommandButton cmdByWeek 
         Caption         =   "By Week"
         Height          =   375
         Left            =   0
         TabIndex        =   57
         Top             =   720
         Width           =   975
      End
      Begin VB.CommandButton cmdByMonth 
         Caption         =   "By Month"
         Height          =   375
         Left            =   1200
         TabIndex        =   56
         Top             =   720
         Width           =   855
      End
   End
   Begin VB.PictureBox picDashboard 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2655
      Left            =   2640
      ScaleHeight     =   2655
      ScaleWidth      =   13500
      TabIndex        =   14
      Top             =   840
      Width           =   13500
      Begin VB.PictureBox picDiscount 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1215
         Left            =   10080
         ScaleHeight     =   1215
         ScaleWidth      =   3255
         TabIndex        =   50
         Top             =   1320
         Width           =   3255
         Begin VB.Label lblGST 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "$254.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   375
            Left            =   120
            TabIndex        =   54
            Top             =   360
            Width           =   3015
         End
         Begin VB.Label Label12 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "GST"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   240
            TabIndex        =   53
            Top             =   120
            Width           =   2775
         End
         Begin VB.Label lblGSTInd 
            BackColor       =   &H00FFFFFF&
            Caption         =   "10.00%"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   2040
            TabIndex        =   52
            Top             =   840
            Visible         =   0   'False
            Width           =   735
         End
         Begin ImageX.aicAlphaImage imgGSTInd 
            Height          =   195
            Left            =   1800
            Top             =   840
            Visible         =   0   'False
            Width           =   195
            _ExtentX        =   344
            _ExtentY        =   344
            Image           =   "frmSaleChart.frx":1CE1
         End
         Begin VB.Label lblGSTCompare 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Caption         =   "$54.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   120
            TabIndex        =   51
            Top             =   840
            Visible         =   0   'False
            Width           =   1335
         End
      End
      Begin VB.PictureBox picGP 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1215
         Left            =   3360
         ScaleHeight     =   1215
         ScaleWidth      =   3255
         TabIndex        =   45
         Top             =   0
         Width           =   3255
         Begin VB.Label lblGPCompare 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Caption         =   "$54.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   120
            TabIndex        =   49
            Top             =   840
            Visible         =   0   'False
            Width           =   1455
         End
         Begin VB.Label lblGPInd 
            BackColor       =   &H00FFFFFF&
            Caption         =   "10.00%"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   2160
            TabIndex        =   48
            Top             =   840
            Visible         =   0   'False
            Width           =   735
         End
         Begin ImageX.aicAlphaImage imgGPInd 
            Height          =   195
            Left            =   1920
            Top             =   840
            Visible         =   0   'False
            Width           =   195
            _ExtentX        =   344
            _ExtentY        =   344
            Image           =   "frmSaleChart.frx":1CF9
         End
         Begin VB.Label Label14 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "GP"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   240
            TabIndex        =   47
            Top             =   120
            Width           =   2775
         End
         Begin VB.Label lblGP 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "$2,254.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   375
            Left            =   120
            TabIndex        =   46
            Top             =   360
            Width           =   3015
         End
      End
      Begin VB.PictureBox picTotalSale 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1215
         Left            =   0
         ScaleHeight     =   1215
         ScaleWidth      =   3255
         TabIndex        =   40
         Top             =   0
         Width           =   3255
         Begin VB.Label lblTotalSale 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "$2,254.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   375
            Left            =   120
            TabIndex        =   44
            Top             =   360
            Width           =   3015
         End
         Begin VB.Label Label8 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "Total Sales"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   240
            TabIndex        =   43
            Top             =   120
            Width           =   2775
         End
         Begin ImageX.aicAlphaImage imgTotalSaleInd 
            Height          =   195
            Left            =   1920
            Top             =   840
            Visible         =   0   'False
            Width           =   195
            _ExtentX        =   344
            _ExtentY        =   344
            Image           =   "frmSaleChart.frx":1D11
         End
         Begin VB.Label lblTotalSaleInd 
            BackColor       =   &H00FFFFFF&
            Caption         =   "10.00%"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   2160
            TabIndex        =   42
            Top             =   840
            Visible         =   0   'False
            Width           =   735
         End
         Begin VB.Label lblTotalSaleCompare 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Caption         =   "$54.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   120
            TabIndex        =   41
            Top             =   840
            Visible         =   0   'False
            Width           =   1455
         End
      End
      Begin VB.PictureBox picGST 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1215
         Left            =   6720
         ScaleHeight     =   1215
         ScaleWidth      =   3255
         TabIndex        =   35
         Top             =   0
         Width           =   3255
         Begin VB.Label lblRefund 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "$54.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   375
            Left            =   120
            TabIndex        =   39
            Top             =   360
            Width           =   2895
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "Refunds"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   240
            TabIndex        =   38
            Top             =   120
            Width           =   2775
         End
         Begin VB.Label lblRefundInd 
            BackColor       =   &H00FFFFFF&
            Caption         =   "10.00%"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   2040
            TabIndex        =   37
            Top             =   840
            Visible         =   0   'False
            Width           =   735
         End
         Begin ImageX.aicAlphaImage imgRefundInd 
            Height          =   195
            Left            =   1800
            Top             =   840
            Visible         =   0   'False
            Width           =   195
            _ExtentX        =   344
            _ExtentY        =   344
            Image           =   "frmSaleChart.frx":1D29
         End
         Begin VB.Label lblRefundCompare 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Caption         =   "$54.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   120
            TabIndex        =   36
            Top             =   840
            Visible         =   0   'False
            Width           =   1335
         End
      End
      Begin VB.PictureBox picRefund 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1215
         Left            =   10080
         ScaleHeight     =   1215
         ScaleWidth      =   3255
         TabIndex        =   30
         Top             =   0
         Width           =   3255
         Begin VB.Label lblDiscount 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "$2.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   375
            Left            =   120
            TabIndex        =   34
            Top             =   360
            Width           =   3135
         End
         Begin VB.Label Label11 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "Discounts"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   240
            TabIndex        =   33
            Top             =   120
            Width           =   2775
         End
         Begin VB.Label lblDiscountInd 
            BackColor       =   &H00FFFFFF&
            Caption         =   "10.00%"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   2040
            TabIndex        =   32
            Top             =   840
            Visible         =   0   'False
            Width           =   735
         End
         Begin ImageX.aicAlphaImage imgDiscountInd 
            Height          =   195
            Left            =   1800
            Top             =   840
            Visible         =   0   'False
            Width           =   195
            _ExtentX        =   344
            _ExtentY        =   344
            Image           =   "frmSaleChart.frx":1D41
         End
         Begin VB.Label lblDiscountCompare 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Caption         =   "$54.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   120
            TabIndex        =   31
            Top             =   840
            Visible         =   0   'False
            Width           =   1335
         End
      End
      Begin VB.PictureBox picDockets 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1215
         Left            =   0
         ScaleHeight     =   1215
         ScaleWidth      =   3255
         TabIndex        =   25
         Top             =   1320
         Width           =   3255
         Begin VB.Label lblDockets 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "587"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   375
            Left            =   120
            TabIndex        =   29
            Top             =   360
            Width           =   3015
         End
         Begin VB.Label Label5 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "# of Transactions"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   120
            TabIndex        =   28
            Top             =   120
            Width           =   3015
         End
         Begin VB.Label lblDocketsInd 
            BackColor       =   &H00FFFFFF&
            Caption         =   "10.00%"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   2160
            TabIndex        =   27
            Top             =   840
            Visible         =   0   'False
            Width           =   735
         End
         Begin ImageX.aicAlphaImage imgDocketsInd 
            Height          =   195
            Left            =   1920
            Top             =   840
            Visible         =   0   'False
            Width           =   195
            _ExtentX        =   344
            _ExtentY        =   344
            Image           =   "frmSaleChart.frx":1D59
         End
         Begin VB.Label lblDocketsCompare 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Caption         =   "$54.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   120
            TabIndex        =   26
            Top             =   840
            Visible         =   0   'False
            Width           =   1335
         End
      End
      Begin VB.PictureBox picAvgSale 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1215
         Left            =   3360
         ScaleHeight     =   1215
         ScaleWidth      =   3255
         TabIndex        =   20
         Top             =   1320
         Width           =   3255
         Begin VB.Label lblAvgSale 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "$15.97"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   375
            Left            =   120
            TabIndex        =   24
            Top             =   360
            Width           =   3015
         End
         Begin VB.Label Label2 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "Average Sale Value"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   240
            TabIndex        =   23
            Top             =   120
            Width           =   2895
         End
         Begin VB.Label lblAvgSaleInd 
            BackColor       =   &H00FFFFFF&
            Caption         =   "10.00%"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   2160
            TabIndex        =   22
            Top             =   840
            Visible         =   0   'False
            Width           =   735
         End
         Begin ImageX.aicAlphaImage imgAvgSaleInd 
            Height          =   195
            Left            =   1920
            Top             =   840
            Visible         =   0   'False
            Width           =   195
            _ExtentX        =   344
            _ExtentY        =   344
            Image           =   "frmSaleChart.frx":1D71
         End
         Begin VB.Label lblAvgSaleCompare 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Caption         =   "$54.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   120
            TabIndex        =   21
            Top             =   840
            Visible         =   0   'False
            Width           =   1335
         End
      End
      Begin VB.PictureBox picAvgItems 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1215
         Left            =   6720
         ScaleHeight     =   1215
         ScaleWidth      =   3255
         TabIndex        =   15
         Top             =   1320
         Width           =   3255
         Begin VB.Label lblAvgItems 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "2.5"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   375
            Left            =   120
            TabIndex        =   19
            Top             =   360
            Width           =   3015
         End
         Begin VB.Label Label3 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            Caption         =   "Average Items Per Sale"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   120
            TabIndex        =   18
            Top             =   120
            Width           =   3015
         End
         Begin VB.Label lblAvgItemsInd 
            BackColor       =   &H00FFFFFF&
            Caption         =   "10.00%"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   2040
            TabIndex        =   17
            Top             =   840
            Visible         =   0   'False
            Width           =   735
         End
         Begin ImageX.aicAlphaImage imgAvgItemsInd 
            Height          =   195
            Left            =   1800
            Top             =   840
            Visible         =   0   'False
            Width           =   195
            _ExtentX        =   344
            _ExtentY        =   344
            Image           =   "frmSaleChart.frx":1D89
         End
         Begin VB.Label lblAvgItemsCompare 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Caption         =   "$54.00"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404040&
            Height          =   255
            Left            =   120
            TabIndex        =   16
            Top             =   840
            Visible         =   0   'False
            Width           =   1335
         End
      End
   End
   Begin VB.PictureBox picHeading 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   2520
      ScaleHeight     =   735
      ScaleWidth      =   13605
      TabIndex        =   1
      Top             =   0
      Width           =   13600
      Begin VB.CommandButton cmdDate 
         Caption         =   "Sekect Dates"
         Height          =   375
         Left            =   11880
         TabIndex        =   6
         Top             =   240
         Width           =   1575
      End
      Begin VB.ComboBox cboShop_id 
         Height          =   315
         Left            =   6720
         Style           =   2  'Dropdown List
         TabIndex        =   5
         Top             =   240
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.CommandButton cmdClose 
         Caption         =   "Close"
         Height          =   375
         Left            =   12000
         TabIndex        =   4
         Top             =   0
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.CommandButton cmdPrint 
         Caption         =   "Export"
         Height          =   375
         Index           =   1
         Left            =   10800
         TabIndex        =   3
         Top             =   0
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.CommandButton cmdPrint 
         Caption         =   "Print"
         Height          =   375
         Index           =   0
         Left            =   9720
         TabIndex        =   2
         Top             =   0
         Visible         =   0   'False
         Width           =   975
      End
      Begin XtremeSuiteControls.ComboBox cboShop 
         Height          =   345
         Left            =   5520
         TabIndex        =   7
         Top             =   240
         Width           =   2415
         _Version        =   983040
         _ExtentX        =   4260
         _ExtentY        =   609
         _StockProps     =   77
         BackColor       =   -2147483643
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Text            =   "ComboBox1"
      End
      Begin XtremeSuiteControls.DateTimePicker dateFrom 
         Height          =   375
         Left            =   8640
         TabIndex        =   8
         Top             =   240
         Width           =   1335
         _Version        =   983040
         _ExtentX        =   2355
         _ExtentY        =   661
         _StockProps     =   68
         Format          =   1
      End
      Begin XtremeSuiteControls.DateTimePicker dateTo 
         Height          =   375
         Left            =   10440
         TabIndex        =   9
         Top             =   240
         Width           =   1335
         _Version        =   983040
         _ExtentX        =   2355
         _ExtentY        =   661
         _StockProps     =   68
         Format          =   1
      End
      Begin XtremeSuiteControls.Label Label7 
         Height          =   255
         Left            =   10080
         TabIndex        =   13
         Top             =   240
         Width           =   255
         _Version        =   983040
         _ExtentX        =   450
         _ExtentY        =   450
         _StockProps     =   79
         Caption         =   "To"
         BackColor       =   16777215
      End
      Begin XtremeSuiteControls.Label Label6 
         Height          =   255
         Left            =   8160
         TabIndex        =   12
         Top             =   240
         Width           =   615
         _Version        =   983040
         _ExtentX        =   1085
         _ExtentY        =   450
         _StockProps     =   79
         Caption         =   "From"
         BackColor       =   16777215
      End
      Begin VB.Label Label4 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Shop:"
         Height          =   375
         Left            =   4920
         TabIndex        =   11
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label lblReportName 
         BackStyle       =   0  'Transparent
         Caption         =   "Analytics Dashboard"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   495
         Left            =   1200
         TabIndex        =   10
         Top             =   120
         Width           =   3495
      End
      Begin ImageX.aicAlphaImage imgLogo 
         Height          =   735
         Left            =   45
         Top             =   0
         Width           =   855
         _ExtentX        =   1508
         _ExtentY        =   1296
         Image           =   "frmSaleChart.frx":1DA1
      End
   End
   Begin XtremeSkinFramework.SkinFramework SkinFramework 
      Left            =   15000
      Top             =   1440
      _Version        =   983040
      _ExtentX        =   635
      _ExtentY        =   635
      _StockProps     =   0
   End
End
Attribute VB_Name = "frmSaleChart"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim Staff As New clsStaff
Dim bolDocketLoaded As Boolean
Dim Diagram As ChartDiagram2D
Dim strIP As ChartAxisStrip
Dim bolCat As Boolean
Dim dbHist As New clsDB
Dim dbPOS As New clsDB
Dim Resize As New clsResize

Dim dateCompareFrom As Date
Dim dateCompareTo As Date
Dim bolWorking As Boolean
Dim strPeriodSelected As String
Dim strPeriodCompare As String
Dim bolCompareSelected As Boolean
Dim intCurrentReport As Integer

Const ID_THEME_OFFICE2000 = 140
Const ID_THEME_OFFICE2003 = 141
Const ID_THEME_NATIVE = 142
Const ID_THEME_OFFICE2000_PLAIN = 143
Const ID_THEME_OFFICEXP_PLAIN = 144
Const ID_THEME_OFFICE2003_PLAIN = 145
Const ID_THEME_NATIVE_PLAIN = 146

Const ID_REPORT_ANALYTICS_DASHBOARD = 1
Const ID_REPORT_CURRENT_SALES = 2
Const ID_REPORT_SALE_SUMMARY = 3
Const ID_REPORT_SALES_BY_SHOP = 4
Const ID_REPORT_SALES_BY_LOCATION = 5
Const ID_REPORT_SALES_BY_STAFF = 6
Const ID_REPORT_SALES_BY_CUSTOMER = 7
Const ID_REPORT_SALES_BY_SUPPLIER = 8
Const ID_REPORT_SALES_BY_TEDER = 9
Const ID_REPORT_SALES_BY_TAX = 10
Const ID_REPORT_DISCOUNTS = 11
Const ID_REPORT_REFUNDS = 12

Const ID_REPORT_DOCKET_LIST = 13
Const ID_REPORT_CASHUP_SESSIONS = 14
Const ID_REPORT_CASHUP_DAILY = 15
Const ID_REPORT_CASH_IN_OUT = 16

Const ID_REPORT_SALES_BY_CATEGORY = 17
Const ID_REPORT_SALES_BY_ITEM = 18
Const ID_REPORT_MODIFIERS_OPTIONS = 19
Const ID_REPORT_WHAT_IS_SELLING = 20
Const ID_REPORT_ITEM_PROFITS = 21

Const ID_REPORT_MARKETING_DASHBOARD = 22
Const ID_REPORT_CUSTOMER_GROWTH = 23
Const ID_REPORT_MEMBERSHIP = 24
Const ID_REPORT_GIFT_CARD = 25
Const ID_REPORT_PREPAID_CARD = 26
Const ID_REPORT_EMAIL_MARKETING = 27


Const FCONTROL = 8

Private Sub cboShop_Click()
    
    cboShop_id.ListIndex = cboShop.ListIndex
    
    If Not bolWorking Then
        If intCurrentReport = ID_REPORT_ANALYTICS_DASHBOARD Then
            ShowDashBoard
        ElseIf intCurrentReport = ID_REPORT_CURRENT_SALES Then
            ShowDashBoardShop
            DashBoardVisible True
        End If
    End If
End Sub

Private Sub chkCompare_Click()
    If bolWorking Then Exit Sub
    
    bolCompareSelected = False
    If chkCompare.Value = vbChecked Then
        If dateCompareFrom <> 0 Then
            bolCompareSelected = True
        End If
    End If
    ShowDashBoard
End Sub

Private Sub chkShowValue_Click()
On Error Resume Next:
    
    Dim x As ChartSeries
    For Each x In ChartDashboard.Content.Series
        x.Style.Label.Visible = chkShowValue.Value
    Next

End Sub



Private Sub cmdByHour_Click()
    Screen.MousePointer = vbHourglass
    
    ShowSalesByHour
    UpdateTotal
    
    Screen.MousePointer = vbDefault

End Sub

Private Sub cmdByMonth_Click()
    Screen.MousePointer = vbHourglass
    
    Caption = "Sales Chart By Month"
    ShowSalesByMonth
    UpdateTotal
    
    Screen.MousePointer = vbDefault

End Sub

Private Sub cmdByQuarter_Click()
    Screen.MousePointer = vbHourglass
    
    Caption = "Sales Chart By Quarter"
    ShowSalesByQuarter
    UpdateTotal
    
    Screen.MousePointer = vbDefault

End Sub

Private Sub cmdByWeek_Click()
    Screen.MousePointer = vbHourglass
    
    Caption = "Sales Chart By Week"
    ShowSalesByWeek
    UpdateTotal
    
    Screen.MousePointer = vbDefault

End Sub

Private Sub cmdCategory_Click()
    bolCat = True
    
    Screen.MousePointer = vbHourglass
    
    Caption = "Sales Chart By Staff"
    ShowSalesByCat
    UpdateTotal
    
    Screen.MousePointer = vbDefault
End Sub

Private Sub cmdClose_Click()
    Unload Me
End Sub



Private Sub cmdDate_Click()
    frmDatePick.Show vbModal
    
    If selectResult(0) <> "" Then
        bolWorking = True
        
        dateFrom.Value = DateValue(selectResult(0))
        dateTo.Value = DateValue(selectResult(1))
        If selectResult(2) = "" Then
            dateCompareFrom = 0
            dateCompareFrom = 0
        Else
            dateCompareFrom = DateValue(selectResult(2))
            dateCompareFrom = DateValue(selectResult(3))
        End If
        
        bolWorking = False
        DoEvents
        
        ShowDashBoard
    End If
End Sub

Private Sub cmdPrint_Click(Index As Integer)
    Dim rpt As New rptTemplate
    
    If dateFrom.Value > dateTo.Value Then
        MsgBox "Invalid Date Range."
        Exit Sub
    End If
    
    'rpt.SetSection "ReportHeader", Me, frameSales, False, False, 3
    
    rpt.SetMsHFlexGrid grdSales, True, True
    rpt.lblPrintDate = Format(Now, "Short Date")
    rpt.SetReportTitle "Sales By Time"
    
    If Index = 0 Then
        rpt.Show vbModal
    Else
        ExportReport rpt
    End If
    
    Set rpt = Nothing

End Sub

Private Sub ShowSalesByDay()

   'Staff Summary
    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim strSql As String
    
    ResetGrid
    optType(2).Value = True
    grdSales.TextMatrix(0, 0) = "Day"
    If currDBType = DB_TYPE_ACCESS Then
        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalQty, " & _
                "DateValue(docket_date) AS DayNo " & _
                "FROM Docket WHERE " & GetSelectionString() & " GROUP BY DateValue(docket_date)"
    Else
'        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
'                "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalQty, " & _
'                "CONVERT(CHAR(10),docket_date,3) AS DayNo " & _
'                "FROM Docket WHERE " & GetSelectionString() & " GROUP BY CONVERT(CHAR(10),docket_date,3) ORDER BY DayNo"
        
        If gbolUseHistSummary Then
            strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalQty, " & _
                "docket_date AS DocketDate " & _
                "FROM HistDocket WHERE hist_type = 1 AND " & GetSelectionString() & " GROUP BY docket_date ORDER BY docket_date"
        Else
            strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalQty, " & _
                "DATEADD(dd, 0, DATEDIFF(dd, 0, docket_date)) AS DocketDate " & _
                "FROM Docket WHERE " & GetSelectionString() & " GROUP BY DATEADD(dd, 0, DATEDIFF(dd, 0, docket_date)) ORDER BY DocketDate"
        End If
    End If
    Debug.Print strSql
    Set rsSale = dbHist.GetRecordSet(strSql)
    
    If rsSale.EOF Then Exit Sub
   
    i = 0
    While Not rsSale.EOF
        i = i + 1
        If grdSales.Rows > i - 1 Then grdSales.Rows = grdSales.Rows + 1
        
        grdSales.TextMatrix(i, 0) = rsSale("DocketDate")
        grdSales.TextMatrix(i, 1) = nClng(rsSale("TotalQty"))
        grdSales.TextMatrix(i, 2) = Format$(rsSale("TotalSellInc"), "Currency")
        grdSales.TextMatrix(i, 3) = Format$(rsSale("TotalSellEx") - rsSale("TotalCostEx"), "Currency")
        grdSales.TextMatrix(i, 5) = nCstr(rsSale("TotalSellEx"))
        
        If rsSale("TotalSellEx") = 0 Then
            grdSales.TextMatrix(i, 4) = Format$(0, "#0.00%")
        Else
            grdSales.TextMatrix(i, 4) = Format$(nCcur(grdSales.TextMatrix(i, 3)) / rsSale("TotalSellEx"), "#0.00%")
        End If
        
        rsSale.MoveNext
        DoEvents
    Wend
    
    rsSale.Close
    
    ShowChart 2
End Sub

Private Sub ShowSalesByWeek()

   'Weekly Summary
    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim strSql As String
    Dim dateStart As Date
    Dim dateEnd As Date
    
    ResetGrid
    optType(2).Value = True
    grdSales.TextMatrix(0, 0) = "Week End"
        
    dateStart = dateFrom.Value
    If dateStart <> FirstDateInWeek(dateStart) Then
        dateStart = LastDateInWeek(dateStart) + 1
    End If
    dateEnd = dateTo.Value
    If dateEnd <> LastDateInWeek(dateEnd) Then
        dateEnd = FirstDateInWeek(dateEnd) - 1
    End If
    dateFrom.Value = dateStart
    dateTo.Value = dateEnd
    
    If gbolUseHistSummary Then
        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
            "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalQty, " & _
            "docket_date AS DateWeek " & _
            "FROM HistDocket WHERE hist_type = 2 AND " & GetSelectionString() & " GROUP BY docket_date ORDER BY docket_date"
    Else
        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
            "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalQty, " & _
            "YEAR(docket_date) AS DateYear, DATEPART(wk, docket_date) AS DateWeek " & _
            "FROM Docket WHERE " & GetSelectionString() & " GROUP BY YEAR(docket_date), DATEPART(wk, docket_date) ORDER BY DateYear, DateWeek"
    End If
    Debug.Print strSql
    Set rsSale = dbHist.GetRecordSet(strSql)
    
    If rsSale.EOF Then Exit Sub
   
    i = 0
    While Not rsSale.EOF
        i = i + 1
        If grdSales.Rows > i - 1 Then grdSales.Rows = grdSales.Rows + 1
        
        If gbolUseHistSummary Then
            grdSales.TextMatrix(i, 0) = rsSale("DateWeek")
        Else
            grdSales.TextMatrix(i, 0) = LastDateWeekNo(rsSale("DateYear"), rsSale("DateWeek"))
        End If
        grdSales.TextMatrix(i, 1) = nClng(rsSale("TotalQty"))
        grdSales.TextMatrix(i, 2) = Format$(rsSale("TotalSellInc"), "Currency")
        grdSales.TextMatrix(i, 3) = Format$(rsSale("TotalSellEx") - rsSale("TotalCostEx"), "Currency")
        grdSales.TextMatrix(i, 5) = nCstr(rsSale("TotalSellEx"))
        
        If rsSale("TotalSellEx") = 0 Then
            grdSales.TextMatrix(i, 4) = Format$(0, "#0.00%")
        Else
            grdSales.TextMatrix(i, 4) = Format$(nCcur(grdSales.TextMatrix(i, 3)) / rsSale("TotalSellEx"), "#0.00%")
        End If
        
        rsSale.MoveNext
        DoEvents
    Wend
    
    rsSale.Close
    
    ShowChart 2
End Sub

Private Sub ShowSalesByQuarter()

   'Weekly Summary
    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim strSql As String
    Dim dateStart As Date
    Dim dateEnd As Date
    
    ResetGrid
    optType(2).Value = True
    grdSales.TextMatrix(0, 0) = "Quarter"
        
    dateStart = dateFrom.Value
    If dateStart <> FirstDayInQuarter(dateStart) Then
        dateStart = LastDayInQuarter(dateStart) + 1
    End If
    dateEnd = dateTo.Value
    If dateEnd <> LastDayInQuarter(dateEnd) Then
        dateEnd = FirstDayInQuarter(dateEnd) - 1
    End If
    dateFrom.Value = DateValue("01/01/2017") 'dateStart
    dateTo.Value = dateEnd
    
    If gbolUseHistSummary Then
        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
            "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalQty, " & _
            "YEAR(docket_date) AS DateYear, DATEPART(QUARTER,docket_date) AS DateQuarter " & _
            "FROM HistDocket WHERE hist_type = 4 AND " & GetSelectionString() & " GROUP BY YEAR(docket_date), DATEPART(QUARTER,docket_date) ORDER BY DateYear, DateQuarter"
    Else
        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
            "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalQty, " & _
            "YEAR(docket_date) AS DateYear, DATEPART(QUARTER,docket_date) AS DateQuarter " & _
            "FROM Docket WHERE " & GetSelectionString() & " GROUP BY YEAR(docket_date), DATEPART(QUARTER,docket_date) ORDER BY DateYear, DateQuarter"
    End If
    Debug.Print strSql
    Set rsSale = dbHist.GetRecordSet(strSql)
    
    If rsSale.EOF Then Exit Sub
   
    i = 0
    While Not rsSale.EOF
        i = i + 1
        If grdSales.Rows > i - 1 Then grdSales.Rows = grdSales.Rows + 1
        
        grdSales.TextMatrix(i, 0) = rsSale("DateYear") & "-" & rsSale("DateQuarter")
        grdSales.TextMatrix(i, 1) = nClng(rsSale("TotalQty"))
        grdSales.TextMatrix(i, 2) = Format$(rsSale("TotalSellInc"), "Currency")
        grdSales.TextMatrix(i, 3) = Format$(rsSale("TotalSellEx") - rsSale("TotalCostEx"), "Currency")
        grdSales.TextMatrix(i, 5) = nCstr(rsSale("TotalSellEx"))
        
        If rsSale("TotalSellEx") = 0 Then
            grdSales.TextMatrix(i, 4) = Format$(0, "#0.00%")
        Else
            grdSales.TextMatrix(i, 4) = Format$(nCcur(grdSales.TextMatrix(i, 3)) / rsSale("TotalSellEx"), "#0.00%")
        End If
        
        rsSale.MoveNext
        DoEvents
    Wend
    
    rsSale.Close
    
    ShowChart 2
End Sub

Private Sub ShowSalesByMonth()

   'Staff Summary
    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim strSql As String
    
    ResetGrid
    optType(2).Value = True
    grdSales.TextMatrix(0, 0) = "Month"
    If currDBType = DB_TYPE_ACCESS Then
        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalQty, " & _
                "DatePart('yyyy',docket_date) AS YearNo, DatePart('m',docket_date) AS MonthNo AS MonthNo " & _
                "FROM Docket WHERE " & GetSelectionString() & " GROUP BY DatePart('yyyy',docket_date), DatePart('m',docket_date) ORDER BY YearNo, MonthNo"
    Else
'        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
'                "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalQty, " & _
'                "DatePart(mm,docket_date) AS MonthNo " & _
'                "FROM Docket WHERE " & GetSelectionString() & " GROUP BY DatePart(mm,docket_date) ORDER BY MonthNo"
        If gbolUseHistSummary Then
            strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalQty, " & _
                "CONVERT(VARCHAR(7), docket_date, 126) AS MonthNo " & _
                "FROM HistDocket WHERE hist_type = 3 AND " & GetSelectionString() & " GROUP BY CONVERT(VARCHAR(7), docket_date, 126) ORDER BY MonthNo"
        Else
            strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalQty, " & _
                "CONVERT(VARCHAR(7), docket_date, 126) AS MonthNo " & _
                "FROM Docket WHERE " & GetSelectionString() & " GROUP BY CONVERT(VARCHAR(7), docket_date, 126) ORDER BY MonthNo"
        End If
    End If
    Debug.Print strSql
    Set rsSale = dbHist.GetRecordSet(strSql)
    
    If rsSale.EOF Then Exit Sub
   
    i = 0
    While Not rsSale.EOF
        i = i + 1
        If grdSales.Rows > i - 1 Then grdSales.Rows = grdSales.Rows + 1
        
        grdSales.TextMatrix(i, 0) = rsSale("MonthNo")
        grdSales.TextMatrix(i, 1) = nClng(rsSale("TotalQty"))
        grdSales.TextMatrix(i, 2) = Format$(rsSale("TotalSellInc"), "Currency")
        grdSales.TextMatrix(i, 3) = Format$(rsSale("TotalSellEx") - rsSale("TotalCostEx"), "Currency")
        grdSales.TextMatrix(i, 5) = nCstr(rsSale("TotalSellEx"))
        
        If rsSale("TotalSellEx") = 0 Then
            grdSales.TextMatrix(i, 4) = Format$(0, "#0.00%")
        Else
            grdSales.TextMatrix(i, 4) = Format$(nCcur(grdSales.TextMatrix(i, 3)) / rsSale("TotalSellEx"), "#0.00%")
        End If
        
        rsSale.MoveNext
        DoEvents
    Wend
    
    rsSale.Close
    
    ShowChart 2
End Sub

Private Sub ShowSalesByHour()

   'Staff Summary
    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim rsSaleCompare As ADODB.Recordset
    Dim strSql As String
    
    ResetGrid
    optType(1).Value = True
    grdSales.TextMatrix(0, 0) = "Hour"
    If bolCompareSelected Then
        grdSales.BackColorAlternate = &HE0E0E0
    Else
        grdSales.BackColorAlternate = vbWhite
    End If
    
    If gbolUseHistSummary Then
        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalCount, " & _
                "DatePart(hh,docket_date) AS HourNo " & _
                "FROM HistDocket WHERE hist_type = 0 AND " & GetSelectionString() & " GROUP BY DatePart(hh,docket_date) ORDER BY HourNo"
    Else
        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalCount, " & _
                "DatePart(hh,docket_date) AS HourNo " & _
                "FROM Docket WHERE " & GetSelectionString() & " GROUP BY DatePart(hh,docket_date) ORDER BY HourNo"
    End If
    
    Set rsSale = dbHist.GetRecordSet(strSql)
    If rsSale.EOF Then Exit Sub
   
    If bolCompareSelected Then
        If gbolUseHistSummary Then
            strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                    "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalCount, " & _
                    "DatePart(hh,docket_date) AS HourNo " & _
                    "FROM HistDocket WHERE hist_type = 0 AND " & GetSelectionString(True) & " GROUP BY DatePart(hh,docket_date) ORDER BY HourNo"
        Else
            strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                    "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalCount, " & _
                    "DatePart(hh,docket_date) AS HourNo " & _
                    "FROM Docket WHERE " & GetSelectionString(True) & " GROUP BY DatePart(hh,docket_date) ORDER BY HourNo"
        End If
        Set rsSaleCompare = dbHist.GetRecordSet(strSql)
    End If
   
    i = 0
    While Not rsSale.EOF
        i = i + 1
        If grdSales.Rows > i - 1 Then grdSales.Rows = grdSales.Rows + 1
        
        grdSales.TextMatrix(i, 0) = rsSale("HourNo")
        grdSales.TextMatrix(i, 1) = nClng(rsSale("TotalCount"))
        grdSales.TextMatrix(i, 2) = Format$(rsSale("TotalSellInc"), "Currency")
        grdSales.TextMatrix(i, 3) = Format$(rsSale("TotalSellEx") - rsSale("TotalCostEx"), "Currency")
        grdSales.TextMatrix(i, 5) = nCstr(rsSale("TotalSellEx"))
        
        If rsSale("TotalSellEx") = 0 Then
            grdSales.TextMatrix(i, 4) = Format$(0, "#0.00%")
        Else
            grdSales.TextMatrix(i, 4) = Format$(nCcur(grdSales.TextMatrix(i, 3)) / rsSale("TotalSellEx"), "#0.00%")
        End If
        
        If bolCompareSelected Then
            i = i + 1
            If grdSales.Rows > i - 1 Then grdSales.Rows = grdSales.Rows + 1
            If rsSaleCompare.RecordCount > 0 Then rsSaleCompare.MoveFirst
            rsSaleCompare.Find "HourNo = " & rsSale("HourNo")
            If Not rsSaleCompare.EOF Then
                grdSales.TextMatrix(i, 0) = rsSaleCompare("HourNo")
                grdSales.TextMatrix(i, 1) = nClng(rsSaleCompare("TotalCount"))
                grdSales.TextMatrix(i, 2) = Format$(rsSaleCompare("TotalSellInc"), "Currency")
                grdSales.TextMatrix(i, 3) = Format$(rsSaleCompare("TotalSellEx") - rsSaleCompare("TotalCostEx"), "Currency")
                grdSales.TextMatrix(i, 5) = nCstr(rsSaleCompare("TotalSellEx"))
                
                If rsSaleCompare("TotalSellEx") = 0 Then
                    grdSales.TextMatrix(i, 4) = Format$(0, "#0.00%")
                Else
                    grdSales.TextMatrix(i, 4) = Format$(nCcur(grdSales.TextMatrix(i, 3)) / rsSaleCompare("TotalSellEx"), "#0.00%")
                End If
            Else
                grdSales.TextMatrix(i, 0) = grdSales.TextMatrix(i - 1, 0)
                grdSales.TextMatrix(i, 1) = 0
                grdSales.TextMatrix(i, 2) = 0
                grdSales.TextMatrix(i, 3) = 0
                grdSales.TextMatrix(i, 5) = 0
                grdSales.TextMatrix(i, 4) = 0
            End If
        End If
        
        rsSale.MoveNext
    Wend
    
    rsSale.Close
    
    UpdateTotal
    
    ShowChart 1, "Sales By Hour", "Hour"
End Sub

Private Sub ShowSalesByHourShop()

   'Staff Summary
    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim rsSaleCompare As ADODB.Recordset
    Dim strSql As String
    
    ResetGrid
    optType(1).Value = True
    grdSales.TextMatrix(0, 0) = "Hour"
    grdSales.BackColorAlternate = vbWhite
    
    strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalCount, " & _
                "DatePart(hh,docket_date) AS HourNo " & _
                "FROM Docket WHERE " & GetSelectionString(, True) & " GROUP BY DatePart(hh,docket_date) ORDER BY HourNo"
    
    Set rsSale = dbPOS.GetRecordSet(strSql)
    If rsSale.EOF Then Exit Sub
   
    i = 0
    While Not rsSale.EOF
        i = i + 1
        If grdSales.Rows > i - 1 Then grdSales.Rows = grdSales.Rows + 1
        
        grdSales.TextMatrix(i, 0) = rsSale("HourNo")
        grdSales.TextMatrix(i, 1) = nClng(rsSale("TotalCount"))
        grdSales.TextMatrix(i, 2) = Format$(rsSale("TotalSellInc"), "Currency")
        grdSales.TextMatrix(i, 3) = Format$(rsSale("TotalSellEx") - rsSale("TotalCostEx"), "Currency")
        grdSales.TextMatrix(i, 5) = nCstr(rsSale("TotalSellEx"))
        
        If rsSale("TotalSellEx") = 0 Then
            grdSales.TextMatrix(i, 4) = Format$(0, "#0.00%")
        Else
            grdSales.TextMatrix(i, 4) = Format$(nCcur(grdSales.TextMatrix(i, 3)) / rsSale("TotalSellEx"), "#0.00%")
        End If
        
        rsSale.MoveNext
    Wend
    
    rsSale.Close
    
    UpdateTotal
    
    ShowChart 1, "Sales By Hour", "Hour"
End Sub

Private Sub ShowSalesByShop()

   'Staff Summary
    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim rsSaleCompare As ADODB.Recordset
    Dim strSql As String
    
    ResetGrid
    optType(1).Value = True
    grdSales.TextMatrix(0, 0) = "Shop"
    If bolCompareSelected Then
        grdSales.BackColorAlternate = &HE0E0E0
    Else
        grdSales.BackColorAlternate = vbWhite
    End If
    
    bolCompareSelected = False
    tabDashboard.top = picTotalSale.top
    tabDashboard.Height = Me.Height - picTotalSale.top - 550
    ChartDashboard.Height = tabDashboard.Height - ChartDashboard.top - 500
    picChartSelect.top = tabDashboard.Height - picChartSelect.Height - 50
    grdTotal.top = tabDashboard.Height - grdTotal.Height - 10
    grdSales.Height = grdTotal.top - grdSales.top
    
    DoEvents
    
    If gbolUseHistSummary Then
        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalQty, " & _
                "shop_name " & _
                "FROM HistDocket INNER JOIN Shop ON HistDocket.shop_id = Shop.shop_id " & _
                "WHERE hist_type = 1 AND " & GetSelectionString() & " GROUP BY shop_name ORDER BY shop_name"
    Else
        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalQty, " & _
                "shop_name " & _
                "FROM Docket INNER JOIN Shop ON HistDocket.shop_id = Shop.shop_id " & _
                "WHERE hist_type = 1 AND " & GetSelectionString() & " GROUP BY shop_name ORDER BY shop_name"
    End If
    
    Set rsSale = dbHist.GetRecordSet(strSql)
    If rsSale.EOF Then Exit Sub
   
    If bolCompareSelected Then
        If gbolUseHistSummary Then
            strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalQty, " & _
                "shop_name " & _
                "FROM HistDocket INNER JOIN Shop ON HistDocket.shop_id = Shop.shop_id " & _
                "WHERE hist_type = 1 AND " & GetSelectionString(True) & " GROUP BY shop_name ORDER BY shop_name"
        Else
            strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
                "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalQty, " & _
                "shop_name " & _
                "FROM Docket INNER JOIN Shop ON HistDocket.shop_id = Shop.shop_id " & _
                "WHERE hist_type = 1 AND " & GetSelectionString(True) & " GROUP BY shop_name ORDER BY shop_name"
        End If
        Set rsSaleCompare = dbHist.GetRecordSet(strSql)
    End If
   
    i = 0
    While Not rsSale.EOF
        i = i + 1
        If grdSales.Rows > i - 1 Then grdSales.Rows = grdSales.Rows + 1
        
        grdSales.TextMatrix(i, 0) = rsSale("shop_name")
        grdSales.TextMatrix(i, 1) = nClng(rsSale("TotalQty"))
        grdSales.TextMatrix(i, 2) = Format$(rsSale("TotalSellInc"), "Currency")
        grdSales.TextMatrix(i, 3) = Format$(rsSale("TotalSellEx") - rsSale("TotalCostEx"), "Currency")
        grdSales.TextMatrix(i, 5) = nCstr(rsSale("TotalSellEx"))
        
        If rsSale("TotalSellEx") = 0 Then
            grdSales.TextMatrix(i, 4) = Format$(0, "#0.00%")
        Else
            grdSales.TextMatrix(i, 4) = Format$(nCcur(grdSales.TextMatrix(i, 3)) / rsSale("TotalSellEx"), "#0.00%")
        End If
        
        If bolCompareSelected Then
            i = i + 1
            If grdSales.Rows > i - 1 Then grdSales.Rows = grdSales.Rows + 1
            If rsSaleCompare.RecordCount > 0 Then rsSaleCompare.MoveFirst
            rsSaleCompare.Find "shop_name = '" & rsSale("shop_name") & "'"
            If Not rsSaleCompare.EOF Then
                grdSales.TextMatrix(i, 0) = rsSaleCompare("shop_name")
                grdSales.TextMatrix(i, 1) = nClng(rsSaleCompare("TotalQty"))
                grdSales.TextMatrix(i, 2) = Format$(rsSaleCompare("TotalSellInc"), "Currency")
                grdSales.TextMatrix(i, 3) = Format$(rsSaleCompare("TotalSellEx") - rsSaleCompare("TotalCostEx"), "Currency")
                grdSales.TextMatrix(i, 5) = nCstr(rsSaleCompare("TotalSellEx"))
                
                If rsSaleCompare("TotalSellEx") = 0 Then
                    grdSales.TextMatrix(i, 4) = Format$(0, "#0.00%")
                Else
                    grdSales.TextMatrix(i, 4) = Format$(nCcur(grdSales.TextMatrix(i, 3)) / rsSaleCompare("TotalSellEx"), "#0.00%")
                End If
            Else
                grdSales.TextMatrix(i, 0) = grdSales.TextMatrix(i - 1, 0)
                grdSales.TextMatrix(i, 1) = 0
                grdSales.TextMatrix(i, 2) = 0
                grdSales.TextMatrix(i, 3) = 0
                grdSales.TextMatrix(i, 5) = 0
                grdSales.TextMatrix(i, 4) = 0
            End If
        End If
        
        rsSale.MoveNext
    Wend
    
    rsSale.Close
    
    UpdateTotal
    
    ShowChart 1, "Sales By Shop", "Shop"
    
    On Error Resume Next:
    
    Dim x As ChartSeries
    For Each x In ChartDashboard.Content.Series
        x.Diagram.Rotated = True
    Next
    
End Sub

Private Sub ShowChart(ByVal intType As Integer, Optional strTitle As String = "", Optional strXName As String = "")

    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim strSql As String
    Dim intRows As Integer
    Dim arrData()
    Dim strIP As String
    
    
    If ChartDashboard.Content.Series.Count > 0 Then
        ChartDashboard.Content.Series.DeleteAll
    End If
    
    ChartDashboard.Content.Titles(0).Text = strTitle
    ChartDashboard.Content.Legend.Visible = True
    ChartDashboard.Content.Legend.HorizontalAlignment = xtpChartLegendFar
    
    Dim Series As ChartSeries
    
    If Not bolCompareSelected Then
        Set Series = ChartDashboard.Content.Series.Add(strPeriodSelected)
        With grdSales
        
            intRows = 0
            For i = 1 To .Rows - 1
                If .TextMatrix(i, 0) <> "" Then intRows = intRows + 1
            Next i
               
            If intRows = 0 Then Exit Sub
            
            For i = 1 To intRows
                Series.Points.Add .TextMatrix(i, 0), nCcur(.TextMatrix(i, intType + 1))
            Next i
        End With
        
        
        Set ChartDashboard.Content.Series(0).Style = New ChartBarSeriesStyle
        Set Diagram = ChartDashboard.Content.Series(0).Diagram
        Diagram.AxisX.Label.Angle = 360
        Diagram.AxisY.Title.Visible = True
        Diagram.AxisY.Title.Text = optType(intType).Caption
        Diagram.AxisX.Title.Visible = True
        Diagram.AxisX.Title.Text = strXName
    
    Else
        Set Series = ChartDashboard.Content.Series.Add(strPeriodCompare)
        With grdSales
        
            intRows = 0
            For i = 1 To .Rows - 1
                If .TextMatrix(i, 0) <> "" Then intRows = intRows + 1
            Next i
               
            If intRows = 0 Then Exit Sub
            
            For i = 2 To intRows Step 2
                Series.Points.Add .TextMatrix(i, 0), nCcur(.TextMatrix(i, intType + 1))
            Next i
        End With
    
        Set Series = ChartDashboard.Content.Series.Add(strPeriodSelected)
        With grdSales
        
            intRows = 0
            For i = 1 To .Rows - 1
                If .TextMatrix(i, 0) <> "" Then intRows = intRows + 1
            Next i
               
            If intRows = 0 Then Exit Sub
            
            For i = 1 To intRows Step 2
                Series.Points.Add .TextMatrix(i, 0), nCcur(.TextMatrix(i, intType + 1))
            Next i
        End With
        
        Set ChartDashboard.Content.Series(0).Style = New ChartBarSeriesStyle
        Set ChartDashboard.Content.Series(1).Style = New ChartBarSeriesStyle
        Set Diagram = ChartDashboard.Content.Series(0).Diagram
        Diagram.AxisX.Label.Angle = 360
        Diagram.AxisY.Title.Visible = True
        Diagram.AxisY.Title.Text = optType(intType).Caption
        Diagram.AxisX.Title.Visible = True
        Diagram.AxisX.Title.Text = strXName
    End If
    
    Dim x As ChartSeries
    For Each x In ChartDashboard.Content.Series
        x.Style.Label.Visible = chkShowValue.Value
    Next
    
End Sub


Private Sub ShowChartPie(ByVal intType As Integer)
    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim strSql As String
    Dim intRows As Integer
    Dim arrData()
    Dim strIP As String
            
    If ChartDashboard.Content.Series.Count > 0 Then
        ChartDashboard.Content.Series.DeleteAll
    End If
    
    ChartDashboard.Content.Titles(0).Text = "Sale By Category"
    ChartDashboard.Content.Legend.Visible = True
       
    Dim Series As ChartSeries
    Set Series = ChartDashboard.Content.Series.Add("Cat")
    
            
    With grdSales
    
        intRows = 0
        For i = 1 To .Rows - 1
            If .TextMatrix(i, 0) <> "" Then intRows = intRows + 1
        Next i
           
        If intRows = 0 Then Exit Sub
        
    
        For i = 1 To intRows
            CreatePiePoint Series.Points, .TextMatrix(i, 0), nCcur(.TextMatrix(i, intType + 1))
        Next i
    End With
            
    Series.PointLegendFormat = "{A}"
    Series.Points(3).Special = True
            
    Dim Style As ChartPieSeriesStyle
    Set Style = New ChartPieSeriesStyle
    Set ChartDashboard.Content.Series(0).Style = Style
    'Style.Label.Format = "{V} Million"
               
    'Style.HolePercent = 40
    Style.Rotation = 30
    Style.Label.Visible = True
    'Style.Label.ShowLines = False
    'Style.ExplodedDistancePercent = 30
    
    Style.Label.Antialiasing = False

End Sub

Private Sub cmdByDay_Click()
    Screen.MousePointer = vbHourglass
    
    Caption = "Sales Chart By Day"
    ShowSalesByDay
    UpdateTotal
    
    Screen.MousePointer = vbDefault

End Sub


Private Sub cmdShow_Click()
    
    Screen.MousePointer = vbHourglass
    
    Caption = "Sales Chart By Staff"
    ShowSalesByStaff
    UpdateTotal
    
    Screen.MousePointer = vbDefault
End Sub





Private Sub dateFrom_Change()
    If Not bolWorking Then ShowDashBoard
End Sub

Private Sub DateTo_Change()
    If Not bolWorking Then ShowDashBoard
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'>>    Dim ShiftDown As Boolean
'>>
'>>    ShiftDown = (Shift And vbShiftMask) > 0
'>>
'>>    If ShiftDown And KeyCode = vbKeyF12 Then
'>>        frmMissing.Show vbModal
'>>    ElseIf KeyCode = vbKeyEscape Then
'>>        KeyCode = 0
'>>        Unload Me
'>>    End If
End Sub

Private Sub Form_Load()
    Dim strSql As String
    Dim rsShop As ADODB.Recordset
    
    Resize.InitResize Me
    
    gbolUseHistSummary = True
    
    intCurrentReport = 1
    dateFrom.Value = Date - 3
    dateTo.Value = Date - 3
    dateCompareFrom = Date - 10
    dateCompareTo = Date - 10
    strPeriodSelected = "Yesterday"
    strPeriodCompare = "Same day Last Week"
    bolCompareSelected = True
    
    bolWorking = True
    If bolCompareSelected Then
        chkCompare.Value = vbChecked
    Else
        chkCompare.Value = vbUnchecked
    End If
    bolWorking = False
    
    imgLogo.LoadImage_FromFile App.Path & "\Icons\chart_hot.png"
    'frmHiden.ApplySkin Me
    
    'SkinFramework.LoadSkin App.Path + "\Styles\Office2007.cjstyles", ""
    'SkinFramework.LoadSkin App.Path + "\Styles\Codejock.cjstyles", ""
    SkinFramework.LoadSkin App.Path + "\Styles\Vista.cjstyles", ""
    'SkinFramework.LoadSkin App.Path + "\Styles\WinXP.Luna.cjstyles", ""
    'SkinFramework.LoadSkin App.Path + "\Styles\WinXP.Royale.cjstyles", ""
    
    SkinFramework.ApplyWindow Me.hwnd
    SkinFramework.ApplyOptions = SkinFramework.ApplyOptions Or xtpSkinApplyMetrics
    
    CreateTaskPanel
    
    ResetGrid

    ChartDashboard.Content.Titles.Add "Chart Control"
    ChartDashboard.Content.Legend.Visible = True
    ChartDashboard.Content.Legend.HorizontalAlignment = xtpChartLegendFar
    ChartDashboard.Content.EnableMarkup = True

    If Not dbHist.OpenDB(strHistDataPath, strHistPassword, intHistDBType) Then
        MsgBox "Fail to open History Database"
        Exit Sub
    End If
    
    strSql = "SELECT shop_id, shop_name FROM Shop WHERE shop_id > 0 AND inactive = 0"
    Set rsShop = dbHist.GetRecordSet(strSql)
    cboShop.Clear
    cboShop_id.Clear
    cboShop.AddItem "All"
    cboShop_id.AddItem "0"
    Do While Not rsShop.EOF
        cboShop_id.AddItem rsShop("shop_id")
        cboShop.AddItem rsShop("shop_name")
        rsShop.MoveNext
    Loop
    If cboShop.ListCount > 0 Then cboShop.ListIndex = 0
    cboShop_id.ListIndex = cboShop.ListIndex
    
    strSql = "SELECT DISTINCT state FROM Shop WHERE shop_id > 0 AND inactive = 0"
    Set rsShop = dbHist.GetRecordSet(strSql)
    
    
    ShowDashBoard

End Sub

Private Function GetSelectionString(Optional ByVal bolCompare As Boolean = False, Optional bolNoShop As Boolean = False) As String
    Dim strSelectRange As String
    
    ' Check that valid values have been entered
    
    If strSelectRange <> "" Then strSelectRange = strSelectRange & " AND "
    If bolCompare Then
        strSelectRange = strSelectRange & _
            " ([transaction] = 'SA' OR [transaction] = 'IV')" & _
            " AND docket_date >= '" & Format(dateCompareFrom, " yyyyMMdd") & "'" & _
            " AND docket_date < '" & Format(dateCompareTo + 1, "yyyyMMdd") & "'"
    Else
        strSelectRange = strSelectRange & _
            " ([transaction] = 'SA' OR [transaction] = 'IV')" & _
            " AND docket_date >= '" & Format(dateFrom.Value, " yyyyMMdd") & "'" & _
            " AND docket_date < '" & Format(dateTo.Value + 1, "yyyyMMdd") & "'"
    End If
    If Not bolNoShop And cboShop_id.ListIndex > 0 Then
        strSelectRange = strSelectRange & " AND shop_id = " & cboShop_id.Text
    End If
    
    GetSelectionString = strSelectRange

End Function

Public Function GetSelectionString2(ByVal strTheStaff As String) As String
    Dim strSelectRange As String
    
    ' Check that valid values have been entered
    
    If strTheStaff <> "" Then
        If strSelectRange <> "" Then strSelectRange = strSelectRange & " AND "
        strSelectRange = strSelectRange & strTheStaff
    End If
    
    If strSelectRange <> "" Then strSelectRange = strSelectRange & " AND "
    strSelectRange = strSelectRange & " ([transaction] = 'SA' OR [transaction] = 'IV')" & _
            " AND docket_date >= '" & Format(dateFrom.Value, " yyyyMMdd") & "'" & _
            " AND docket_date < '" & Format(dateTo.Value + 1, "yyyyMMdd") & "'"
    If cboShop_id.ListIndex > 0 Then
        strSelectRange = strSelectRange & " AND shop_id = " & cboShop_id.Text
    End If
    
    GetSelectionString2 = strSelectRange

End Function


Private Sub ResetGrid()
    With grdSales
      .Clear
      .Cols = 6
      .Rows = 30
      
      .FormatString = "^ |^ Count |^ Sales  |^ GP$  |^ GP% "
      .ColWidth(0) = .Width / 5
      .ColWidth(1) = .Width / 5
      .ColWidth(2) = .Width / 5
      .ColWidth(3) = .Width / 5
      .ColWidth(4) = .Width / 5 - 300
      .ColWidth(5) = 0
      .ColAlignment(0) = flexAlignLeftCenter
      .ColAlignment(1) = flexAlignRightCenter
      .ColAlignment(2) = flexAlignRightCenter
      .ColAlignment(3) = flexAlignRightCenter
      .ColAlignment(4) = flexAlignRightCenter
    End With
    With grdTotal
      .Clear
      .Cols = 5
      .Rows = 1
      
      .TextMatrix(0, 0) = "Total"
      .ColWidth(0) = .Width / 5
      .ColWidth(1) = .Width / 5
      .ColWidth(2) = .Width / 5
      .ColWidth(3) = .Width / 5
      .ColWidth(4) = .Width / 5 - 300
      .ColAlignment(0) = flexAlignLeftCenter
      .ColAlignment(1) = flexAlignRightCenter
      .ColAlignment(2) = flexAlignRightCenter
      .ColAlignment(3) = flexAlignRightCenter
      .ColAlignment(4) = flexAlignRightCenter
    End With
End Sub

Private Sub ResizeGrid()
    With grdSales
      .ColWidth(0) = .Width / 5
      .ColWidth(1) = .Width / 5
      .ColWidth(2) = .Width / 5
      .ColWidth(3) = .Width / 5
      .ColWidth(4) = .Width / 5 - 300
      .ColWidth(5) = 0
    End With
    With grdTotal
      .ColWidth(0) = .Width / 5
      .ColWidth(1) = .Width / 5
      .ColWidth(2) = .Width / 5
      .ColWidth(3) = .Width / 5
      .ColWidth(4) = .Width / 5 - 300
    End With
End Sub

Private Sub Form_Resize()
    Resize.Resize Me
    ResizeGrid
End Sub

Private Sub Form_Unload(Cancel As Integer)
    UnLoadDocketList "TempID"
    dbHist.CloseDB
End Sub

Private Sub UpdateTotal()
    Dim i As Integer
    Dim intTotalCount As Long
    Dim curTotalAmount As Currency
    Dim curTotalGP As Currency
    Dim curTotalAmtEx As Currency
    Dim n As Integer
    
    If bolCompareSelected Then
        n = 2
    Else
        n = 1
    End If
    
    With grdSales
        For i = 1 To .Rows - 1 Step n
            If .TextMatrix(i, 0) <> "" Then
                intTotalCount = intTotalCount + nCint(.TextMatrix(i, 1))
                curTotalAmount = curTotalAmount + nCcur(.TextMatrix(i, 2))
                curTotalGP = curTotalGP + nCcur(.TextMatrix(i, 3))
                curTotalAmtEx = curTotalAmtEx + nCcur(.TextMatrix(i, 5))
            End If
        Next i
    End With
    With grdTotal
        .TextMatrix(0, 1) = intTotalCount
        .TextMatrix(0, 2) = Format(curTotalAmount, "Currency")
        .TextMatrix(0, 3) = Format(curTotalGP, "Currency")
        If curTotalAmtEx = 0 Then
            .TextMatrix(0, 4) = "0%"
        Else
            .TextMatrix(0, 4) = Format(.TextMatrix(0, 3) / curTotalAmtEx, "Percent")
        End If
    End With
End Sub

Public Function GetStaffSummary(ByVal strStaffNo As String, ByVal intCol As Integer) As String
    Dim i As Integer
    
    GetStaffSummary = ""
    With grdSales
        For i = 1 To .Rows - 1
            If .TextMatrix(i, 0) = strStaffNo Then
                GetStaffSummary = .TextMatrix(i, intCol)
                Exit For
            End If
        Next i
    End With
End Function

Private Sub optType_Click(Index As Integer)
    ShowChart Index
End Sub

Private Sub ShowSalesByStaff()
   'Staff Summary
    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim strSql As String
    
    ResetGrid
    optType(1).Value = True
    grdSales.TextMatrix(0, 0) = "Staff"
    If gbolUseHistSummary Then
        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
            "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalQty, " & _
            "(given_names + ' ' + surname) AS StaffName " & _
            "FROM HistDocket INNER JOIN Staff ON HistDocket.staff_id = Staff.staff_id WHERE " & GetSelectionString() & _
            " GROUP BY (given_names + ' ' + surname) ORDER BY StaffName"
    Else
        strSql = "SELECT SUM(total_ex - gp) AS TotalCostEx, SUM(total_ex) AS TotalSellEx, " & _
            "SUM(total_inc) AS TotalSellInc, COUNT(*) AS TotalQty, " & _
            "(given_names + ' ' + surname) AS StaffName " & _
            "FROM Docket INNER JOIN Staff ON Docket.staff_id = Staff.staff_id WHERE " & GetSelectionString() & _
            " GROUP BY (given_names + ' ' + surname) ORDER BY StaffName"
    End If
    
    Debug.Print strSql
    Set rsSale = dbHist.GetRecordSet(strSql)
    
    If rsSale.EOF Then Exit Sub
   
    i = 0
    While Not rsSale.EOF
        i = i + 1
        If grdSales.Rows > i - 1 Then grdSales.Rows = grdSales.Rows + 1
        
        grdSales.TextMatrix(i, 0) = rsSale("StaffName")
        grdSales.TextMatrix(i, 1) = nClng(rsSale("TotalQty"))
        grdSales.TextMatrix(i, 2) = Format$(rsSale("TotalSellInc"), "Currency")
        grdSales.TextMatrix(i, 3) = Format$(rsSale("TotalSellEx") - rsSale("TotalCostEx"), "Currency")
        grdSales.TextMatrix(i, 5) = nCstr(rsSale("TotalSellEx"))
        
        If rsSale("TotalSellEx") = 0 Then
            grdSales.TextMatrix(i, 4) = Format$(0, "#0.00%")
        Else
            grdSales.TextMatrix(i, 4) = Format$(nCcur(grdSales.TextMatrix(i, 3)) / rsSale("TotalSellEx"), "#0.00%")
        End If
        
        rsSale.MoveNext
        DoEvents
    Wend
    
    rsSale.Close
    
    ShowChart 2
End Sub

Private Sub ShowSalesByCat()
   'Staff Summary
    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim strSql As String
    
    ResetGrid
    optType(2).Value = True
    grdSales.TextMatrix(0, 0) = "Category"
    If gbolUseHistSummary Then
        strSql = "SELECT TOP " & txtCatNum & " SUM(cost_ex*HistDocketLine.quantity) AS TotalCostEx, SUM(sell_ex*HistDocketLine.quantity) AS TotalSellEx, " & _
            " SUM(sell_inc*HistDocketLine.quantity) AS TotalSellInc, SUM(HistDocketLine.quantity) AS TotalQty, " & _
            " cat1 " & _
            " FROM HistDocketLine INNER JOIN Stock ON HistDocketLine.stock_id = Stock.stock_id" & _
            " WHERE " & _
            " docket_date >= '" & Format(dateFrom.Value, " yyyyMMdd") & "'" & _
            " AND docket_date < '" & Format(dateTo.Value + 1, "yyyyMMdd") & "'"
            
        If cboShop_id.ListIndex > 0 Then
            strSql = strSql & " AND shop_id = " & cboShop_id.Text
        End If
        strSql = strSql & " GROUP BY cat1 ORDER BY TotalQty DESC"
    Else
        strSql = "SELECT SUM(cost_ex*DocketLine.quantity) AS TotalCostEx, SUM(sell_ex*DocketLine.quantity) AS TotalSellEx, " & _
            " SUM(sell_DocketLine.inc*quantity) AS TotalSellInc, SUM(DocketLine.quantity) AS TotalQty, " & _
            " cat1 " & _
            " FROM DocketLine INNER JOIN Docket ON DocketLine.docket_id = Docket.docket_id INNER JOIN Stock ON DocketLine.stock_id = Stock.stock_id" & _
            " WHERE " & GetSelectionString() & _
            " GROUP BY cat1 ORDER BY cat1"
    End If
    
    Debug.Print strSql
    Set rsSale = dbHist.GetRecordSet(strSql)
    
    If rsSale.EOF Then Exit Sub
   
    i = 0
    While Not rsSale.EOF
        i = i + 1
        If grdSales.Rows > i - 1 Then grdSales.Rows = grdSales.Rows + 1
        
        grdSales.TextMatrix(i, 0) = rsSale("cat1")
        grdSales.TextMatrix(i, 1) = nClng(rsSale("TotalQty"))
        grdSales.TextMatrix(i, 2) = Format$(rsSale("TotalSellInc"), "Currency")
        grdSales.TextMatrix(i, 3) = Format$(rsSale("TotalSellEx") - rsSale("TotalCostEx"), "Currency")
        grdSales.TextMatrix(i, 5) = nCstr(rsSale("TotalSellEx"))
        
        If rsSale("TotalSellEx") = 0 Then
            grdSales.TextMatrix(i, 4) = Format$(0, "#0.00%")
        Else
            grdSales.TextMatrix(i, 4) = Format$(nCcur(grdSales.TextMatrix(i, 3)) / rsSale("TotalSellEx"), "#0.00%")
        End If
        
        rsSale.MoveNext
        DoEvents
    Wend
    
    rsSale.Close
    
    ShowChart 2
End Sub


Sub CreatePiePoint(ByVal pPointCollection As ChartSeriesPointCollection, vArg As String, nValue As Double)
    Dim pPoint As ChartSeriesPoint
    Set pPoint = pPointCollection.Add(vArg, nValue)
End Sub

Sub CreateTaskPanel()


    Dim Group As TaskPanelGroup
    Dim Item As TaskPanelGroupItem
    
    
    Set Group = wndTaskPanel.Groups.Add(0, "ANALYTICS")
    Group.Special = True
    
    Group.Items.Add ID_REPORT_ANALYTICS_DASHBOARD, "Analytics Dashboard", xtpTaskItemTypeLink, 7
    Group.Items.Add ID_REPORT_CURRENT_SALES, "Current Shop Sales", xtpTaskItemTypeLink, 10
    Group.Items.Add ID_REPORT_SALE_SUMMARY, "Sales Summary", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_SALES_BY_SHOP, "Sales By Shop", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_SALES_BY_LOCATION, "Sales By Location", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_SALES_BY_STAFF, "Sales By Staff", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_SALES_BY_CUSTOMER, "Sales By Customer", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_SALES_BY_SUPPLIER, "Sales By Supplier", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_SALES_BY_TEDER, "Sales By Tender", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_SALES_BY_TAX, "Sales By Tax", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_DISCOUNTS, "Discounts", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_REFUNDS, "Refunds", xtpTaskItemTypeLink, 13
    
    Set Group = wndTaskPanel.Groups.Add(0, "TRANSACTIONS")
    
    Group.Items.Add ID_REPORT_DOCKET_LIST, "Dcoket List", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_CASHUP_SESSIONS, "Cashup Sessions", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_CASHUP_DAILY, "Cashup Daily", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_CASH_IN_OUT, "Cash In/Out", xtpTaskItemTypeLink, 13
    
    Set Group = wndTaskPanel.Groups.Add(0, "ITEMS")
    
    Group.Items.Add ID_REPORT_SALES_BY_CATEGORY, "Sales By Category", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_SALES_BY_ITEM, "Sales By Item", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_MODIFIERS_OPTIONS, "Modifiers/Options", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_WHAT_IS_SELLING, "What's Selling", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_ITEM_PROFITS, "Item Profits", xtpTaskItemTypeLink, 13
    
    Set Group = wndTaskPanel.Groups.Add(0, "MARKETING")
    
    Group.Items.Add ID_REPORT_MARKETING_DASHBOARD, "Marketing Dashboard", xtpTaskItemTypeLink, 7
    Group.Items.Add ID_REPORT_CUSTOMER_GROWTH, "Customer Growth", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_MEMBERSHIP, "Customer Points", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_GIFT_CARD, "Gift Cards", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_PREPAID_CARD, "Prepaid Cards", xtpTaskItemTypeLink, 13
    Group.Items.Add ID_REPORT_EMAIL_MARKETING, "Email Marketing", xtpTaskItemTypeLink, 12
    
    wndTaskPanel.SetImageList imlTaskPanelIcons
    
    'wndTaskPanel.SetMargins 5, 5, 5, 5, 5
    

End Sub

Private Sub tabDashboard_TabPageShown(ActiveTab As Integer, ActivePage As Integer)
    If ActiveTab = 0 Then
        picChartSelect.left = 0
        picChartSelect.top = tabDashboard.Height - picChartSelect.Height
        picChartSelect.Width = tabDashboard.Width
        ChartDashboard.left = 0
        ChartDashboard.Width = tabDashboard.Width
        ChartDashboard.Height = picChartSelect.top - ChartDashboard.top
    ElseIf ActiveTab = 1 Then
        grdTotal.left = 0
        grdTotal.top = tabDashboard.Height - grdTotal.Height
        grdTotal.Width = tabDashboard.Width
        grdSales.left = 0
        grdSales.Width = tabDashboard.Width
        grdSales.Height = grdTotal.top - grdSales.top
        ResizeGrid
    End If

End Sub

Private Sub wndTaskPanel_ItemClick(ByVal Item As XtremeTaskPanel.ITaskPanelGroupItem)
    Caption = "Clicked - " & Item.Caption & " ID - " & Item.ID
    
    intCurrentReport = Item.ID
    lblReportName = Item.Caption
    
    
    If Item.ID = ID_REPORT_ANALYTICS_DASHBOARD Then
        dateFrom.Value = Date - 1
        dateTo.Value = Date - 1
        dateCompareFrom = Date - 7
        dateCompareTo = Date - 7
        strPeriodSelected = "Yesterday"
        strPeriodCompare = "Same day Last Week"
        bolCompareSelected = True
        ShowDashBoard
        DashBoardVisible True
    ElseIf Item.ID = ID_REPORT_SALES_BY_SHOP Then
        dateFrom.Value = Date
        dateTo.Value = Date
        dateCompareFrom = 0
        dateCompareTo = 0
        strPeriodSelected = "Today"
        strPeriodCompare = ""
        bolCompareSelected = False
        DashBoardVisible False
        ShowSalesByShop
    ElseIf Item.ID = ID_REPORT_CURRENT_SALES Then
        dateFrom.Value = Date
        dateTo.Value = Date
        dateCompareFrom = 0
        dateCompareTo = 0
        strPeriodSelected = "Today"
        strPeriodCompare = ""
        bolCompareSelected = False
        DashBoardVisible False
        'ShowSalesByHourShop
    End If
End Sub

Private Sub ShowSummary()
   'Staff Summary
    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim strSql As String
    Dim curAvgSale As Currency
    Dim dblAvgItems As Double
    
    If gbolUseHistSummary Then
        strSql = "SELECT SUM(discount) AS TotalDiscount, SUM(total_inc - total_ex) AS TotalGST, SUM(-refund) AS TotalRefund, " & _
            "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalCount, SUM(gp) AS TotalGP, SUM(items_count) AS TotalItems " & _
            "FROM HistDocket WHERE hist_type = 1 AND " & GetSelectionString()
        Set rsSale = dbHist.GetRecordSet(strSql)
    Else
        strSql = "SELECT SUM(discount) AS TotalDiscount, SUM(total_inc - total_ex) AS TotalGST, " & _
            "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalCount, SUM(gp) AS TotalGP " & _
            "FROM Docket " & GetSelectionString()
        Set rsSale = modAdo.GetRecordSet(strSql)
    End If
    
    If Not rsSale.EOF Then
        lblTotalSale = Format(nCcur(rsSale("TotalSellInc")), "Currency")
        lblGP = Format(nCcur(rsSale("TotalGP")), "Currency")
        lblRefund = Format(nCcur(rsSale("TotalRefund")), "Currency")
        lblDiscount = Format(nCcur(rsSale("TotalDiscount")), "Currency")
        lblDockets = nCdbl(rsSale("TotalCount"))
        lblGST = Format(nCcur(rsSale("TotalGST")), "Currency")
        If nClng(lblDockets) <> 0 Then
            lblAvgSale = Format(nCcur(lblTotalSale) / nClng(lblDockets), "Currency")
            If gbolUseHistSummary Then
                lblAvgItems = Format(nCcur(rsSale("TotalItems")) / nClng(lblDockets), "0.00")
            Else
            End If
        Else
            lblAvgSale = Format(0, "Currency")
            lblAvgItems = 0
        End If
    End If
    
    If Not bolCompareSelected Then
        lblTotalSaleCompare.Visible = False
        lblGPCompare.Visible = False
        lblRefundCompare.Visible = False
        lblDiscountCompare.Visible = False
        lblGSTCompare.Visible = False
        lblDocketsCompare.Visible = False
        lblAvgSaleCompare.Visible = False
        lblAvgItemsCompare.Visible = False
        
        lblTotalSaleInd.Visible = False
        lblGPInd.Visible = False
        lblRefundInd.Visible = False
        lblDiscountInd.Visible = False
        lblGSTInd.Visible = False
        lblDocketsInd.Visible = False
        lblAvgSaleInd.Visible = False
        lblAvgItemsInd.Visible = False
        
        imgTotalSaleInd.Visible = False
        imgGPInd.Visible = False
        imgRefundInd.Visible = False
        imgDiscountInd.Visible = False
        imgGSTInd.Visible = False
        imgDocketsInd.Visible = False
        imgAvgSaleInd.Visible = False
        imgAvgItemsInd.Visible = False
        
        Exit Sub
    End If
    
    lblTotalSaleCompare.Visible = True
    lblGPCompare.Visible = True
    lblRefundCompare.Visible = True
    lblDiscountCompare.Visible = True
    lblGSTCompare.Visible = True
    lblDocketsCompare.Visible = True
    lblAvgSaleCompare.Visible = True
    lblAvgItemsCompare.Visible = True
    
    lblTotalSaleInd.Visible = True
    lblGPInd.Visible = True
    lblRefundInd.Visible = True
    lblDiscountInd.Visible = True
    lblGSTInd.Visible = True
    lblDocketsInd.Visible = True
    lblAvgSaleInd.Visible = True
    lblAvgItemsInd.Visible = True
    
    imgTotalSaleInd.Visible = True
    imgGPInd.Visible = True
    imgRefundInd.Visible = True
    imgDiscountInd.Visible = True
    imgGSTInd.Visible = True
    imgDocketsInd.Visible = True
    imgAvgSaleInd.Visible = True
    imgAvgItemsInd.Visible = True
    
    
    If gbolUseHistSummary Then
        strSql = "SELECT SUM(discount) AS TotalDiscount, SUM(total_inc - total_ex) AS TotalGST, SUM(-refund) AS TotalRefund, " & _
            "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalCount, SUM(gp) AS TotalGP, SUM(items_count) AS TotalItems " & _
            "FROM HistDocket WHERE hist_type = 1 AND " & GetSelectionString(True)
        Set rsSale = dbHist.GetRecordSet(strSql)
    Else
        strSql = "SELECT SUM(discount) AS TotalDiscount, SUM(total_inc - total_ex) AS TotalGST, " & _
            "SUM(total_inc) AS TotalSellInc, SUM(docket_count) AS TotalCount, SUM(gp) AS TotalGP " & _
            "FROM Docket " & GetSelectionString(True)
        Set rsSale = modAdo.GetRecordSet(strSql)
    End If
    
    If Not rsSale.EOF Then
    
        lblTotalSaleCompare = Format(nCcur(rsSale("TotalSellInc")), "Currency")
        lblGPCompare = Format(nCcur(rsSale("TotalGP")), "Currency")
        lblRefundCompare = Format(nCcur(rsSale("TotalRefund")), "Currency")
        lblDiscountCompare = Format(nCcur(rsSale("TotalDiscount")), "Currency")
        lblGSTCompare = Format(nCcur(rsSale("TotalGST")), "Currency")
        lblDocketsCompare = nClng(rsSale("TotalCount"))
        If nClng(rsSale("TotalCount")) <> 0 Then
            lblAvgSaleCompare = Format(nCcur(rsSale("TotalSellInc")) / nClng(rsSale("TotalCount")), "Currency")
            lblAvgItemsCompare = Format(nCcur(rsSale("TotalItems")) / nClng(rsSale("TotalCount")), "0.00")
        Else
            lblAvgSaleCompare = Format(0, "Currency")
            lblAvgItemsCompare = 0
        End If
    
    
        If nCcur(rsSale("TotalSellInc")) <> 0 Then
            lblTotalSaleInd = Format((nCcur(lblTotalSale) - nCcur(rsSale("TotalSellInc"))) / nCcur(rsSale("TotalSellInc")), "Percent")
            If left(lblTotalSaleInd, 1) <> "-" Then
                imgTotalSaleInd.LoadImage_FromFile App.Path & "\Icons\up.png"
                lblTotalSaleInd.ForeColor = &HC000&
            Else
                imgTotalSaleInd.LoadImage_FromFile App.Path & "\Icons\down.png"
                lblTotalSaleInd.ForeColor = vbRed
            End If
        ElseIf nCcur(lblTotalSale) = 0 Then
            imgTotalSaleInd.ClearImage
            lblTotalSaleInd = ""
        Else
            imgTotalSaleInd.LoadImage_FromFile App.Path & "\Icons\up.png"
            lblTotalSaleInd.ForeColor = &HC000&
            lblTotalSaleInd = "100%"
        End If
        
        If nCcur(rsSale("TotalGP")) <> 0 Then
            lblGPInd = Format((nCcur(lblGP) - nCcur(rsSale("TotalGP"))) / nCcur(rsSale("TotalGP")), "Percent")
            If left(lblGPInd, 1) <> "-" Then
                imgGPInd.LoadImage_FromFile App.Path & "\Icons\up.png"
                lblGPInd.ForeColor = &HC000&
            Else
                imgGPInd.LoadImage_FromFile App.Path & "\Icons\down.png"
                lblGPInd.ForeColor = vbRed
            End If
        ElseIf nCcur(lblGP) = 0 Then
            imgGPInd.ClearImage
            lblGPInd = ""
        Else
            imgGPInd.LoadImage_FromFile App.Path & "\Icons\up.png"
            lblGPInd.ForeColor = &HC000&
            lblGPInd = "100%"
        End If
        
        If nCcur(rsSale("TotalRefund")) <> 0 Then
            lblRefundInd = Format((nCcur(lblRefund) - nCcur(rsSale("TotalRefund"))) / nCcur(rsSale("TotalRefund")), "Percent")
            If left(lblRefundInd, 1) <> "-" Then
                imgRefundInd.LoadImage_FromFile App.Path & "\Icons\up.png"
                lblRefundInd.ForeColor = &HC000&
            Else
                imgRefundInd.LoadImage_FromFile App.Path & "\Icons\down.png"
                lblRefundInd.ForeColor = vbRed
            End If
        ElseIf nCcur(lblRefund) = 0 Then
            imgRefundInd.ClearImage
            lblRefundInd = ""
        Else
            imgRefundInd.LoadImage_FromFile App.Path & "\Icons\up.png"
            lblRefundInd.ForeColor = &HC000&
            lblRefundInd = "100%"
        End If
        
        If nCcur(rsSale("TotalDiscount")) <> 0 Then
            lblDiscountInd = Format((nCcur(lblDiscount) - nCcur(rsSale("TotalDiscount"))) / nCcur(rsSale("TotalDiscount")), "Percent")
            If left(lblDiscountInd, 1) <> "-" Then
                imgDiscountInd.LoadImage_FromFile App.Path & "\Icons\up.png"
                lblDiscountInd.ForeColor = &HC000&
            Else
                imgDiscountInd.LoadImage_FromFile App.Path & "\Icons\down.png"
                lblDiscountInd.ForeColor = vbRed
            End If
        ElseIf nCcur(lblDiscount) = 0 Then
            imgDiscountInd.ClearImage
            lblDiscountInd = ""
        Else
            imgDiscountInd.LoadImage_FromFile App.Path & "\Icons\up.png"
            lblDiscountInd.ForeColor = &HC000&
            lblDiscountInd = "100%"
        End If
        
        If nCcur(rsSale("TotalGST")) <> 0 Then
            lblGSTInd = Format((nCcur(lblGST) - nCcur(rsSale("TotalGST"))) / nCcur(rsSale("TotalGST")), "Percent")
            If left(lblGSTInd, 1) <> "-" Then
                imgGSTInd.LoadImage_FromFile App.Path & "\Icons\up.png"
                lblGSTInd.ForeColor = &HC000&
            Else
                imgGSTInd.LoadImage_FromFile App.Path & "\Icons\down.png"
                lblGSTInd.ForeColor = vbRed
            End If
        ElseIf nCcur(lblGST) = 0 Then
            imgGSTInd.ClearImage
            lblGSTInd = ""
        Else
            imgGSTInd.LoadImage_FromFile App.Path & "\Icons\up.png"
            lblGSTInd.ForeColor = &HC000&
            lblGSTInd = "100%"
        End If
        
        If nCcur(rsSale("TotalCount")) <> 0 Then
            lblDocketsInd = Format((nCdbl(lblDockets) - nCcur(rsSale("TotalCount"))) / nCcur(rsSale("TotalCount")), "Percent")
            If left(lblDocketsInd, 1) <> "-" Then
                imgDocketsInd.LoadImage_FromFile App.Path & "\Icons\up.png"
                lblDocketsInd.ForeColor = &HC000&
            Else
                imgDocketsInd.LoadImage_FromFile App.Path & "\Icons\down.png"
                lblDocketsInd.ForeColor = vbRed
            End If
        ElseIf nCcur(lblDockets) = 0 Then
            imgDocketsInd.ClearImage
            lblDocketsInd = ""
        Else
            imgDocketsInd.LoadImage_FromFile App.Path & "\Icons\up.png"
            lblDocketsInd.ForeColor = &HC000&
            lblDocketsInd = "100%"
        End If
        
        If nCcur(rsSale("TotalCount")) <> 0 Then
            curAvgSale = nCcur(rsSale("TotalSellInc")) / nCdbl(rsSale("TotalCount"))
            dblAvgItems = nCcur(rsSale("TotalItems")) / nCdbl(rsSale("TotalCount"))
        End If
        
        If curAvgSale <> 0 Then
            lblAvgSaleInd = Format((nCcur(lblAvgSale) - curAvgSale) / curAvgSale, "Percent")
            If left(lblAvgSaleInd, 1) <> "-" Then
                imgAvgSaleInd.LoadImage_FromFile App.Path & "\Icons\up.png"
                lblAvgSaleInd.ForeColor = &HC000&
            Else
                imgAvgSaleInd.LoadImage_FromFile App.Path & "\Icons\down.png"
                lblAvgSaleInd.ForeColor = vbRed
            End If
        ElseIf nCcur(lblAvgSale) = 0 Then
            imgAvgSaleInd.ClearImage
            lblAvgSaleInd = ""
        Else
            imgAvgSaleInd.LoadImage_FromFile App.Path & "\Icons\up.png"
            lblAvgSaleInd.ForeColor = &HC000&
            lblAvgSaleInd = "100%"
        End If
        
        If dblAvgItems <> 0 Then
            lblAvgItemsInd = Format((nCdbl(lblAvgItems) - dblAvgItems) / dblAvgItems, "Percent")
            If left(lblAvgItemsInd, 1) <> "-" Then
                imgAvgItemsInd.LoadImage_FromFile App.Path & "\Icons\up.png"
                lblAvgItemsInd.ForeColor = &HC000&
            Else
                imgAvgItemsInd.LoadImage_FromFile App.Path & "\Icons\down.png"
                lblAvgItemsInd.ForeColor = vbRed
            End If
        ElseIf nCcur(lblAvgItems) = 0 Then
            imgAvgItemsInd.ClearImage
            lblAvgItemsInd = ""
        Else
            imgAvgItemsInd.LoadImage_FromFile App.Path & "\Icons\up.png"
            lblAvgItemsInd.ForeColor = &HC000&
            lblAvgItemsInd = "100%"
        End If
        
        'lblDiscountind = Format(nCcur(rsSale("TotalDiscount")), "Currency")
        'lblDocketsind = nCdbl(rsSale("TotalCount"))
        'lblGSTind = Format(nCcur(rsSale("TotalGST")), "Currency")
    End If
    
   
End Sub

Private Sub ShowSummaryShop()
   'Staff Summary
    Dim i As Integer
    Dim rsSale As ADODB.Recordset
    Dim strSql As String
    Dim curAvgSale As Currency
    Dim dblAvgItems As Double
    
    
    strSql = "SELECT SUM(discount) AS TotalDiscount, SUM(total_inc - total_ex) AS TotalGST, " & _
            "SUM(total_inc) AS TotalSellInc, count(*) AS TotalCount, SUM(gp) AS TotalGP " & _
            "FROM Docket WHERE " & GetSelectionString(, True)
    Set rsSale = dbPOS.GetRecordSet(strSql)
    
    If Not rsSale.EOF Then
        lblTotalSale = Format(nCcur(rsSale("TotalSellInc")), "Currency")
        lblGP = Format(nCcur(rsSale("TotalGP")), "Currency")
        lblDiscount = Format(nCcur(rsSale("TotalDiscount")), "Currency")
        lblDockets = nCdbl(rsSale("TotalCount"))
        lblGST = Format(nCcur(rsSale("TotalGST")), "Currency")
        If nClng(lblDockets) <> 0 Then
            lblAvgSale = Format(nCcur(lblTotalSale) / nClng(lblDockets), "Currency")
        Else
            lblAvgSale = Format(0, "Currency")
        End If
    End If
    
    strSql = "SELECT SUM(-total_inc) AS TotalRefund " & _
            "FROM Docket WHERE total_inc < 0 AND " & GetSelectionString(, True)
    Set rsSale = dbPOS.GetRecordSet(strSql)
    If Not rsSale.EOF Then
        lblRefund = Format(nCcur(rsSale("TotalRefund")), "Currency")
    Else
        lblRefund = Format(0, "Currency")
    End If
    
    strSql = "SELECT count(*)  AS TotalItems FROM docketLine INNER JOIN Stock ON DocketLine.stock_id = Stock.stock_id " & _
                " WHERE cat1 <> 'TASTE' and cat1 <> 'EXTRA' AND docket_id IN (SELECT docket_id FROM Docket WHERE " & _
                " ([transaction] = 'SA' OR [transaction] = 'IV')" & _
                " AND docket_date >= '" & Format(dateFrom.Value, "yyyyMMdd") & "'" & _
                " AND docket_date < '" & Format(dateTo.Value + 1, "yyyyMMdd") & "')"
    Set rsSale = dbPOS.GetRecordSet(strSql)
    If Not rsSale.EOF Then
        If nClng(lblDockets) <> 0 Then
            lblAvgItems = Format(nCcur(rsSale("TotalItems")) / nClng(lblDockets), "0.00")
        Else
            lblAvgItems = Format(0, "Currency")
        End If
    Else
        lblAvgItems = Format(0, "Currency")
    End If
    
    lblTotalSaleCompare.Visible = False
    lblGPCompare.Visible = False
    lblRefundCompare.Visible = False
    lblDiscountCompare.Visible = False
    lblGSTCompare.Visible = False
    lblDocketsCompare.Visible = False
    lblAvgSaleCompare.Visible = False
    lblAvgItemsCompare.Visible = False
    
    lblTotalSaleInd.Visible = False
    lblGPInd.Visible = False
    lblRefundInd.Visible = False
    lblDiscountInd.Visible = False
    lblGSTInd.Visible = False
    lblDocketsInd.Visible = False
    lblAvgSaleInd.Visible = False
    lblAvgItemsInd.Visible = False
    
    imgTotalSaleInd.Visible = False
    imgGPInd.Visible = False
    imgRefundInd.Visible = False
    imgDiscountInd.Visible = False
    imgGSTInd.Visible = False
    imgDocketsInd.Visible = False
    imgAvgSaleInd.Visible = False
    imgAvgItemsInd.Visible = False
    
End Sub


Private Sub ShowDashBoard()
    ShowSummary
    ShowSalesByHour
End Sub

Private Sub ShowDashBoardShop()
    Dim strSql As String
    Dim rsShop As ADODB.Recordset
    Dim Shop As New clsShop
    
    If cboShop.ListIndex = 0 Then Exit Sub
    
    Shop.Refresh True
    Shop.Shop_id = nClng(cboShop_id.Text)
    
    If Not dbPOS.OpenDB(Shop.DBPath, Shop.DBPassword, Shop.DBType) Then Exit Sub
    
    
    bolCompareSelected = False
    ShowSummaryShop
    ShowSalesByHourShop
    
    dbPOS.CloseDB
End Sub

Private Sub DashBoardVisible(ByVal bolShow As Boolean)
    'picTotalSale.Visible = bolShow
    'picGP.Visible = bolShow
    'picRefund.Visible = bolShow
    'picDiscount.Visible = bolShow
    'picDockets.Visible = bolShow
    'picAvgSale.Visible = bolShow
    'picAvgItems.Visible = bolShow
    'picGST.Visible = bolShow
    picDashboard.Visible = bolShow
    tabDashboard.Visible = bolShow
End Sub
