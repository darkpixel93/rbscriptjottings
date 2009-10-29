#tag Window
Begin Window winRBSdates
   BackColor       =   16777215
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Untitled"
   Visible         =   True
   Width           =   600
   Begin RBSdates.RBscriptDates RbScript1
      EncodingFont    =   ""
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   -55
      LockedInPosition=   False
      Scope           =   0
      Source          =   ""
      TabPanelIndex   =   0
      Top             =   -13
      Width           =   32
   End
   Begin EditField EditField1
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   ""
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   273
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      Password        =   ""
      ReadOnly        =   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "dim d as Date\r\nd = new Date\r\ndim msg as String\r\nmsg = d.SQLDateTime\r\n\r\nd.hour = d.hour + 1\r\nd.year = d.year + 1\r\nmsg = msg + endofline + d.SQLDateTime\r\n\r\nd.GMToffset = 0\r\nd.Totalseconds = 0\r\nmsg = msg + endofline + d.SQLDateTime\r\n\r\nd.GMToffset = 12\r\nmsgBox msg + endofline + d.SQLDateTime\r\n"
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   107
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   560
   End
   Begin PushButton btnRun
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Run"
      Default         =   ""
      Enabled         =   True
      Height          =   35
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   507
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   33
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin EditField preText
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   ""
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   73
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      Password        =   ""
      ReadOnly        =   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   14
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   468
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  dim cx As new RBSdates.RBScontextDates
		  RbScript1.Context = cx
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events btnRun
	#tag Event
		Sub Action()
		  preText.Text = RBSdates.kClassDateDef
		  
		  RbScript1.Source = _
		  preText.Text + EndOfLine + _
		  EditField1.Text
		  RbScript1.Run
		End Sub
	#tag EndEvent
#tag EndEvents
