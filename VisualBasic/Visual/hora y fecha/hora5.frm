VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7035
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9930
   LinkTopic       =   "Form1"
   ScaleHeight     =   7035
   ScaleWidth      =   9930
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrimg 
      Left            =   8640
      Top             =   2280
   End
   Begin VB.Timer tmrHra 
      Left            =   8640
      Top             =   1200
   End
   Begin VB.CommandButton CmdSlir 
      Caption         =   "Salir"
      Height          =   495
      Left            =   7680
      TabIndex        =   6
      Top             =   5880
      Width           =   1695
   End
   Begin VB.CommandButton cmdDtner 
      Caption         =   "Detener"
      Height          =   495
      Left            =   7680
      TabIndex        =   5
      Top             =   5040
      Width           =   1695
   End
   Begin VB.CommandButton cmdActvar 
      BackColor       =   &H00000000&
      Caption         =   "Activar"
      Height          =   555
      Left            =   7680
      TabIndex        =   4
      Top             =   4080
      Width           =   1695
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      Caption         =   "Descripcion"
      Height          =   255
      Left            =   1320
      TabIndex        =   10
      Top             =   4800
      Width           =   2055
   End
   Begin VB.Label lblnum 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Left            =   2040
      TabIndex        =   9
      Top             =   3840
      Width           =   615
   End
   Begin VB.Label Label6 
      Caption         =   "No.Foto"
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
      Left            =   960
      TabIndex        =   8
      Top             =   3840
      Width           =   855
   End
   Begin VB.Label lblDscrpciob 
      BorderStyle     =   1  'Fixed Single
      Height          =   1215
      Left            =   840
      TabIndex        =   7
      Top             =   5520
      Width           =   3015
   End
   Begin VB.Image Image1 
      Height          =   2895
      Left            =   4320
      Top             =   3720
      Width           =   2895
   End
   Begin VB.Label lblHra 
      Alignment       =   2  'Center
      BackColor       =   &H8000000D&
      Height          =   855
      Left            =   3480
      TabIndex        =   3
      Top             =   2280
      Width           =   4455
   End
   Begin VB.Label lblfcha 
      Alignment       =   2  'Center
      BackColor       =   &H8000000D&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   855
      Left            =   3480
      TabIndex        =   2
      Top             =   1200
      Width           =   4455
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "Hora Actual"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   480
      TabIndex        =   1
      Top             =   2880
      Width           =   2535
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "Fecha actual:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   480
      TabIndex        =   0
      Top             =   1680
      Width           =   2535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public img1, img2, img3, img4, img5 As String

Private Sub cmdActvar_Click()
tmrHra.Enabled = True
tmrimg.Enabled = True

End Sub

Private Sub cmdDtner_Click()
tmrHra.Enabled = False
tmrimg.Enabled = False
End Sub

Private Sub CmdSlir_Click()
End
End Sub
Private Sub Form_Load()
lblfcha.Caption = Date


tmrHra.Interval = 1000
tmrimg.Interval = 500

tmrHra.Enabled = False
tmrimg.Enabled = False

img1 = App.Path & "\1.jpg"
img2 = App.Path & "\2.jpg"
img3 = App.Path & "\3.jpg"
img4 = App.Path & "\4.jpg"
img5 = App.Path & "\5.jpg"

End Sub

Private Sub tmrHra_Timer()

End Sub
