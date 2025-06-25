VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form frmChat 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Chat Program"
   ClientHeight    =   3795
   ClientLeft      =   45
   ClientTop       =   345
   ClientWidth     =   6765
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3795
   ScaleWidth      =   6765
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Left            =   120
      Top             =   3240
   End
   Begin SHDocVwCtl.WebBrowser web2 
      Height          =   735
      Left            =   4680
      TabIndex        =   3
      Top             =   2760
      Width           =   1815
      ExtentX         =   3201
      ExtentY         =   1296
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
   Begin VB.TextBox txtsend 
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   2760
      Width           =   3495
   End
   Begin SHDocVwCtl.WebBrowser web 
      Height          =   2655
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   6615
      ExtentX         =   11668
      ExtentY         =   4683
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
   Begin VB.CommandButton cmdConnect 
      Caption         =   "Send"
      Height          =   375
      Left            =   3720
      TabIndex        =   0
      Top             =   2760
      Width           =   855
   End
End
Attribute VB_Name = "frmChat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim myname, password


Private Sub cmdConnect_Click()

GetMethod = "http://www.eqguilded.com/cgi-bin/chat.cgi?do=send&text=" & txtsend.Text & "&name=" & myname

web2.Navigate GetMethod

txtsend.Text = ""

End Sub

Private Sub Form_Load()

myname = "byron"
password = "null"

web.Navigate "http://www.eqguilded.com/cgi-bin/chat.cgi"

End Sub

