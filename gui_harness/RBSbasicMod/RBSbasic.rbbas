	#tag Class
	Protected Class RBSbasic
	Inherits RBSCript
		#tag Event
			Sub CompilerError(line As Integer, errorNumber As Integer, errorMsg As String)
			  if not CompilerError( line, errorNumber, errorMsg ) then
			    // subclass did not return True
			    // so wants us to handle it
			    dim msg As String ="Compiler Error [" +_
			    format( ErrorNumber, "0" ) +_
			    "] at line " + format( line, "0" ) + _
			    " " + errorMsg
			    System.DebugLog msg
			    REALbasic.MsgBox msg
			    dim src As String = ReplaceLineEndings( me.Source, EndOfLine )
			    REALbasic.MsgBox nthfield( src, EndOfLine, line+1 )
			  end if
			  
			End Sub
		#tag EndEvent

		#tag Event
			Function Input(prompt As String) As String
			  Dim handled As Boolean
			  Dim retVal As String = Input( prompt, handled )
			  // subclass to set handled = True if providing the input
			  
			  if not handled then
			    dim w As new winType_InputDialog
			    retVal = w.RunDialog( prompt )
			  end if
			  
			  Return retVal
			End Function
		#tag EndEvent

		#tag Event
			Sub Print(msg As String)
			  if not Print( msg ) then
			    // subclass did not return True
			    // so wants us to handle it
			    MsgBox msg
			  end if
			  
			End Sub
		#tag EndEvent

		#tag Event
			Sub RuntimeError(line As Integer, error As RuntimeException)
			  if not RunTimeError( line, error ) then
			    // subclass did not return True
			    // so wants us to handle it
			    dim msg As String ="RunTime exception [" +_
			    format( error.ErrorNumber, "0" ) +_
			    "] at line " + format( line, "0" ) + _
			    " " + error.Message
			    System.DebugLog msg
			    MsgBox msg
			    dim src As String = ReplaceLineEndings( me.Source, EndOfLine )
			    REALbasic.MsgBox nthfield( src, EndOfLine, line+1 )
			  end if
			  
			End Sub
		#tag EndEvent


		#tag Hook, Flags = &h0
			Event CompilerError(line As Integer, errorNumber As Integer, errorMsg As String) As Boolean
		#tag EndHook

		#tag Hook, Flags = &h0
			Event Input(Prompt As String, ByRef handled As Boolean) As String
		#tag EndHook

		#tag Hook, Flags = &h0
			Event Print(msg As String) As Boolean
		#tag EndHook

		#tag Hook, Flags = &h0
			Event RunTimeError(line As Integer,error As RuntimeException) As Boolean
		#tag EndHook


		#tag ViewBehavior
			#tag ViewProperty
				Name="EncodingFont"
				Visible=true
				Group="Behavior"
				InheritedFrom="RBSCript"
			#tag EndViewProperty
			#tag ViewProperty
				Name="Index"
				Visible=true
				Group="ID"
				Type="Integer"
				InheritedFrom="RBSCript"
			#tag EndViewProperty
			#tag ViewProperty
				Name="Left"
				Visible=true
				Group="Position"
				Type="Integer"
				InheritedFrom="RBSCript"
			#tag EndViewProperty
			#tag ViewProperty
				Name="Name"
				Visible=true
				Group="ID"
				InheritedFrom="RBSCript"
			#tag EndViewProperty
			#tag ViewProperty
				Name="Source"
				Visible=true
				Group="Behavior"
				Type="String"
				EditorType="MultiLineEditor"
				InheritedFrom="RBSCript"
			#tag EndViewProperty
			#tag ViewProperty
				Name="Super"
				Visible=true
				Group="ID"
				InheritedFrom="RBSCript"
			#tag EndViewProperty
			#tag ViewProperty
				Name="Top"
				Visible=true
				Group="Position"
				Type="Integer"
				InheritedFrom="RBSCript"
			#tag EndViewProperty
		#tag EndViewBehavior
	End Class
	#tag EndClass
