VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H8000000B&
   Caption         =   "Form1"
   ClientHeight    =   7800
   ClientLeft      =   6375
   ClientTop       =   885
   ClientWidth     =   7005
   LinkTopic       =   "Form1"
   ScaleHeight     =   7800
   ScaleWidth      =   7005
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
      Height          =   495
      Left            =   360
      TabIndex        =   20
      Top             =   6480
      Width           =   6135
   End
   Begin VB.HScrollBar hsbBlue 
      Height          =   375
      Left            =   360
      TabIndex        =   5
      Top             =   5640
      Width           =   2775
   End
   Begin VB.HScrollBar hsbGreen 
      Height          =   375
      Left            =   360
      TabIndex        =   3
      Top             =   4320
      Width           =   2775
   End
   Begin VB.HScrollBar hsbred 
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   3000
      Width           =   2775
   End
   Begin VB.TextBox txtTxto 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   360
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   360
      Width           =   2655
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      Caption         =   "HERRERA HERNANDEZ JOEL ALEJANDRO"
      Height          =   255
      Left            =   360
      TabIndex        =   21
      Top             =   7200
      Width           =   6135
   End
   Begin VB.Label lblbluehex 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "H00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5400
      TabIndex        =   19
      Top             =   5760
      Width           =   1095
   End
   Begin VB.Label lblbluedec 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3960
      TabIndex        =   18
      Top             =   5760
      Width           =   855
   End
   Begin VB.Label lblGreenHex 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "H00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5400
      TabIndex        =   17
      Top             =   4440
      Width           =   1095
   End
   Begin VB.Label lblGreendec 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3960
      TabIndex        =   16
      Top             =   4440
      Width           =   855
   End
   Begin VB.Label lblredhex 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "H00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5280
      TabIndex        =   15
      Top             =   3120
      Width           =   1095
   End
   Begin VB.Label lblreddec 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3840
      TabIndex        =   14
      Top             =   3120
      Width           =   855
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Hex"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5280
      TabIndex        =   13
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Dec"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3840
      TabIndex        =   12
      Top             =   2520
      Width           =   855
   End
   Begin VB.Label lblhex 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "H00 00 00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5160
      TabIndex        =   11
      Top             =   1320
      Width           =   1455
   End
   Begin VB.Label Label7 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Caption         =   "Hexadecimal"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3600
      TabIndex        =   10
      Top             =   1320
      Width           =   1455
   End
   Begin VB.Label lbldec 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.00.00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5160
      TabIndex        =   9
      Top             =   720
      Width           =   1335
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Caption         =   "RGB:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   8
      Top             =   720
      Width           =   1335
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Codigos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   7
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label lblblue 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "RGB(Blue)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   255
      Left            =   360
      TabIndex        =   6
      Top             =   5160
      Width           =   2775
   End
   Begin VB.Label lblgreen 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "RGB(Green)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   4
      Top             =   3840
      Width           =   2775
   End
   Begin VB.Label lblRed 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "RGB(Red)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   255
      Left            =   360
      TabIndex        =   2
      Top             =   2520
      Width           =   2775
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public red, green, blue As Integer
Private Sub scrolli(hsb As HScrollBar)
hsb.Max = 255
hsb.Min = 0

hsb.SmallChange = 1
hsb.LargeChange = 10
End Sub
Private Sub ActualizarEtiqueta(lbl As Label)
lbl.BackColor = &H0
lbl.ForeColor = &HFFFF&
End Sub
Private Sub ActualizarGreen()
    green = hsbGreen.Value
    lblGreendec.Caption = green
    lblGreendec.BackColor = RGB(0, green, 0)
    
    lblGreenHex.Caption = Hex(green)
   lblGreenHex.BackColor = RGB(0, green, 0)
   
   ActualizarColorTexto
End Sub


Private Sub ActualizarRed()
   red = hsbred.Value
   lblreddec.Caption = red
   lblreddec.BackColor = RGB(red, 0, 0)
   
   lblredhex.Caption = Hex(red)
   lblredhex.BackColor = RGB(red, 0, 0)
   
   ActualizarColorTexto
End Sub

Private Sub ActualizarColorTexto()
txtTxto.BackColor = RGB(red, green, blue)
lbldec.Caption = red & "-" & green & "-" & blue
lblhex.Caption = "H" & Hex(blue) & "-" & Hex(green) & "-" & Hex(red)

End Sub

Private Sub ActualizarBlue()
   blue = hsbBlue.Value
   lblbluedec.Caption = blue
   lblbluedec.BackColor = RGB(0, 0, blue)
   
   lblbluehex.Caption = Hex(blue)
   lblbluehex.BackColor = RGB(0, 0, blue)
   
   ActualizarColorTexto
End Sub



Private Sub cmdSlir_Click()
End

End Sub

Private Sub Form_Load()
   txtTxto.Text = "Te Amo Quetzalli"
   'Establece color de fonfo de las etiquetas
   lblRed.BackColor = &HFF&              'Fondo Rojo 255,0,0
   lblgreen.BackColor = &HFF00&          'Fondo verde 0,255,0
   lblblue.BackColor = &HFF0000          'Fondo azul 0,0,255
   
   'asigna Color; a; las; etiquetas; indicadoras; de; Color
   'primario en decimal y hexadecimal
   'lloamada con procedimiento parametro
   
   ActualizarEtiqueta lblreddec
    ActualizarEtiqueta lblredhex
   
   
   'VERDE
   ActualizarEtiqueta lblGreendec
    ActualizarEtiqueta lblGreenHex
 
   
   'Azul
 ActualizarEtiqueta lblbluedec
  ActualizarEtiqueta lblbluehex
   
   'define valores iniciales para las barras de dezplazamiento
   
  scrolli hsbGreen
  scrolli hsbred
  scrolli hsbBlue
   
   End Sub
   
Private Sub hsbBlue_Change()
ActualizarBlue
End Sub

Private Sub hsbBlue_Scroll()
ActualizarBlue
End Sub

Private Sub hsbGreen_Change()
ActualizarGreen
End Sub

Private Sub hsbGreen_Scroll()
ActualizarGreen
End Sub

Private Sub hsbred_Change()
 ActualizarRed
   
End Sub

Private Sub hsbred_Scroll()
ActualizarRed
End Sub

