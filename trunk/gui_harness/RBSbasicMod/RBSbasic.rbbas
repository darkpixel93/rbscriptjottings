#tag Class
Protected Class RBSbasic
Inherits RBSCript
	#tag Event
		Sub CompilerError(line As Integer, errorNumber As Integer, errorMsg As String)
		  if not CompilerError( line, errorNumber, errorMsg ) then
		    // subclass did not return True
		    // so wants us to handle it
		    
		    GeneralError "Compiler", line, errorNumber, errorMsg, GetErrorCodeLines( line )
		    
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
		    
		    GeneralError "Runtime", line, error.ErrorNumber, Trim(error.Message), GetErrorCodeLines( line )
		    
		  end if
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function GetErrorCodeLines(line As Integer) As String
		  Dim code as String
		  dim src As String = ReplaceLineEndings( me.Source, EndOfLine )
		  Dim pos As Integer
		  Dim lineEnd As string = " " + EndOfLine
		  
		  If errLinesBefore > 0 Then
		    dim MinPos As Integer = max( 0, line + 1 - errLinesBefore )
		    for pos  = MinPos to line
		      code = code + nthfield( src, EndOfLine, pos ) + lineEnd
		    next pos
		  End If
		  pos = line + 1
		  code = code + errLineMarker + nthfield( src, EndOfLine, pos )
		  
		  If errLinesAfter > 0 Then
		    dim MaxPos As Integer = line +1 + errLinesAfter
		    for pos  = line + 2 to MaxPos
		      code = code + lineEnd + nthfield( src, EndOfLine, pos )
		    next pos
		  End If
		  Return Code
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event CompilerError(line As Integer, errorNumber As Integer, errorMsg As String) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GeneralError(Typ As String, line As Integer, errorNumber As Integer, errorMsg As String, codeText As String)
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


	#tag Property, Flags = &h0
		errLineMarker As String = "-->"
	#tag EndProperty

	#tag Property, Flags = &h0
		errLinesAfter As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		errLinesBefore As Integer
	#tag EndProperty


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
