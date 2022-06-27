VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Demo letra y fondo"
   ClientHeight    =   4860
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6150
   LinkTopic       =   "Form1"
   ScaleHeight     =   4860
   ScaleWidth      =   6150
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSlir 
      Caption         =   "Salir"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3000
      TabIndex        =   3
      Top             =   2640
      Width           =   1575
   End
   Begin VB.ListBox listClorLtra 
      Height          =   450
      Left            =   360
      TabIndex        =   1
      Top             =   1920
      Width           =   1935
   End
   Begin VB.ComboBox cmbClorFndo 
      Height          =   315
      Left            =   360
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   720
      Width           =   2055
   End
   Begin VB.Label lblMnsje 
      Alignment       =   1  'Right Justify
      Caption         =   "No puede ser que sea tan malo lo facil"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1755
      Left            =   3000
      TabIndex        =   2
      Top             =   600
      Width           =   2085
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmbClorFndo_click()
Select Case cmbClorFndo.ListIndex
Case 0
lblMnsje.BackColor = vbBlue
Case 1
lblMnsje.BackColor = vbYellow
Case 2
lblMnsje.BackColor = vbRed
Case 3
lblMnsje.BackColor = vbGreen
Case 4
lblMnsje.BackColor = RGB(255, 0, 255)
End Select
End Sub


Private Sub cmdSlir_Click()
End

End Sub

Private Sub Form_Load()
'carga colores de fondo
With cmbClorFndo
.AddItem "Azul"
.AddItem "Amarillo"
.AddItem "Rojo"
.AddItem "Verde"
.AddItem "Magenta"
End With


listClorLtra.AddItem "Azul"
listClorLtra.AddItem "Amarillo"
listClorLtra.AddItem "Rojo"
listClorLtra.AddItem "Verde"
listClorLtra.AddItem "Magenta"



End Sub

Private Sub listClorLtra_Click()
Select Case listClorLtra.ListIndex
Case 0
lblMnsje.ForeColor = vbBlue
Case 1
lblMnsje.ForeColor = vbYellow
Case 2
lblMnsje.ForeColor = vbRed
Case 3
lblMnsje.ForeColor = vbGreen
Case 4
lblMnsje.ForeColor = RGB(255, 0, 255)
End Select
End Sub
