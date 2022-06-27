VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Areas de Figuras Geométricas.  Versión 1.0"
   ClientHeight    =   8475
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9315
   LinkTopic       =   "Form1"
   ScaleHeight     =   8475
   ScaleWidth      =   9315
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdClclar 
      Caption         =   "&Calcular"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5640
      TabIndex        =   20
      Top             =   4920
      Width           =   3375
   End
   Begin VB.CommandButton cmdNvo 
      Caption         =   "&Nuevo"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5640
      TabIndex        =   19
      Top             =   5760
      Width           =   3375
   End
   Begin VB.CommandButton cmdSlir 
      Caption         =   "&Salir"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5640
      TabIndex        =   18
      Top             =   6600
      Width           =   3375
   End
   Begin VB.Frame fraRsltdo 
      Caption         =   "Resultado"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   480
      TabIndex        =   14
      Top             =   6000
      Width           =   4935
      Begin VB.TextBox txtRsltdo 
         Alignment       =   1  'Right Justify
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
         Left            =   2640
         Locked          =   -1  'True
         TabIndex        =   15
         Top             =   480
         Width           =   2055
      End
      Begin VB.Label lblRsltdo 
         Alignment       =   1  'Right Justify
         Caption         =   "Resultado"
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
         Left            =   240
         TabIndex        =   16
         Top             =   600
         Width           =   2175
      End
   End
   Begin VB.Frame fraEntrda 
      Caption         =   "Datos de Entrada"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2535
      Left            =   480
      TabIndex        =   7
      Top             =   3360
      Width           =   4935
      Begin VB.TextBox txtDto3 
         Alignment       =   1  'Right Justify
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
         Left            =   2640
         TabIndex        =   13
         Top             =   1680
         Width           =   2055
      End
      Begin VB.TextBox txtDto2 
         Alignment       =   1  'Right Justify
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
         Left            =   2640
         TabIndex        =   11
         Top             =   1080
         Width           =   2055
      End
      Begin VB.TextBox txtDto1 
         Alignment       =   1  'Right Justify
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
         Left            =   2640
         TabIndex        =   9
         Top             =   480
         Width           =   2055
      End
      Begin VB.Label lblDto3 
         Alignment       =   1  'Right Justify
         Caption         =   "Dato3"
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
         Left            =   240
         TabIndex        =   12
         Top             =   1800
         Width           =   2175
      End
      Begin VB.Label lblDto2 
         Alignment       =   1  'Right Justify
         Caption         =   "Dato2"
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
         Left            =   240
         TabIndex        =   10
         Top             =   1200
         Width           =   2175
      End
      Begin VB.Label lblDto1 
         Alignment       =   1  'Right Justify
         Caption         =   "Dato1"
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
         Left            =   240
         TabIndex        =   8
         Top             =   600
         Width           =   2175
      End
   End
   Begin VB.Frame fraFgras 
      Caption         =   "Figuras Geométricas"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2895
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   4935
      Begin VB.OptionButton optPlgno 
         Caption         =   "Poligono Regular"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   2640
         TabIndex        =   6
         Top             =   1800
         Width           =   2055
      End
      Begin VB.OptionButton optRctnglo 
         Caption         =   "Rectángulo"
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
         Left            =   2640
         TabIndex        =   5
         Top             =   1200
         Width           =   2055
      End
      Begin VB.OptionButton optCrclo 
         Caption         =   "Circulo"
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
         Left            =   2640
         TabIndex        =   4
         Top             =   600
         Width           =   2055
      End
      Begin VB.OptionButton optTrpcio 
         Caption         =   "Trapecio"
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
         TabIndex        =   3
         Top             =   1800
         Width           =   2055
      End
      Begin VB.OptionButton optRmbo 
         Caption         =   "Rombo"
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
         TabIndex        =   2
         Top             =   1200
         Width           =   2055
      End
      Begin VB.OptionButton optTrnglo 
         Caption         =   "Triangulo"
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
         Top             =   600
         Width           =   2055
      End
   End
   Begin VB.Label lblMnsje 
      Alignment       =   2  'Center
      BackColor       =   &H00404040&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Autor: Aqui va su nombre"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   480
      TabIndex        =   17
      Top             =   7680
      Width           =   8535
   End
   Begin VB.Image imgPlgno 
      Height          =   2730
      Left            =   5640
      Picture         =   "Figuras Geometricas.frx":0000
      Stretch         =   -1  'True
      Top             =   480
      Width           =   3330
   End
   Begin VB.Image imgRctnglo 
      Height          =   2730
      Left            =   5640
      Picture         =   "Figuras Geometricas.frx":2233
      Stretch         =   -1  'True
      Top             =   720
      Width           =   3330
   End
   Begin VB.Image imgCrclo 
      Height          =   2730
      Left            =   5640
      Picture         =   "Figuras Geometricas.frx":332D
      Stretch         =   -1  'True
      Top             =   480
      Width           =   3330
   End
   Begin VB.Image imgTrpcio 
      Height          =   2730
      Left            =   5640
      Picture         =   "Figuras Geometricas.frx":58E8
      Stretch         =   -1  'True
      Top             =   480
      Width           =   3330
   End
   Begin VB.Image imgRmbo 
      Height          =   2730
      Left            =   5640
      Picture         =   "Figuras Geometricas.frx":C821
      Stretch         =   -1  'True
      Top             =   600
      Width           =   3330
   End
   Begin VB.Image imgTrnglo 
      Height          =   2730
      Left            =   5640
      Picture         =   "Figuras Geometricas.frx":E7FC
      Stretch         =   -1  'True
      Top             =   600
      Width           =   3330
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public figuraSeleccionada As Integer

