#tag Module
Protected Module RBScontrols
	#tag Constant, Name = kClassListboxDef, Type = String, Dynamic = False, Default = \"Class ListBox\rPrivate mName As String\r\rSub Constructor(Name As String)\r mName \x3D Name\rEnd Sub\r\rFunction Cell(row As Integer\x2C Column As Integer) As String\r  Return Listbox_Cell( mName\x2C Row\x2C Column )\rEnd Function\r\rSub Cell(row As Integer\x2C Column As Integer\x2C assigns valu As String)\r  Listbox_Cell( mName\x2C Row\x2C Column ) \x3D valu\rEnd Sub\r\rEnd Class\r\r", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kClassProgressBarDef, Type = String, Dynamic = False, Default = \"Class ProgressBar\rPrivate mName As String\r\rSub Constructor(Name As String)\r mName \x3D Name\rEnd Sub\r\rFunction Maximum() As Integer\r  Return ProgressBar_Maximum( mName )\rEnd Function\r\rSub Maximum(assigns valu As Integer)\r  ProgressBar_Maximum( mName ) \x3D valu\rEnd Sub\r\rFunction Value() As Integer\r  Return ProgressBar_Value( mName )\rEnd Function\r\rSub Value(assigns valu As Integer)\r  ProgressBar_Value( mName ) \x3D valu\rEnd Sub\r\rEnd Class\r\r", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
