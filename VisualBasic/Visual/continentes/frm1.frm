VERSION 5.00
Begin VB.Form frm1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   9570
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   16350
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9570
   ScaleWidth      =   16350
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Image img1 
      Height          =   9615
      Left            =   0
      Top             =   0
      Width           =   16335
   End
End
Attribute VB_Name = "frm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    img1.Stretch = True
    img1.MousePointer = 5
    img1.Picture = LoadPicture(mapa)
    img1.ToolTipText = "Doble clic para regresar o presiona Esc"
    Me.BorderStyle = 0
    Me.WindowState = 2
    Me.KeyPreview = True 'ejecutar eventos
    
 
End Sub


Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = 27 Then
        Unload Me
    End If
End Sub


Private Sub img1_DblClick()
        Unload Me
End Sub

