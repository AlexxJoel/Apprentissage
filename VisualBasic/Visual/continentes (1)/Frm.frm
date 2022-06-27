VERSION 5.00
Begin VB.Form Frm 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   10200
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   19275
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10200
   ScaleWidth      =   19275
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Image img 
      Height          =   9495
      Left            =   0
      Top             =   0
      Width           =   19335
   End
End
Attribute VB_Name = "Frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    img.Stretch = True
    img.MousePointer = 5
    img.Picture = LoadPicture(bandera)
    img.ToolTipText = "Doble clic para regresar o presiona Esc"
    
    Me.BorderStyle = 0
    Me.WindowState = 2
    Me.KeyPreview = True 'ejecutar eventos
    
 
End Sub


Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = 27 Then
        Unload Me
    End If
End Sub


Private Sub img_DblClick()
        Unload Me
End Sub
