#tag Class
Protected Class RBScontextBasic
	#tag Method, Flags = &h1
		Protected Sub DebugLog(msg As String)
		  System.DebugLog msg
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EndOfLine() As String
		  Return REALbasic.EndOfLine
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub MsgBox(msg as string)
		  REALbasic.MsgBox msg
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MsgBox(msg As String, buttons As Integer) As Integer
		  
		  Return REALbasic.MsgBox( msg, buttons, "" )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MsgBox(msg As String, buttons As Integer, Title As String) As Integer
		  
		  Return REALbasic.MsgBox( msg, buttons, Title )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MsgBox(msg As String, Title As String) As Integer
		  
		  Return REALbasic.MsgBox( msg, 0, Title )
		End Function
	#tag EndMethod


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
End Class
#tag EndClass
