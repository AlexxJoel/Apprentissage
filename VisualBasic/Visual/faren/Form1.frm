VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9960
   LinkTopic       =   "Form1"
   ScaleHeight     =   6015
   ScaleWidth      =   9960
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtfa 
      Height          =   375
      Left            =   4920
      TabIndex        =   4
      Text            =   "Text2"
      Top             =   4920
      Width           =   1455
   End
   Begin VB.TextBox txtcen 
      Height          =   495
      Left            =   2280
      TabIndex        =   3
      Text            =   "Text1"
      Top             =   4800
      Width           =   1455
   End
   Begin VB.VScrollBar vsbco 
      Height          =   3735
      Left            =   4200
      TabIndex        =   0
      Top             =   1560
      Width           =   375
   End
   Begin VB.Label Label2 
      Caption         =   "200"
      Height          =   375
      Left            =   3960
      TabIndex        =   6
      Top             =   960
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "-200"
      Height          =   255
      Left            =   3960
      TabIndex        =   5
      Top             =   5400
      Width           =   615
   End
   Begin VB.Label lblfa 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "fahrenheit"
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
      Left            =   4920
      TabIndex        =   2
      Top             =   4200
      Width           =   1455
   End
   Begin VB.Label lblcen 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Centigrado"
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
      Left            =   2280
      TabIndex        =   1
      Top             =   4200
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub barra()
txtcen.Text = vsbco.Value
txtfa.Text = txtcen.Text * 9 / 5 + 32

End Sub
Private Sub Form_Load()
vsbco.Max = 200
vsbco.Min = -200

vsbco.SmallChange = 1
vsbco.LargeChange = 10

End Sub

Private Sub vsbco_Change()
barra
End Sub

Private Sub vsbco_Scroll()
barra
End Sub
