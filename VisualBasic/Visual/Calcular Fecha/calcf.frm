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
   Begin VB.ComboBox cmbAño 
      Height          =   315
      Left            =   1920
      Style           =   2  'Dropdown List
      TabIndex        =   11
      Top             =   2640
      Width           =   1215
   End
   Begin VB.TextBox txtFchaDvlcion 
      Height          =   375
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   4320
      Width           =   2175
   End
   Begin VB.TextBox txtFchaIncioRnta 
      Height          =   375
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   4320
      Width           =   2415
   End
   Begin VB.ComboBox cmbDia 
      Height          =   315
      Left            =   360
      Style           =   2  'Dropdown List
      TabIndex        =   7
      Top             =   2640
      Width           =   1215
   End
   Begin VB.ComboBox cmbDiasRnta 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   6
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
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Año:"
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
      Left            =   1920
      TabIndex        =   10
      Top             =   2160
      Width           =   1215
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
Public año As Integer


Private Sub cmbAño_Click()

lstMes.Enabled = True

End Sub

Private Sub cmbDia_Click()
    año = cmbAño.Text
    
    
    
    txtFchaIncioRnta.Text = cmbDia.Text & " de " & lstMes.Text & " de " & cmbAño.Text
    FechaInicio = cmbDia.Text & "/" & lstMes.ListIndex + 1 & "/" & año
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
        .AddItem "Junio"
        .AddItem "Julio"
        .AddItem "Agosto"
        .AddItem "Septiembre"
        .AddItem "Octubre"
        .AddItem "Noviembre"
        .AddItem "Diciembre"
    End With
    For i = 1 To 30
        cmbDiasRnta.AddItem i
    Next i
    
    For p = 1980 To 2030
    cmbAño.AddItem p
    Next p
    
    
    lstMes.Enabled = False
    cmbDia.Enabled = False
    cmbDiasRnta.Enabled = False
End Sub

Private Sub lstMes_Click()
    Dim Limite As Integer
    cmbDia.Clear
    Select Case lstMes.ListIndex
        Case 0, 2, 4, 6, 7, 9, 11 'enero, marzo, mayo
            Limite = 31
        Case 1
        If año Mod 4 Then
        Limite = 29
        Else
        
            Limite = 28
        End If
        
        Case 3, 6, 8, 10    'abril
            Limite = 30
            
    End Select
    For i = 1 To Limite
        cmbDia.AddItem i
    Next i
    cmbDia.Enabled = True
End Sub


