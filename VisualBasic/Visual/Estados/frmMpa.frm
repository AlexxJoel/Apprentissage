VERSION 5.00
Begin VB.Form frmMpa 
   BorderStyle     =   0  'None
   Caption         =   "Mapa"
   ClientHeight    =   6795
   ClientLeft      =   6690
   ClientTop       =   3045
   ClientWidth     =   8130
   LinkTopic       =   "Form1"
   ScaleHeight     =   6795
   ScaleWidth      =   8130
   ShowInTaskbar   =   0   'False
   WindowState     =   2  'Maximized
   Begin VB.Image imgMpa 
      Height          =   6735
      Left            =   0
      Top             =   0
      Width           =   8055
   End
End
Attribute VB_Name = "frmMpa"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    imgMpa.Stretch = True
    imgMpa.MousePointer = 5
    imgMpa.Picture = LoadPicture(Mapa)
   imgMpa.ToolTipText = "Doble clic para regresar o presiona Esc"
    
    Me.BorderStyle = 0
    Me.WindowState = 2
    Me.KeyPreview = True 'ejecutar eventos
    
 
End Sub


Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = 27 Then
        Unload Me
    End If
End Sub

Private Sub imgMpa_DblClick()
    Unload Me
End Sub
