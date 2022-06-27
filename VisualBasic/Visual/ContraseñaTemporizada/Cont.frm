VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7185
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6420
   LinkTopic       =   "Form1"
   ScaleHeight     =   7185
   ScaleWidth      =   6420
   StartUpPosition =   3  'Windows Default
   Begin ComctlLib.ProgressBar pbrPrgrso 
      Height          =   255
      Left            =   1560
      TabIndex        =   6
      Top             =   2280
      Width           =   3375
      _ExtentX        =   5953
      _ExtentY        =   450
      _Version        =   327682
      Appearance      =   1
   End
   Begin VB.CommandButton cmdSlir 
      Caption         =   "&Salir"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3360
      TabIndex        =   4
      Top             =   5160
      Width           =   1455
   End
   Begin VB.CommandButton cmdAcptar 
      Caption         =   "&Aceptar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1560
      TabIndex        =   3
      Top             =   5160
      Width           =   1575
   End
   Begin VB.TextBox txtCntrsña 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   1560
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   1680
      Width           =   3375
   End
   Begin VB.Timer tmrStop 
      Left            =   5640
      Top             =   720
   End
   Begin VB.Timer tmrPrgrso 
      Left            =   5160
      Top             =   720
   End
   Begin VB.Label lblMnsje 
      Alignment       =   2  'Center
      Caption         =   "HOOLA"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1560
      TabIndex        =   5
      Top             =   6120
      Width           =   3375
   End
   Begin VB.Image img 
      Height          =   2415
      Left            =   1560
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   3255
   End
   Begin VB.Label lblTmpo 
      BackColor       =   &H00C00000&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   495
      Left            =   5280
      TabIndex        =   2
      Top             =   1800
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Ingresa la contraseña (10 segundos)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1560
      TabIndex        =   0
      Top             =   600
      Width           =   3375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Acierto, Contraseña, Error As String
Public Flag As Integer
Private Sub cmdAcptar_Click()

If txtCntrsña.Text = Contraseña Then
tmrPrgrso.Enabled = False
tmrStop.Enabled = False


img.Picture = LoadPicture(Acierto)
MsgBox "Correcta :B"
Else

img.Picture = LoadPicture(Error)
lblMnsje.Caption = "Contraseña incorrecta"
End If

End Sub

Private Sub cmdSlir_Click()
End
End Sub

Private Sub Form_Load()

tmrPrgrso.Interval = 1000
tmrPrgrso.Enabled = True

tmrStop.Interval = 12000
tmrStop.Enabled = True

txtCntrsña.PasswordChar = "*"
txtCntrsña.MaxLength = 10

pbrPrgrso.Max = 10
pbrPrgrso.Min = 0

Acierto = App.Path & "\Acierto.jpg"

Error = App.Path & "\Error.jpg"

lblTmpo.Caption = "00:"
Flag = 0
Contraseña = "quetzalli"
End Sub


Private Sub tmrPrgrso_Timer()

pbrPrgrso.Value = Flag

If Flag < 10 Then

lblTmpo.Caption = "00:0" & Flag
Else
lblTmpo.Caption = "00:" & Flag
End If

lblMnsje.Caption = ""
img.Picture = LoadPicture("")
Flag = Flag + 1
End Sub

Private Sub tmrStop_Timer()

tmrPrgrso.Enabled = False

MsgBox "End Time"
Unload Me

End Sub
