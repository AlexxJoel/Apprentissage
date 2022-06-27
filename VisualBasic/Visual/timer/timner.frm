VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5100
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5715
   LinkTopic       =   "Form1"
   ScaleHeight     =   5100
   ScaleWidth      =   5715
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdDtner 
      Caption         =   "Detener"
      Height          =   375
      Left            =   3360
      TabIndex        =   2
      Top             =   3120
      Width           =   1335
   End
   Begin VB.CommandButton cmdActvar 
      Caption         =   "Activar"
      Height          =   375
      Left            =   720
      TabIndex        =   1
      Top             =   3120
      Width           =   1095
   End
   Begin VB.Timer tmrTmprzdor 
      Left            =   2520
      Top             =   960
   End
   Begin VB.Label lblmnsje 
      Alignment       =   2  'Center
      BackColor       =   &H008080FF&
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   600
      TabIndex        =   0
      Top             =   2040
      Width           =   4215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public color As Integer

Private Sub cmdActvar_Click()
    tmrTmprzdor.Enabled = True
    
End Sub

Private Sub cmdDtner_Click()
  tmrTmprzdor.Enabled = False
End Sub

Private Sub Form_Load()
 tmrTmprzdor.Interval = 500 ' UN segundo
 tmrTmprzdor.Enabled = False
 
 color = 0
 
End Sub

Private Sub tmrTmprzdor_Timer()

If color = 0 Then

lblmnsje.BackColor = &H8080FF 'rosa
lblmnsje.ForeColor = &H80000012  'negro
color = 1

Else

lblmnsje.BackColor = &H80000012
'negro
lblmnsje.ForeColor = &H8080FF

color = 0
End If



End Sub
