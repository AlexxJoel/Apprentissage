VERSION 5.00
Begin VB.Form frmPis 
   Caption         =   "Continentes"
   ClientHeight    =   6840
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10875
   LinkTopic       =   "Form1"
   ScaleHeight     =   6840
   ScaleWidth      =   10875
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00FFFFC0&
      Height          =   2775
      Left            =   120
      ScaleHeight     =   2715
      ScaleWidth      =   10635
      TabIndex        =   17
      Top             =   3480
      Width           =   10695
      Begin VB.Image imgMpa 
         Height          =   2655
         Left            =   120
         Stretch         =   -1  'True
         Top             =   0
         Width           =   3255
      End
      Begin VB.Image imgBndra 
         Height          =   2655
         Left            =   3600
         Stretch         =   -1  'True
         Top             =   0
         Width           =   3255
      End
      Begin VB.Image imgRpre 
         Height          =   2655
         Left            =   7080
         Stretch         =   -1  'True
         Top             =   0
         Width           =   3255
      End
   End
   Begin VB.TextBox txtR 
      BeginProperty Font 
         Name            =   "News706 BT"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7200
      MultiLine       =   -1  'True
      TabIndex        =   16
      Top             =   3000
      Width           =   3135
   End
   Begin VB.CommandButton cmdSlir 
      Caption         =   "SALIR"
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
      TabIndex        =   15
      Top             =   6240
      Width           =   10215
   End
   Begin VB.TextBox txtCstmbre 
      BeginProperty Font 
         Name            =   "News706 BT"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   5280
      MultiLine       =   -1  'True
      TabIndex        =   11
      Top             =   840
      Width           =   3135
   End
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
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa"
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
      Left            =   600
      TabIndex        =   14
      Top             =   3000
      Width           =   2655
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Representativo"
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
      Left            =   7440
      TabIndex        =   13
      Top             =   2400
      Width           =   2655
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Bandera"
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
      Left            =   4080
      TabIndex        =   12
      Top             =   3000
      Width           =   2655
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Costumbres:"
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
      Left            =   5760
      TabIndex        =   10
      Top             =   360
      Width           =   2175
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
      Left            =   4320
      TabIndex        =   9
      Top             =   2520
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
      Left            =   8640
      TabIndex        =   8
      Top             =   1080
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
      Top             =   2280
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
      Left            =   4680
      TabIndex        =   6
      Top             =   1800
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
      Left            =   9120
      TabIndex        =   5
      Top             =   480
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
      Left            =   600
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
Attribute VB_Name = "frmPis"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub afr()
    Select Case cmbPais.ListIndex
    
        Case 0
            lblCptal.Caption = "El Cairo"
            lblIdma.Caption = "�rabe est�ndar moderno"
            lblMnda.Caption = "Libra egipcia"
            txtCstmbre.Text = "comida:Baba ghannoush: Pur� de berenjenas con ajo.Bamia: Ocra, planta de origen egipcio, cocida con salsa de tomate muy espesa.Fatta: Plato de carne o pollo, mezclado con capas de pan seco empapado en caldo, arroz, ajo y vinagre y cubierto con yogurt, nueces y pasas, todo gratinado al horno.Fetir: Pizza egipcia, que puede ser dulce o salada, casi siempre preparada frente al p�blico.artesanias:Papiros egipcios,Escarabjos azules egipcios,Ojo Turco Luxor,Durbaka Alexandria,Pintura:Inji Aflatoun fue una pintora y activista del movimiento feminista egipcia. Fue la �vocera m�s destacada del movimiento marxista, progresivo, nacionalista y feminista de fines de los a�os 1940"
            txtR.Text = "La Gran Esfinge de Giza"
            repres = "Regipto.jpg"
            ban = "Begipto.jpg"
            archivo = "Megipto.jpg"
            
        Case 1
            lblCptal.Caption = "Abuja"
            lblIdma.Caption = "ingles  "
            lblMnda.Caption = "Naira"
            txtCstmbre.Text = "Comida:Nigerian Fried Rice.Jollof Rice With Chicken.Melon Seed And Beef 'soup' (egusi),Rich Beef And Vegetable Stew (efo Riro),artesanias:esculturas y m�scaras, collares y joyas, telas pintadas, cuadros de diferentes tipos, etc.pintura:Nike Davies - Okundaye, Esuna artista y dise�adora textil famosa por sus�batik�talleres de te�ido y te�ido y por su elaborado y complejo dise�o de arte. Sus obras presentan escenas de la vida cotidiana de Nigeria, en colores v�vidos e inolvidables."
            txtR.Text = "bosque sagrado de Osun-Osogbo"
            repres = "Rnigeria.jpg"
            ban = "Bnigeria.jpg"
            archivo = "Mnigeria.jpg"
           
        Case 2
            lblCptal.Caption = "Jartum"
            lblIdma.Caption = "Arabe   "
            lblMnda.Caption = "Libra sudanesa"
            txtCstmbre.Text = "comida:La cocina�sudanesa�tiene como base la fasoolinya un guiso de chauchas (jud�as) servido con pan y ma�z o mijo. Tambi�n tiene plato hechos con carne, como el kibda (h�gado), el shoya carne a la barbacoa, kebabs, kalawi ri�ones, lahma sopa de carne y gammonia est�mago de oveja guisado.artesanias:Cester�a,Recipientes y �tiles dom�sticos,Contraventana�,IbibioAngola,pintura:Rashid Diab�es un pintor�sudan�s.Se licenci� en la Escuela de Bellas Artes de�Jart�n�doctor�ndose en la�Universidad Complutense�en�1991. En 1999 regres� a Jart�n para trabajar como profesor y fund� un centro art�tisco"
            txtR.Text = "El mar rojo"
            repres = "Rsudan.jpg"
            ban = "Bsudan.jpg"
            archivo = "Msudan.jpg"
           
         Case 3
            lblCptal.Caption = "Lom�"
            lblIdma.Caption = "frances  "
            lblMnda.Caption = "Franco CFA "
            txtCstmbre.Text = "(comida:Los platos m�s populares y t�picos son el koliko, los bu�uelos de jud�as y de pl�tanos macho, el abobo (pinchos de caracoles), el egbo pinon (cabra ahumada), y el koklo m�m� (pollo a la plancha con salsa picante,�artesanias:La estatua Ewe se caracteriza por su famosa estatuilla que ilustran la adoraci�n de los gemelos, los ib�ji. Las esculturas y trofeos de caza se utilizan en lugar de las m�scaras africanas m�s ubicuas. Los talladores de madera de Kloto son famosos por sus cadenas de matrimonio: dos personas est�n unidos por anillos procedentes de una sola pieza de madera.pintura:Paul Ahyi�(15 de enero de 1930 � 4 de enero de 20101) fue un�artista,�escultor,�arquitecto,�pintor,�dise�ador de interiores�y�escritor�togol�s. Ahyi est� acreditado como el autor de la�bandera de Togo)"
            txtR.Text = "Fafa Island"
            repres = "Rtogo.jpg"
            ban = "Btogo.jpg"
            archivo = "Mtogo.jpg"
            
    End Select
     repre = App.Path & "\" & repres
    imgRpre.Picture = LoadPicture(repre)
      
    bandera = App.Path & "\" & ban
    imgBndra.Picture = LoadPicture(bandera)
      
      
    mapa = App.Path & "\" & archivo
    imgMpa.Picture = LoadPicture(mapa)
    
    
