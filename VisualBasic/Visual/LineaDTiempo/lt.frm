VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Linea del tiempo"
   ClientHeight    =   7905
   ClientLeft      =   3210
   ClientTop       =   1545
   ClientWidth     =   14040
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   12
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   7905
   ScaleWidth      =   14040
   Begin VB.CommandButton Command1 
      Caption         =   "Salir"
      Height          =   735
      Left            =   11640
      TabIndex        =   5
      Top             =   6720
      Width           =   1935
   End
   Begin VB.TextBox txtedad 
      Alignment       =   2  'Center
      Height          =   540
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   4
      Text            =   "0"
      Top             =   6480
      Width           =   1095
   End
   Begin VB.TextBox txtAño 
      Alignment       =   2  'Center
      Height          =   540
      Left            =   3000
      TabIndex        =   3
      Text            =   "2003"
      Top             =   5835
      Width           =   1095
   End
   Begin VB.HScrollBar hsbAños 
      Height          =   375
      Left            =   1200
      TabIndex        =   0
      Top             =   4200
      Width           =   9495
   End
   Begin VB.Image imgplay2 
      Height          =   3255
      Left            =   6120
      Picture         =   "lt.frx":0000
      Stretch         =   -1  'True
      Top             =   840
      Width           =   3255
   End
   Begin VB.Image imgplay1 
      Height          =   3255
      Left            =   1800
      Picture         =   "lt.frx":1DA5B
      Stretch         =   -1  'True
      Top             =   720
      Width           =   3495
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Linea del tiempo Joel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   8
      Top             =   240
      Width           =   10935
   End
   Begin VB.Image imgpap2 
      Height          =   3135
      Left            =   6840
      Picture         =   "lt.frx":46C0E5
      Stretch         =   -1  'True
      Top             =   840
      Width           =   2775
   End
   Begin VB.Image imgpap1 
      Height          =   3375
      Left            =   2400
      Picture         =   "lt.frx":47FEC8
      Stretch         =   -1  'True
      Top             =   720
      Width           =   2655
   End
   Begin VB.Label lblDscrpcion 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Puesto que este fue mi año de nacimento exactamente naci el 9 de noviembre en cuernavaca morelos a las 11:32 """
      Height          =   1935
      Left            =   6000
      TabIndex        =   7
      Top             =   5640
      Width           =   3975
   End
   Begin VB.Image imgnci1 
      Height          =   3255
      Left            =   6840
      Picture         =   "lt.frx":57F9F0
      Stretch         =   -1  'True
      Top             =   840
      Width           =   2895
   End
   Begin VB.Image imgnci2 
      Height          =   3495
      Left            =   2160
      Picture         =   "lt.frx":58F82F
      Stretch         =   -1  'True
      Top             =   600
      Width           =   2775
   End
   Begin VB.Image imgact2 
      Height          =   3255
      Left            =   6720
      Picture         =   "lt.frx":59687D
      Stretch         =   -1  'True
      Top             =   840
      Width           =   2895
   End
   Begin VB.Image imgact1 
      Height          =   3375
      Left            =   1800
      Picture         =   "lt.frx":5A5C86
      Stretch         =   -1  'True
      Top             =   720
      Width           =   2535
   End
   Begin VB.Image imgFllo 
      Height          =   2775
      Left            =   4320
      Picture         =   "lt.frx":5B1B9B
      Stretch         =   -1  'True
      Top             =   960
      Width           =   3015
   End
   Begin VB.Image imgvje2 
      Height          =   3255
      Left            =   6720
      Picture         =   "lt.frx":5CCB72
      Stretch         =   -1  'True
      Top             =   840
      Width           =   3135
   End
   Begin VB.Image imgVje1 
      Height          =   2895
      Left            =   1800
      Picture         =   "lt.frx":756B9A
      Stretch         =   -1  'True
      Top             =   1080
      Width           =   3855
   End
   Begin VB.Label lblTtlo 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Nacimiento"
      Height          =   375
      Left            =   6600
      TabIndex        =   6
      Top             =   4920
      Width           =   2895
   End
   Begin VB.Image Image1 
      Height          =   2295
      Left            =   11520
      Picture         =   "lt.frx":8F31B9
      Stretch         =   -1  'True
      Top             =   240
      Width           =   1935
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Edad :"
      Height          =   495
      Left            =   480
      TabIndex        =   2
      Top             =   6480
      Width           =   2295
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Año en el que te encuentras;"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   1
      Top             =   5880
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Edad, l As Integer
Private Sub playa()
If hsbAños.Value = 8 Then
imgFllo.Visible = False
imgplay1.Visible = True
imgplay2.Visible = True
lblTtlo.Visible = True
lblDscrpcion.Visible = True
lblTtlo.Caption = "El mar Playa"
lblDscrpcion.Caption = "Aqui fui a cancun con un solo familiar que era mi abuela fue la primera vez que conoci la playa , me senti afortunado ya que ni mis papas la conocian"
Else
imgplay1.Visible = False
imgplay2.Visible = False
End If
End Sub
Private Sub papa()
If hsbAños.Value = 11 Then
imgFllo.Visible = False
imgpap1.Visible = True
imgpap2.Visible = True
lblTtlo.Visible = True
lblDscrpcion.Visible = True
lblTtlo.Caption = "El trabajo de mi papa"
lblDscrpcion.Caption = " En este año mi papa me llevo a su trabajo conoci las instalaciones de una fabrica de carros llamada nissan"
Else
imgpap1.Visible = False
imgpap2.Visible = False
End If
End Sub

Private Sub viaje()
If hsbAños.Value = 12 Then
imgFllo.Visible = False
imgVje1.Visible = True
imgvje2.Visible = True
lblTtlo.Visible = True
lblDscrpcion.Visible = True
lblTtlo.Caption = "Mi Viaje Familiar "
lblDscrpcion.Caption = "Este año fue super por que con mi familia conoci un lugar nuevo,Donde ahi playas , costumbres , bailes , y parques   Cancun es un paraiso"
Else
imgVje1.Visible = False
imgvje2.Visible = False

End If
End Sub
Private Sub actual()
If hsbAños.Value = 16 Then
imgFllo.Visible = False
imgact1.Visible = True
imgact2.Visible = True
lblTtlo.Visible = True
lblDscrpcion.Visible = True
lblTtlo.Caption = "Mi estado actual"
lblDscrpcion.Caption = " Durante mis 16 años e vivido hermosas cosas hasta aprendido nuevas maravilla se disfrutar cada momento y vamos al %100"
Else

imgact1.Visible = False
imgact2.Visible = False

End If

End Sub
Private Sub nacimiento()
If hsbAños.Value = 0 Then
imgFllo.Visible = False
imgnci1.Visible = True
imgnci2.Visible = True
lblTtlo.Visible = True
lblDscrpcion.Visible = True
lblTtlo.Caption = "Nacimiento "
lblDscrpcion.Caption = "Puesto que este fue mi año de nacimento exactamente naci el 9 de noviembre en cuernavaca morelos a las 11:32 "
Else
imgnci1.Visible = False
imgnci2.Visible = False
Nada
End If

End Sub

Private Sub Num()

txtedad.Text = hsbAños.Value
txtAño.Text = txtedad.Text + 2003

nacimiento
viaje
actual
papa
playa
End Sub
Private Sub Nada()
lblTtlo.Caption = "00000"
lblDscrpcion.Caption = "0000000"
imgFllo.Visible = True
End Sub



Private Sub Command1_Click()
End

End Sub

Private Sub Form_Load()
hsbAños.Max = 0
hsbAños.Min = 16

hsbAños.SmallChange = 2

hsbAños.LargeChange = 5


imgFllo.Visible = False
imgVje1.Visible = False
imgvje2.Visible = False
imgact1.Visible = False
imgact2.Visible = False
imgpap1.Visible = False
imgpap2.Visible = False
imgplay1.Visible = False
imgplay2.Visible = False
End Sub
Private Sub hsbAños_Change()
Num

End Sub
Private Sub hsbAños_Scroll()
Num

End Sub


