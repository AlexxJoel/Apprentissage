VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8715
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6165
   LinkTopic       =   "Form1"
   ScaleHeight     =   8715
   ScaleWidth      =   6165
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox cmbPais 
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
      Left            =   3000
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   960
      Width           =   1935
   End
   Begin VB.ComboBox cmbCntnnte 
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
      Top             =   960
      Width           =   1935
   End
   Begin VB.Image img 
      Height          =   4095
      Left            =   360
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   5415
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Ubicacion:"
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
      TabIndex        =   10
      Top             =   3600
      Width           =   4815
   End
   Begin VB.Label lblMnda 
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
      Left            =   1440
      TabIndex        =   9
      Top             =   3120
      Width           =   2055
   End
   Begin VB.Label lblIdma 
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
      TabIndex        =   8
      Top             =   2160
      Width           =   2055
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
      TabIndex        =   7
      Top             =   2160
      Width           =   2055
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Moneda:"
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
      Left            =   1680
      TabIndex        =   6
      Top             =   2640
      Width           =   1455
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Idioma:"
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
      TabIndex        =   5
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label Label3 
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
      TabIndex        =   4
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Pais:"
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
      TabIndex        =   2
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Continente:"
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
      Top             =   360
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Bogota, Lima, Buenos, Habana, Berlin, Monaco, Roma, Atenas, Cairo, Abuja, Jartum, Lome As String


Private Sub afr()
    Select Case cmbPais.ListIndex
    Case 0
    lblCptal.Caption = "El Cairo"
    lblIdma.Caption = "Árabe estándar moderno"
    lblMnda.Caption = "Libra egipcia"
    img.Picture = LoadPicture(Cairo)
    Case 1
    lblCptal.Caption = "Abuja"
    lblIdma.Caption = "ingles  "
    lblMnda.Caption = "Naira"
    img.Picture = LoadPicture(Abuja)
    Case 2
    lblCptal.Caption = "Jartum"
    lblIdma.Caption = "Arabe   "
    lblMnda.Caption = "Libra sudanesa"
    img.Picture = LoadPicture(Jartum)
    Case 3
    lblCptal.Caption = "Lomé"
    lblIdma.Caption = "frances  "
    lblMnda.Caption = "Franco CFA "
    img.Picture = LoadPicture(Lome)
    End Select
End Sub
Private Sub eur()
    Select Case cmbPais.ListIndex
    Case 0
    lblCptal.Caption = "Berlín"
    lblIdma.Caption = "alemán"
    lblMnda.Caption = "euro"
    img.Picture = LoadPicture(Berlin)
    Case 1
    lblCptal.Caption = "Mónaco"
    lblIdma.Caption = "frances  e"
    lblMnda.Caption = "euro"
    img.Picture = LoadPicture(Monaco)
    Case 2
    lblCptal.Caption = "Roma"
    lblIdma.Caption = "italiano   "
    lblMnda.Caption = "euro"
    img.Picture = LoadPicture(Roma)
    Case 3
    lblCptal.Caption = "Atenas"
    lblIdma.Caption = "griego  "
    lblMnda.Caption = "euro"
    img.Picture = LoadPicture(Atenas)
    End Select
End Sub
Private Sub ame()
    Select Case cmbPais.ListIndex
    Case 0
    lblCptal.Caption = "Bogotá"
    lblIdma.Caption = "Español"
    lblMnda.Caption = "Peso colombiano"
    img.Picture = LoadPicture(Bogota)
    Case 1
    lblCptal.Caption = "Lima"
    lblIdma.Caption = "español  "
    lblMnda.Caption = "Nuevo Sol"
    img.Picture = LoadPicture(Lima)
    Case 2
    lblCptal.Caption = "Buenos Aires"
    lblIdma.Caption = "castellano   "
    lblMnda.Caption = "Peso argentino"
    img.Picture = LoadPicture(Buenos)
    Case 3
    lblCptal.Caption = "La Habana"
    lblIdma.Caption = "español  "
    lblMnda.Caption = "Peso Cubano"
    img.Picture = LoadPicture(Habana)
    End Select
End Sub
Private Sub hola()
Label3.Visible = True
Label4.Visible = True
Label5.Visible = True
Label9.Visible = True
lblCptal.Visible = True
lblIdma.Visible = True
lblMnda.Visible = True
End Sub
Private Sub cmbCntnnte_Click()
lblCptal.Caption = ""
lblIdma.Caption = ""
lblMnda.Caption = ""
img.Picture = LoadPicture()


cmbPais.Enabled = True
cmbPais.Clear

Select Case cmbCntnnte.ListIndex
Case 0
With cmbPais

.AddItem "Colombia "
.AddItem "Perú"
.AddItem "Argentina "
.AddItem "Cuba "
End With

Case 1
With cmbPais
.AddItem "Alemania"
.AddItem "Mónaco"
.AddItem "Italia"
.AddItem "Grecia"
End With
Case 2
With cmbPais
.AddItem "Egipto"
.AddItem "Nigeria"
.AddItem "Sudán"
.AddItem "Togo"
End With
End Select


End Sub

Private Sub cmbPais_Click()
hola

Select Case cmbCntnnte.ListIndex
Case 0
ame
Case 1
eur
Case 2
afr


End Select


End Sub

Private Sub Form_Load()
cmbPais.Enabled = False
Label3.Visible = False
Label4.Visible = False
Label5.Visible = False
Label9.Visible = False
lblCptal.Visible = False
lblIdma.Visible = False
lblMnda.Visible = False

With cmbCntnnte
.AddItem "América"
.AddItem "Europa"
.AddItem " África "
End With

Bogota = App.Path & "\colombia.jpg"
Lima = App.Path & "\peru.jpg"
Buenos = App.Path & "\argentina.jpg"
Habana = App.Path & "\cuba.jpg"

Berlin = App.Path & "\alemania.jpg"
Monaco = App.Path & "\monaco.jpg"
Roma = App.Path & "\italia.jpg"
Atenas = App.Path & "\grecia.jpg"

Cairo = App.Path & "\egypto.jpg"
Abuja = App.Path & "\nigeria.jpg"
Jartum = App.Path & "\sudan.jpg"
Lome = App.Path & "\togo.jpg"







End Sub