End Sub
Private Sub eur()
    Select Case cmbPais.ListIndex
        Case 0
            lblCptal.Caption = "Berl�n"
            lblIdma.Caption = "alem�n"
            lblMnda.Caption = "euro"
            txtCstmbre.Text = "comidas:Eisbein. Entre todas las carnes que existen, los�alemanes�tienen especial predilecci�n por el cerdo.Nordseekrabben. �A que no te imaginabas que pod�a haber un plato de la cocina�alemana�a base da gambas? .Kartoffelsuppe.Pretzels.artesanias:Bavaria.Westerwald.Meissen.Zurich.pintura:Hans Holbein el Joven fue un pintor, grabador e impresor alem�n que se enmarca en el estilo llamado Renacimiento n�rdico. Es conocido sobre todo como uno de los maestros del retrato del siglo XVI"
            txtR.Text = "Neuschwanstein"
            repres = "Ralemania.jpg"
            ban = "Balemania.jpg"
            archivo = "Malemania.jpg"
            
        Case 1
            lblCptal.Caption = "M�naco"
            lblIdma.Caption = "frances  e"
            lblMnda.Caption = "euro"
            txtCstmbre.Text = "comidas:Stoca,fiBarbagiuan Socca,Espagueti a la Monaguesca�,artesanias:Artesania Uzbeka,�andutti,cuero,barro,pintura:Philippe Pastor (nacido en 1961) es un artista monegasco.�Pintor-expresionista�y escultor abstracto, sus obras han sido expuestas en todo el mundo, en Europa, �frica, Asia y Estados Unidos. Particip� dos veces en la�Bienal de Venecia, en el 2007 y el 2009 y represent� a la escena art�stica monegasca en la Exposici�n Universal�Expo 2015 de Mil�n."
             txtR.Text = "Jardon Exotico de Monaco"
            repres = "Rmonaco.jpg"
            ban = "Bmonaco.jpg"
            archivo = "Mmonaco.jpg"
            
        Case 2
            lblCptal.Caption = "Roma"
            lblIdma.Caption = "italiano   "
            lblMnda.Caption = "euro"
            txtCstmbre.Text = "comida:Lasagna.Pan genov�s con aceitunas.La Piadina.La Bistecca alla fiorentina es una�comida�t�pica del centro de�Italia.artesanias:Murano y las mascaras de Venecia, la joyer�a y bisuter�a confeccionada con coral de Cerde�a, la cer�mica de Caltagirone, el calzado de los fabricantes del polo industrial del Norte de�Italia,pintura:Michelangelo Buonarroti, conocido en espa�ol como Miguel �ngel, fue un arquitecto, escultor y pintor italiano renacentista, considerado uno de los m�s grandes artistas de la historia tanto por sus esculturas como por sus pinturas y obra arquitect�nica"
             txtR.Text = "Lago Como"
            repres = "Ritalia.jpg"
            ban = "Bitalia.jpg"
            archivo = "Mitalia.jpg"
           
        Case 3
            lblCptal.Caption = "Atenas"
            lblIdma.Caption = "griego  "
            lblMnda.Caption = "euro"
            txtCstmbre.Text = "comida:Empanada de queso feta y fin�simo hojaldre, llamado filo.Spanakopita.Dolmadakia,Pastel tradicional elaborado al horno con capas de berenjenas, patatas, carne picada y bechamel.artesanias:el trabajo con el metal, el cuero, la madera o la arcilla�,pintura:Polignoto o Polignoto de Tasos fue un pintor griego de mediados del siglo V a. C., hijo de Aglaof�n."
             txtR.Text = "Naxos"
            repres = "Rgrecia.jpg"
            ban = "Bgrecia.jpg"
            archivo = "Mgrecia.jpg"

        End Select
     repre = App.Path & "\" & repres
    imgRpre.Picture = LoadPicture(repre)
      
    bandera = App.Path & "\" & ban
    imgBndra.Picture = LoadPicture(bandera)
      
      
    mapa = App.Path & "\" & archivo
    imgMpa.Picture = LoadPicture(mapa)
        