Public Sub OcultaImagenes()

 'Oculta las imagenes
    imgTrnglo.Visible = False
    imgRmbo.Visible = False
    imgTrpcio.Visible = False
    imgCrclo.Visible = False
    imgRctnglo.Visible = False
    imgPlgno.Visible = False


End Sub


Private Sub cmdClclar_Click()

Select Case figuraSeleccionada
 Case 0 'Triangulo
   
   txtRsltdo.Text = txtDto1.Text * txtDto2.Text / 2
 
 Case 1 'Rombo
 
   txtRsltdo.Text = txtDto1.Text * txtDto2.Text / 2

 Case 2 'Trapecio
 
 txtRsltdo.Text = Val(txtDto1.Text) + Val(txtDto2.Text) * txtDto3.Text / 2

 Case 3 'Circulo
 
 txtRsltdo.Text = 3.1416 * (txtDto1.Text) ^ 2
 
 Case 4 'Rectangulo
 
 txtRsltdo.Text = txtDto1.Text * txtDto3.Text
 
 
 
 Case 5 'Poligono
 
  txtRsltdo.Text = txtDto1.Text * txtDto3.Text / 2

End Select



End Sub

Private Sub cmdNvo_Click()
    'Habilita frame de opciones
    fraFgras.Enabled = True
    
    'Habilita boton calcular
    cmdClclar.Enabled = True
    
    'Ocultar frame datos de entrada
    
    fraEntrda.Visible = False
    
    'Ocultar Frame resultados
    
    fraRsltdo.Visible = False
    
    'Llama a las subrutina para ocultar imagenes
    
    OcultaImagenes
    
    'Limpiar datos y resultados
    
    txtDto1.Text = ""
    txtDto2.Text = ""
    txtDto3.Text = ""
    
    txtRsltdo.Text = ""
    
    
End Sub

Private Sub cmdSlir_Click()
End

End Sub

Private Sub Form_Load()
    'Oculta los frames
    fraEntrda.Visible = False
    fraRsltdo.Visible = False
    fraFgras.Enabled = False
    
   
    
    'Inhabilita boton calcular
    cmdClclar.Enabled = False
    
    'Llama a la subrutina para ocultar imagenes
    
    OcultaImagenes
    
    'Deselecciona los botones de opcion
    optTrnglo.Value = False
    optRmbo.Value = False
    optTrpcio.Value = False
    optCrclo.Value = False
    optRctnglo.Value = False
    optPlgno.Value = False
End Sub

Private Sub optCrclo_Click()
'Hacer visible el frame de entrada
    fraEntrda.Visible = True
    fraRsltdo.Visible = True
    imgCrclo.Visible = True
        
    'Cambiar leyendas de datos
    lblDto1.Caption = "Radio:"
    
    'Oculta lbl  y txt que no c usa
    
    lblDto2.Visible = False
    lblDto3.Visible = False
    txtDto2.Visible = False
    txtDto3.Visible = False
    
    
    
    'Asigna valor a la variable publica
    
    figuraSeleccionada = 3
End Sub

Private Sub optPlgno_Click()
'Hacer visible el frame de entrada
    fraEntrda.Visible = True
    fraRsltdo.Visible = True
    imgPlgno.Visible = True
        
    'Cambiar leyendas de datos
    lblDto1.Caption = "Número de lados:"
    
    lblDto3.Caption = "Apotema:"
    
    'Oculta lbl  y txt que no c usa
    
    txtDto2.Visible = False
    lblDto2.Visible = False
    
    
    
    'Asigna valor a la variable publica
    
    figuraSeleccionada = 5
End Sub

Private Sub optRctnglo_Click()
    'Hacer visible el frame de entrada
    fraEntrda.Visible = True
    fraRsltdo.Visible = True
    imgRctnglo.Visible = True
        
    'Cambiar leyendas de datos
    lblDto1.Caption = "Base:"
    lblDto3.Caption = " Altura "
    
    'Ocultar label y text que no se ocupan
    lblDto2.Visible = False
    txtDto2.Visible = False
    
    'Asigna valor a la variable publica
    
    figuraSeleccionada = 4
End Sub

Private Sub optRmbo_Click()
    'Hacer visible el frame de entrada
    fraEntrda.Visible = True
    fraRsltdo.Visible = True
    imgRmbo.Visible = True
        
    'Cambiar leyendas de datos
    lblDto1.Caption = "Diagonal Mayor:"
    lblDto2.Caption = "Diagonal Menor:"
    
    'Ocultar label y text que no se ocupan
    lblDto3.Visible = False
    txtDto3.Visible = False
    
    'Asigna valor a la variable publica
    
    figuraSeleccionada = 1
End Sub

Private Sub optTrnglo_Click()
    'Hacer visible el frame de entrada
    fraEntrda.Visible = True
    fraRsltdo.Visible = True
    imgTrnglo.Visible = True
        
    'Cambiar leyendas de datos
    lblDto1.Caption = "Base:"
    lblDto2.Caption = "Altura:"
    
    'Ocultar label y text que no se ocupan
    lblDto3.Visible = False
    txtDto3.Visible = False
    
    'Asigna valor a la variable publica
    
    figuraSeleccionada = 0
End Sub

Private Sub optTrpcio_Click()
'Hacer visible el frame de entrada
    fraEntrda.Visible = True
    fraRsltdo.Visible = True
    imgTrpcio.Visible = True
        
    'Cambiar leyendas de datos
    lblDto1.Caption = "Base Mayor:"
    lblDto2.Caption = "Base menor:"
    lblDto3.Caption = "Altura: "
    
    
    'Asigna valor a la variable publica
    
    figuraSeleccionada = 2
End Sub


