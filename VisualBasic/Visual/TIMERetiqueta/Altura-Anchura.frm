VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5445
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4620
   LinkTopic       =   "Form1"
   ScaleHeight     =   5445
   ScaleWidth      =   4620
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdDtner 
      Caption         =   "&Detener"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   1560
      TabIndex        =   5
      Top             =   3480
      Width           =   1335
   End
   Begin VB.CommandButton cmdActvar 
      Caption         =   "&Activar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Index           =   0
      Left            =   1560
      TabIndex        =   4
      Top             =   2760
      Width           =   1335
   End
   Begin VB.Timer tmrDsplzmnto 
      Left            =   360
      Top             =   3240
   End
   Begin VB.Timer tmrTmprzdor 
      Left            =   360
      Top             =   2520
   End
   Begin VB.Label lblMnsje 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   6
      Top             =   4560
      Width           =   3975
   End
   Begin VB.Label lblAnchra 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Left            =   3000
      TabIndex        =   3
      Top             =   1560
      Width           =   1335
   End
   Begin VB.Label lblAltra 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Left            =   3000
      TabIndex        =   2
      Top             =   720
      Width           =   1335
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Anchura Form"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   1560
      Width           =   2295
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Altura Form"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   720
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Flag, y As Integer

Private Sub cmdActvar_Click(Index As Integer)

tmrTmprzdor.Enabled = True
tmrDsplzmnto.Enabled = True

End Sub

Private Sub cmdDtner_Click()

tmrTmprzdor.Enabled = False
tmrDsplzmnto.Enabled = False

End Sub


Private Sub Form_Load()

Flag = 0

'Altura del formulario

y = Me.Height

'Anchura form

lblAnchra.Caption = Me.Width

'Coloca Etiqueta
'Inferior izquierda del form (eje y)

lblMnsje.Top = y

'Eje x

lblMnsje.Left = 300

'intervalo timers

tmrTmprzdor.Interval = 500
tmrDsplzmnto.Interval = 200

tmrTmprzdor.Enabled = False
tmrDsplzmnto.Enabled = False

End Sub

Private Sub tmrDsplzmnto_Timer()

y = y - 100

If y <= 0 Then
y = Me.Height
End If

lblMnsje.Top = y
lblAltra.Caption = y

End Sub

Private Sub tmrTmprzdor_Timer()

If Flag = 0 Then

lblMnsje.BackColor = vbBlue
Flag = 1

Else

lblMnsje.BackColor = vbYellow
Flag = 0

End If
End Sub