End Sub
Private Sub ame()
    Select Case cmbPais.ListIndex
        Case 0
            lblCptal.Caption = "Bogot�"
            lblIdma.Caption = "Espa�ol"
            lblMnda.Caption = "Peso colombiano"
            txtCstmbre.Text = "Caf� en todo momento,Tradiciones Religiosas:El Corpus Cristi, la Semana Santa, San Pedro, San Pablo, entre otras ,La Arepa, Las fincas , Artesan�a:Hamacas de San Jaciento, Las Molas, Las mochilas arhuacas y muchas otras cosas m�s, La m�sica:vallenato"
             txtR.Text = "Catedral de la sal"
            repres = "Rcolombia.jpg"
            ban = "Bcolombia.jpg"
            archivo = "Mcolombia.jpg"
            
        Case 1
            lblCptal.Caption = "Lima"
            lblIdma.Caption = "espa�ol  "
            lblMnda.Caption = "Nuevo Sol"
             txtCstmbre.Text = "Festividad de la Virgen de la Candelaria,Carnavales,Danzas:La Marinera,Rituales:Pago a la Tierra,Cer�micas o Textiles"
             txtR.Text = "Arequipa"
            repres = "Rperu.jpg"
            ban = "Bperu.jpg"
            archivo = "Mperu.jpg"
            
        Case 2
            lblCptal.Caption = "Buenos Aires"
            lblIdma.Caption = "castellano   "
            lblMnda.Caption = "Peso argentino"
            txtCstmbre.Text = "El f�tbol,El mate,El tango,El dulce de leche,El asado"
             txtR.Text = "parque nacional iguaz�"
            repres = "Rargentina.jpg"
            ban = "Bargentina.jpg"
            archivo = "Margentina.jpg"
            
        Case 3
            lblCptal.Caption = "La Habana"
            lblIdma.Caption = "espa�ol  "
            lblMnda.Caption = "Peso Cubano"
            txtCstmbre.Text = "Deporte:b�isbol ,bodas en Cuba:aquellos que quieran bailar con la novia antes deben prender algo de dinero en su vestido, platos m�s populares se encuentran el cerdo asado, el ajiaco, el congr�, los bu�uelos, los tamales, casabe y tostones , bebidas dulces y heladas como el mojito, la pi�a colada, el daiquiri, el cuba libre, la champola, el pru oriental, el guarapo y el caf�. Puntulaes . La musica:la salsa� y del �cha cha cha�. Tambi�n existen exponentes de su m�sica como Benny Mor�, Celia Cruz o La Lupe. "
             txtR.Text = "la habana vieja"
            repres = "Rcuba.jpg"
            ban = "Bcuba.jpg"
            archivo = "Mcuba.jpg"
            
    End Select
    repre = App.Path & "\" & repres
    imgRpre.Picture = LoadPicture(repre)
      
    bandera = App.Path & "\" & ban
    imgBndra.Picture = LoadPicture(bandera)
      
      
    mapa = App.Path & "\" & archivo
    imgMpa.Picture = LoadPicture(mapa)

