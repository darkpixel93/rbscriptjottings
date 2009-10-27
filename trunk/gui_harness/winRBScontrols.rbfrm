#tag Window
Begin Window winRBScontrols
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
   MaximizeButton  =   False
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
   Begin Listbox myFirstLB
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   5
      ColumnsResizable=   ""
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   ""
      EnableDragReorder=   ""
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   129
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "zero	one	two	three	four\r\na0	a1	a2	a3	a4\r\nb0	b1	b2	b3	b4\r\nc0	c1	c2	c3	c4"
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   20
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   560
      _ScrollWidth    =   -1
   End
   Begin RBScontrols.RBScriptControls RbScript1
      EncodingFont    =   ""
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   -55
      LockedInPosition=   False
      Scope           =   0
      Source          =   ""
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   -13
      Width           =   32
   End
   Begin ProgressBar ProgressBar1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Maximum         =   100
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   161
      Value           =   0
      Visible         =   True
      Width           =   560
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
      Height          =   187
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   26
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
      Text            =   "MsgBox ""Cell 2,2 = "" + ListBox1.Cell( 2, 2 )\r\n\r\nListBox1.Cell( 2, 2 ) = input (""Value for C2"")\r\nMsgBox ""Cell 2,2 = "" + ListBox1.Cell( 2, 2 )\r\n\r\nif progressbar1.value < 50 then\r\n  progressbar1.value = progressbar1.maximum\r\nelse\r\n  progressbar1.value = 30\r\nend if\r\n"
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   193
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   451
   End
   Begin PushButton btnRun
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Run"
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   500
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   358
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
      Height          =   153
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   489
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   ""
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
      Top             =   193
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   91
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  dim cx As new RBScontrols.RBScontextControls
		  If not cx.AddRectControl( "Lb1", myFirstLB ) Then
		    MsgBox "failed to add listbox"
		  End If
		  if not cx.AddRectControl( "Pbar1", ProgressBar1 ) then
		    MsgBox "failed to add ProgressBar"
		  end if
		  RbScript1.Context = cx
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events btnRun
	#tag Event
		Sub Action()
		  //Listbox (myFirstLB) is known to the context as "Lb1"
		  //and will be known to the script as ListBox1
		  
		  preText.text = RBScontrols.kClassListboxDef + _
		  "Dim Listbox1 As Listbox" + EndOfLine + _
		  "Listbox1 = New Listbox( ""Lb1"" )" + EndOfLine
		  
		  preText.Text = preText.Text + _
		  RBScontrols.kClassProgressBarDef + EndOfLine+ _
		  "Dim ProgressBar1 As ProgressBar" + EndOfLine + _
		  "ProgressBar1 = New ProgressBar( ""Pbar1"" )" + EndOfLine
		  
		  preText.HelpTag = preText.Text
		  RbScript1.Source = _
		  preText.Text + EndOfLine + _
		  EditField1.Text
		  RbScript1.Run
		End Sub
	#tag EndEvent
#tag EndEvents
