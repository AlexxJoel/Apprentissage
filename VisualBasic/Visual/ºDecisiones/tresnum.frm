VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5370
   ClientLeft      =   5310
   ClientTop       =   3030
   ClientWidth     =   4920
   LinkTopic       =   "Form1"
   ScaleHeight     =   5370
   ScaleWidth      =   4920
   Begin VB.TextBox Text3 
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
      TabIndex        =   12
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox Text2 
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
      TabIndex        =   11
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox Text1 
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
      TabIndex        =   10
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Ordena mayor a menor"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3000
      TabIndex        =   9
      Top             =   3960
      Width           =   1575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "&Indica si hay dos iguales"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3000
      TabIndex        =   8
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton Command5 
      Caption         =   "&Diferentes"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3000
      TabIndex        =   7
      Top             =   2040
      Width           =   1575
   End
   Begin VB.CommandButton Command4 
      Caption         =   "&Iguales"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3000
      TabIndex        =   6
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Evalua 1 y 2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3000
      TabIndex        =   5
      Top             =   120
      Width           =   1575
   End
   Begin VB.CommandButton Command6 
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
      Height          =   735
      Left            =   120
      TabIndex        =   4
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   1095
      Left            =   0
      TabIndex        =   3
      Top             =   2520
      Width           =   2775
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      Caption         =   "Edad 3 :"
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
      Left            =   240
      TabIndex        =   2
      Top             =   1680
      Width           =   1095
   End
   Begin VB.Label L4 
      Alignment       =   1  'Right Justify
      Caption         =   "Edad 2 :"
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
      TabIndex        =   1
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "Edad 1 :"
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
      TabIndex        =   0
      Top             =   480
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text >= Text2.Text Then
  If Text1.Text = Text2.Text Then
     Label3.Caption = "Son numeros iguales"
    Else
     Label3.Caption = Text1.Text & "Es mayor que" & Text2.Text
     End If
     
Else
Label3.Caption = Text2.Text & "Es mayor que" & Text1.Text
End If
End Sub

Private Sub Command2_Click()
'revisa que sean números diferentes, y si es así, los ordena de mayor a menor
If Text1.Text <> Text2.Text And Text1.Text <> Text3.Text And Text2.Text <> Text3.Text Then
        'El mayor es el 1
        If Text1.Text > Text2.Text And Text1.Text > Text3.Text Then
            If Text2.Text > Text3.Text Then
                '1,2,3
                Label3.Caption = Text1.Text & ", " & Text2.Text & ", " & Text3.Text
            Else
                '1,3,2
                Label3.Caption = Text1.Text & ", " & Text3.Text & ", " & Text2.Text
            End If
        'el mayor es el 2
        ElseIf Text2.Text > Text1.Text And Text2.Text > Text3.Text Then
            If Text1.Text > Text3.Text Then
                '2,1,3
                Label3.Caption = Text2.Text & ", " & Text1.Text & ", " & Text3.Text
            Else
                '2,3,1
                Label3.Caption = Text2.Text & ", " & Text3.Text & ", " & Text1.Text
            End If
        'el mayor es el 3
        ElseIf Text3.Text > Text1.Text And Text3.Text > Text2.Text Then
            If Text1.Text > Text2.Text Then
                '3,1,2
                Label3.Caption = Text3.Text & ", " & Text1.Text & ", " & Text2.Text
            Else
                '3,2,1
                Label3.Caption = Text3.Text & ", " & Text2.Text & ", " & Text1.Text
            End If
        End If
    Else
        Label3.Caption = "Hay números iguales"
    End If

End Sub

Private Sub Command3_Click()
    'evalua si hay dos numeros repetidos, indica cuales son
    If Text1.Text = Text2.Text Then
        Label3.Caption = "El primer y segundo número son iguales: " & Text1.Text
    ElseIf Text1.Text = Text3.Text Then
        Label3.Caption = "El primer y tercer número son iguales: " & Text3.Text
    ElseIf Text2.Text = Text3.Text Then
        Label3.Caption = "El segundo y tercer número son iguales: " & Text2.Text
    Else
        Label3.Caption = "No hay numeros repetidos"
    End If

End Sub

Private Sub Command4_Click()
    'Evalua si los tres numeros son iguales o no
    If Text1.Text = Text2.Text And Text1.Text = Text3.Text Then
        Label3.Caption = "Los tres numeros son iguales"
    Else
        Label3.Caption = "Los tres numeros NO son iguales"
    End If

End Sub

Private Sub Command5_Click()
'Evalua si los tres numeros son diferentes o no
    If Text1.Text <> Text2.Text And Text1.Text <> Text3.Text And Text2.Text <> Text3.Text Then
        Label3.Caption = "Los tres numeros SI son numeros diferentes"
    Else
        Label3.Caption = "Los tres numeros NO son numeros diferentes"
    End If
End Sub

Private Sub Command6_Click()
    End
End Sub