End Sub
Private Sub saca()
        cmbPais.Enabled = False
        Label3.Visible = False
        Label4.Visible = False
        Label5.Visible = False
        Label9.Visible = False
        txtCstmbre.Visible = False
        Label7.Visible = False
        Label8.Visible = False
        Label6.Visible = False
        lblCptal.Visible = False
        lblIdma.Visible = False
        lblMnda.Visible = False
        txtR.Visible = False
        Picture1.Visible = False
End Sub
Private Sub hola()
    Label3.Visible = True
    Label4.Visible = True
    Label5.Visible = True
    Label9.Visible = True
    lblCptal.Visible = True
    lblIdma.Visible = True
    lblMnda.Visible = True
    txtCstmbre.Visible = True
    Label7.Visible = True
    Label8.Visible = True
    Label6.Visible = True
    'txtCstmbre.MultiLine = True
    txtCstmbre.Locked = True
    txtR.Visible = True
     Picture1.Visible = True
         

End Sub
Private Sub cmbCntnnte_Click()
saca

    cmbPais.Enabled = True
    cmbPais.Clear

    Select Case cmbCntnnte.ListIndex
        Case 0
            With cmbPais
                .AddItem "Colombia "
                .AddItem "Per�"
                .AddItem "Argentina "
                .AddItem "Cuba "
            End With

        Case 1
            With cmbPais
                .AddItem "Alemania"
                .AddItem "M�naco"
                .AddItem "Italia"
                .AddItem "Grecia"
            End With
        Case 2
            With cmbPais
                .AddItem "Egipto"
                .AddItem "Nigeria"
                .AddItem "Sud�n"
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
Private Sub cmdSlir_Click()
Dim resp As String
resp = MsgBox("Realmente quieres salir del programa", vbQuestion + vbYesNo, "Salir")
If resp = vbYes Then
End
End If
End Sub

Private Sub Form_Load()
         saca
        
        cmbPais.ToolTipText = "Escoge un Pais"
        cmbCntnnte.ToolTipText = "Escoge un Continente"
        
        imgMpa.ToolTipText = "Doble clic para agrandar"
        imgMpa.MousePointer = 5
        imgBndra.ToolTipText = "Doble clic para agrandar"
        imgBndra.MousePointer = 5
        imgRpre.ToolTipText = "Doble clic para agrandar"
        imgRpre.MousePointer = 5
        
    With cmbCntnnte
        .AddItem "Am�rica"
        .AddItem "Europa"
        .AddItem " �frica "
    End With
    
   
End Sub


Private Sub imgBndra_DblClick()
Frm.Show
End Sub

Private Sub imgMpa_DblClick()
frm1.Show
End Sub

Private Sub imgRpre_DblClick()
frm2.Show
End Sub

