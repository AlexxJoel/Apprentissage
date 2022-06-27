VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Operadores Aritmeticos"
   ClientHeight    =   8580
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   11430
   LinkTopic       =   "Form1"
   ScaleHeight     =   8580
   ScaleWidth      =   11430
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   2175
      Left            =   120
      TabIndex        =   8
      Top             =   4440
      Width           =   4695
      Begin VB.CommandButton cmdSlir 
         Caption         =   "Salir"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2880
         TabIndex        =   17
         Top             =   1200
         Width           =   1575
      End
      Begin VB.CommandButton cmsDvsonEntra 
         Caption         =   "\"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3600
         TabIndex        =   16
         Top             =   360
         Width           =   495
      End
      Begin VB.CommandButton cmdCnctncion 
         Caption         =   "&&"
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
         Left            =   2160
         TabIndex        =   15
         Top             =   1200
         Width           =   495
      End
      Begin VB.CommandButton cmdExpnnte 
         Caption         =   "^"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1440
         TabIndex        =   14
         Top             =   1200
         Width           =   495
      End
      Begin VB.CommandButton cmdMdlo 
         Caption         =   "Mod"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   720
         TabIndex        =   13
         Top             =   1200
         Width           =   495
      End
      Begin VB.CommandButton cmdDvsonReal 
         Caption         =   "/"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2880
         TabIndex        =   12
         Top             =   360
         Width           =   495
      End
      Begin VB.CommandButton cmdMltplccion 
         Caption         =   "*"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2160
         TabIndex        =   11
         Top             =   360
         Width           =   495
      End
      Begin VB.CommandButton cmdRsta 
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1440
         TabIndex        =   10
         Top             =   360
         Width           =   495
      End
      Begin VB.CommandButton cmdSma 
         Caption         =   "+"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   720
         TabIndex        =   9
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.TextBox txtNmro2 
      Height          =   855
      Left            =   2880
      TabIndex        =   3
      Top             =   1560
      Width           =   1815
   End
   Begin VB.TextBox txtNmro1 
      Height          =   735
      Left            =   2880
      TabIndex        =   1
      Top             =   360
      Width           =   1815
   End
   Begin VB.Label lblRsltdo 
      BorderStyle     =   1  'Fixed Single
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
      Left            =   2880
      TabIndex        =   7
      Top             =   3480
      Width           =   1815
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      Caption         =   "Resultado:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      TabIndex        =   6
      Top             =   3480
      Width           =   2535
   End
   Begin VB.Label lblOprdor 
      BorderStyle     =   1  'Fixed Single
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
      Left            =   2880
      TabIndex        =   5
      Top             =   2640
      Width           =   1815
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      Caption         =   "Operador:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      TabIndex        =   4
      Top             =   2640
      Width           =   2535
   End
   Begin VB.Label Label2 
      Caption         =   "Ingrese otro valor numerico:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      TabIndex        =   2
      Top             =   1560
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Ingresa un valor numerico:"
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
      TabIndex        =   0
      Top             =   360
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCnctncion_Click()
lblOprdor.Caption = "Concatenacion"
lblRsltdo.Caption = Val(txtNmro1.Text) & Val(txtNmro2.Text)
End Sub

Private Sub cmdDvsonReal_Click()
lblOprdor.Caption = "DivisionReal"
lblRsltdo.Caption = Val(txtNmro1.Text) / Val(txtNmro2.Text)
End Sub

Private Sub cmdMdlo_Click()
lblOprdor.Caption = "Modulo"
lblRsltdo.Caption = Val(txtNmro1.Text) Mod Val(txtNmro2.Text)
End Sub

Private Sub cmdMltplccion_Click()
lblOprdor.Caption = "Multiplicacion"
lblRsltdo.Caption = Val(txtNmro1.Text) * Val(txtNmro2.Text)
End Sub

Private Sub cmdRsta_Click()
lblOprdor.Caption = "RESTA"
lblRsltdo.Caption = Val(txtNmro1.Text) - Val(txtNmro2.Text)
End Sub

Private Sub cmdSlir_Click()
End

End Sub

Private Sub cmdSma_Click()
lblOprdor.Caption = "Suma"
lblRsltdo.Caption = Val(txtNmro1.Text) + Val(txtNmro2.Text)
End Sub

Private Sub cmsDvsonEntra_Click()
lblOprdor.Caption = "DivisionEntero"
lblRsltdo.Caption = Val(txtNmro1.Text) \ Val(txtNmro2.Text)
End Sub
