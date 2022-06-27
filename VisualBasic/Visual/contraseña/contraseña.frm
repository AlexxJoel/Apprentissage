VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5985
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5055
   LinkTopic       =   "Form1"
   ScaleHeight     =   5985
   ScaleWidth      =   5055
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSlir 
      Caption         =   "&Salir"
      Height          =   615
      Left            =   1800
      TabIndex        =   5
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton cmdAcptar 
      Caption         =   "&Aceptar"
      Height          =   495
      Left            =   360
      TabIndex        =   4
      Top             =   2880
      Width           =   1215
   End
   Begin VB.TextBox txtCntrsña 
      Height          =   495
      IMEMode         =   3  'DISABLE
      Left            =   360
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   1200
      Width           =   2415
   End
   Begin VB.Image img 
      Height          =   1935
      Left            =   360
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   3375
   End
   Begin VB.Label lblIntntos 
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Left            =   1440
      TabIndex        =   3
      Top             =   2400
      Width           =   735
   End
   Begin VB.Label Label2 
      Caption         =   "Intentos:"
      Height          =   255
      Left            =   480
      TabIndex        =   2
      Top             =   2400
      Width           =   735
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Introduce la contraseña:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Contraseña, IMGAcierto, IMGError As String
Public Intentos As Integer


Private Sub cmdAcptar_Click()

If txtCntrsña.Text = Contraseña Then

MsgBox "Contraseña Correcta"

img.Picture = LoadPicture(IMGAcierto)

Else

MsgBox "Contraseña Incorrecta"
Intentos = Intentos + 1
lblIntntos.Caption = Intentos

img.Picture = LoadPicture(IMGError)

If Intentos >= 3 Then


MsgBox "Agoto su número de oportunidades "

txtCntrsña.Enabled = False
cmdAcptar.Enabled = False


End If



End If


End Sub

Private Sub cmdSlir_Click()

End

End Sub

Private Sub Form_Load()

Contraseña = "quetzalli"

Intentos = 0

IMGAcierto = App.Path & "\acierto.jpg"
IMGError = App.Path & "\error.jpg"

End Sub


