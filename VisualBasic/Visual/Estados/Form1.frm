VERSION 5.00
Begin VB.Form frmEstdo 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Estados"
   ClientHeight    =   7875
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5730
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7875
   ScaleWidth      =   5730
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00C0FFFF&
      Height          =   2895
      Left            =   240
      ScaleHeight     =   2835
      ScaleWidth      =   5115
      TabIndex        =   12
      Top             =   3600
      Width           =   5175
      Begin VB.Image imgFtos 
         Height          =   2535
         Left            =   120
         Stretch         =   -1  'True
         Top             =   120
         Width           =   4815
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Entidades Federativas"
      Height          =   2655
      Left            =   240
      TabIndex        =   3
      Top             =   120
      Width           =   5055
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
         Left            =   120
         Style           =   2  'Dropdown List
         TabIndex        =   4
         Top             =   840
         Width           =   2055
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
         Left            =   120
         TabIndex        =   11
         Top             =   240
         Width           =   1215
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
         Left            =   120
         TabIndex        =   10
         Top             =   1560
         Width           =   1215
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
         Left            =   120
         TabIndex        =   9
         Top             =   2160
         Width           =   1575
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Extension km²:"
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
         Left            =   2760
         TabIndex        =   8
         Top             =   240
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
         Left            =   2760
         TabIndex        =   7
         Top             =   720
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
         Left            =   2760
         TabIndex        =   6
         Top             =   1320
         Width           =   1815
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
         Left            =   2760
         TabIndex        =   5
         Top             =   2160
         Width           =   2175
      End
   End
   Begin VB.CommandButton cmdCmplta 
      Caption         =   "Pantalla  completa"
      Height          =   615
      Left            =   3120
      TabIndex        =   2
      Top             =   6840
      Width           =   2175
   End
   Begin VB.CommandButton cmdSlir 
      Caption         =   "Salir"
      Height          =   615
      Left            =   360
      TabIndex        =   1
      Top             =   6840
      Width           =   2295
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
      TabIndex        =   0
      Top             =   3000
      Width           =   4815
   End
End
Attribute VB_Name = "frmEstdo"
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
        Dim Map As String
        
        Case 0
            lblCptal.Caption = "Cuernavaca"
            lblExten.Caption = "4 950 km²"
            lblPrsnas.Caption = Format("1777227", "###,###")
            archivo = "morelos.jpg"
        
        Case 1
            lblCptal.Caption = "Puebla"
            lblExten.Caption = "34.251 km²"
            lblPrsnas.Caption = "1 576 millones "
            archivo = "Puebla.jpg"
        Case 2
            lblCptal.Caption = "Xalapa"
            lblExten.Caption = " 241 km²"
            lblPrsnas.Caption = " 428 323 millones"
            archivo = "veracruz.jpg"
        Case 3
            lblCptal.Caption = "colima"
            lblExten.Caption = " 5.625 km²"
            lblPrsnas.Caption = " 650 555 millones"
            archivo = "colima.jpg"
        Case 4
        
            lblCptal.Caption = "La paz "
            lblExten.Caption = " 75 675 km²"
            lblPrsnas.Caption = " 542 695 millones "
            archivo = "sur.jpg"
        Case 5
        
            lblCptal.Caption = "merida"
            lblExten.Caption = " 43,379 km²"
            lblPrsnas.Caption = " 2 097 millones "
            archivo = "yucatan.jpg"
        
        End Select

    Mapa = App.Path & "\" & archivo
    imgFtos.Picture = LoadPicture(Mapa)
End Sub

Private Sub cmdCmplta_Click()
frmMpa.Show

End Sub

Private Sub cmdSlir_Click()
Dim resp As String
resp = MsgBox("Realmente quieres salir del prorama", vbQuestion + vbYesNo, "Salir")
If resp = vbYes Then
End
End If
End Sub

Private Sub Form_Load()
    Label4.Visible = False
    lblExten.Visible = False
    Label2.Visible = False
    lblCptal.Visible = False
    Label3.Visible = False
    lblPrsnas.Visible = False
    Label5.Visible = False

    cmbEstdo.ToolTipText = "Selecciona un estado , haz click"
     imgFtos.ToolTipText = "Doble click para ver en pantalla completa"
     
     imgFtos.MousePointer = 5
 
    With cmbEstdo
        .AddItem "Morelos"
        .AddItem "Puebla"
        .AddItem "Veracruz"
        .AddItem "Colima"
        .AddItem "Baja California Sur "
        .AddItem "Yucatan"
    End With
End Sub



Private Sub imgFtos_DblClick()
frmMpa.Show

End Sub
