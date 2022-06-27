VERSION 5.00
Begin VB.Form frm2 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   9720
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   16395
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9720
   ScaleWidth      =   16395
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Image img2 
      Height          =   9855
      Left            =   120
      Top             =   240
      Width           =   16455
   End
End
Attribute VB_Name = "frm2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    img2.Stretch = True
    img2.MousePointer = 5
    img2.Picture = LoadPicture(repre)
    img2.ToolTipText = "Doble clic para regresar o presiona Esc"
    Me.BorderStyle = 0
    Me.WindowState = 2
    Me.KeyPreview = True 'ejecutar eventos
    
 
End Sub


Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = 27 Then
        Unload Me
    End If
End Sub


Private Sub img2_DblClick()
        Unload Me
End Sub

