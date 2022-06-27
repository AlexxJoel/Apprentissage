VERSION 5.00
Begin VB.Form frmHla 
   Caption         =   "Bienvenido "
   ClientHeight    =   3510
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4875
   LinkTopic       =   "Form1"
   ScaleHeight     =   3510
   ScaleWidth      =   4875
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSlir 
      Caption         =   "Salir"
      Height          =   615
      Left            =   2760
      TabIndex        =   4
      Top             =   2760
      Width           =   1695
   End
   Begin VB.CommandButton cmdCntnuar 
      Caption         =   "Continuar"
      Height          =   615
      Left            =   0
      TabIndex        =   3
      Top             =   2760
      Width           =   1695
   End
   Begin VB.TextBox txtNmbre 
      Height          =   855
      Left            =   1920
      TabIndex        =   0
      Top             =   240
      Width           =   2415
   End
   Begin VB.Label lblBnvndo 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   120
      TabIndex        =   2
      Top             =   1320
      Width           =   4215
   End
   Begin VB.Label Label1 
      Caption         =   "Ingresa Nombre"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      TabIndex        =   1
      Top             =   360
      Width           =   1695
   End
End
Attribute VB_Name = "frmHla"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCntnuar_Click()
lblBnvndo.Caption = "Hola : " + txtNmbre.Text

End Sub

Private Sub cmdSlir_Click()
End
End Sub


