VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6705
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5610
   LinkTopic       =   "Form1"
   ScaleHeight     =   6705
   ScaleWidth      =   5610
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox cmbEstdo 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   360
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   1080
      Width           =   2055
   End
   Begin VB.Image imgFtos 
      Height          =   2655
      Left            =   360
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   4815
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Imagen de su ubicacion"
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
      Left            =   360
      TabIndex        =   8
      Top             =   3000
      Width           =   4815
   End
   Begin VB.Label lblPrsnas 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3000
      TabIndex        =   7
      Top             =   2400
      Width           =   2175
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Numero de habitantes:"
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
      TabIndex        =   6
      Top             =   1560
      Width           =   1815
   End
   Begin VB.Label lblExten 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3000
      TabIndex        =   5
      Top             =   960
      Width           =   2175
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Extension(km2):"
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
      Left            =   3000
      TabIndex        =   4
      Top             =   480
      Width           =   1815
   End
   Begin VB.Label lblCptal 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   3
      Top             =   2400
      Width           =   1575
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Capital:"
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
      Left            =   360
      TabIndex        =   2
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Estado:"
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
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Cuernavaca, Puebla, Veracruz, Colima, Sur, Yucatan As String

Private Sub cmbEstdo_Click()
Label4.Visible = True
lblExten.Visible = True
Label2.Visible = True
lblCptal.Visible = True
Label3.Visible = True
lblPrsnas.Visible = True
Label5.Visible = True
imgFtos.Visible = True

Select Case cmbEstdo.ListIndex
Case 0
lblCptal.Caption = "Cuernavaca"
lblExten.Caption = "4 950 km²"
lblPrsnas.Caption = "1 777 227 millones"
imgFtos.Picture = LoadPicture(Cuernavaca)
Case 1
lblCptal.Caption = "Puebla"
lblExten.Caption = "34.251 km²"
lblPrsnas.Caption = "1 576 millones "
imgFtos.Picture = LoadPicture(Puebla)
Case 2
lblCptal.Caption = "Xalapa"
lblExten.Caption = " 241 km²"
lblPrsnas.Caption = " 428 323 millones"
imgFtos.Picture = LoadPicture(Veracruz)
Case 3
lblCptal.Caption = "colima"
lblExten.Caption = " 5.625 km²"
lblPrsnas.Caption = " 650 555 millones"
imgFtos.Picture = LoadPicture(Colima)
Case 4
lblCptal.Caption = "La paz "
lblExten.Caption = " 75 675 km²"
lblPrsnas.Caption = " 542 695 millones "
imgFtos.Picture = LoadPicture(Sur)
Case 5
lblCptal.Caption = "merida"
lblExten.Caption = " 43,379 km²"
lblPrsnas.Caption = " 2 097 millones "
imgFtos.Picture = LoadPicture(Yucatan)
End Select






End Sub

Private Sub Form_Load()
Label4.Visible = False
lblExten.Visible = False
Label2.Visible = False
lblCptal.Visible = False
Label3.Visible = False
lblPrsnas.Visible = False
Label5.Visible = False
imgFtos.Visible = False


With cmbEstdo
.AddItem "Morelos"
.AddItem "Puebla"
.AddItem "Veracruz"
.AddItem "Colima"
.AddItem "Baja California Sur "
.AddItem "Yucatan"
End With
 
   Cuernavaca = App.Path & "\morelos.jpg"
    Puebla = App.Path & "\Puebla.jpg"
    Veracruz = App.Path & "\veracruz.jpg"
    Colima = App.Path & "\colima.jpg"
    Sur = App.Path & "\sur.jpg"
    Yucatan = App.Path & "\yucatan.jpg"
    
 

End Sub
