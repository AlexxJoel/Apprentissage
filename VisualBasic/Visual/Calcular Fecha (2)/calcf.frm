VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Suma de fechas"
   ClientHeight    =   5610
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7245
   LinkTopic       =   "Form1"
   ScaleHeight     =   5610
   ScaleWidth      =   7245
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtFchaDvlcion 
      Height          =   375
      Left            =   4440
      TabIndex        =   9
      Top             =   4320
      Width           =   2175
   End
   Begin VB.TextBox txtFchaIncioRnta 
      Height          =   375
      Left            =   240
      TabIndex        =   8
      Top             =   4320
      Width           =   2415
   End
   Begin VB.ComboBox cmbDia 
      Height          =   315
      Left            =   360
      TabIndex        =   7
      Text            =   "Combo1"
      Top             =   2640
      Width           =   1215
   End
   Begin VB.ComboBox cmbDiasRnta 
      Height          =   315
      Left            =   4080
      TabIndex        =   6
      Text            =   "Combo1"
      Top             =   1200
      Width           =   1935
   End
   Begin VB.ListBox lstMes 
      Height          =   1035
      Left            =   360
      TabIndex        =   5
      Top             =   960
      Width           =   1575
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   " Fecha Calculada"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4440
      TabIndex        =   4
      Top             =   3840
      Width           =   2055
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Fecha de Inicio"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   3840
      Width           =   1935
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Dia:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   2
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Dias a sumar;"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4080
      TabIndex        =   1
      Top             =   600
      Width           =   1815
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mes:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public FechaInicio, FechaFin As Date

Private Sub cmbDia_Click()
    Dim Año As Integer
    Año = Year(Date)
    txtFchaIncioRnta.Text = cmbDia.Text & " de " & lstMes.Text & " de " & Año
    FechaInicio = cmbDia.Text & "/" & lstMes.ListIndex + 1 & "/" & Año
    cmbDiasRnta.Enabled = True
End Sub

Private Sub cmbDiasRnta_Click()
    FechaFin = DateAdd("d", Val(cmbDiasRnta.Text), FechaInicio)
    txtFchaDvlcion.Text = FechaFin
End Sub

Private Sub Form_Load()
    With lstMes
        .AddItem "Enero"
        .AddItem "Febrero"
        .AddItem "Marzo"
        .AddItem "Abril"
        .AddItem "Mayo"
    End With
    For i = 1 To 30
        cmbDiasRnta.AddItem i
    Next i
    cmbDia.Enabled = False
    cmbDiasRnta.Enabled = False
End Sub

Private Sub lstMes_Click()
    Dim Limite As Integer
    cmbDia.Clear
    Select Case lstMes.ListIndex
        Case 0, 2, 4    'enero, marzo, mayo
            Limite = 31
        Case 1      'febrero
            Limite = 28
        Case 3      'abril
            Limite = 30
    End Select
    For i = 1 To Limite
        cmbDia.AddItem i
    Next i
    cmbDia.Enabled = True
End Sub


