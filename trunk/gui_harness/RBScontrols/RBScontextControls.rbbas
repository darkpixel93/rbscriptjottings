	#tag Class
	Protected Class RBScontextControls
	Inherits RBSbasicMod.RBScontextBasic
		#tag Method, Flags = &h0
			Function AddRectControl(Name As String, ctrl As RectControl) As Boolean
			  //This method not available to RBScript because ctrl is not an intrinsic type.
			  //
			  If name = "" or ctrl is nil or mRectControls.HasKey( Name ) Then
			    Return false
			  End If
			  
			  mRectControls.Value( Name ) = ctrl
			  
			  Return True
			  
			End Function
		#tag EndMethod

		#tag Method, Flags = &h0
			Sub Constructor()
			  mRectControls = new Dictionary
			End Sub
		#tag EndMethod

		#tag Method, Flags = &h1
			Protected Function ListBox_Cell(Name as string, row As Integer, Colum As Integer) As String
			  dim r As RectControl = mRectControls.Lookup( Name, Nil )
			  Const errString = "???" 
			  if not r isa Listbox then
			    Return errString
			  end if
			  Dim lb As Listbox = Listbox ( r )
			  if lb is nil or row < 0 or row >= lb.ListCount then
			    Return errString
			  end if
			  Return lb.Cell( row, Colum )
			End Function
		#tag EndMethod

		#tag Method, Flags = &h1
			Protected Sub ListBox_Cell(Name As String, row As Integer, Colum As Integer, assigns valu As String)
			  dim r As RectControl = mRectControls.Lookup( Name, Nil )
			  Const errString = "???"
			  if not r isa Listbox then
			    Exit Sub
			  end if
			  Dim lb As Listbox = Listbox ( r )
			  
			  if lb is nil then
			    Exit Sub
			  end if
			  while lb.ListCount <= row
			    lb.AddRow ""
			  wend
			  lb.Cell( row, Colum ) = valu
			End Sub
		#tag EndMethod

		#tag Method, Flags = &h1
			Protected Function Progressbar_maximum(Name As String) As Integer
			  dim r As RectControl = mRectControls.Lookup( Name, Nil )
			  Const errNo = 0
			  if not r isa ProgressBar then
			    Return errNo
			  end if
			  Return ProgressBar( r ).Maximum
			End Function
		#tag EndMethod

		#tag Method, Flags = &h1
			Protected Sub Progressbar_maximum(Name As String, assigns maxv As Integer)
			  dim r As RectControl = mRectControls.Lookup( Name, Nil )
			  if not r isa ProgressBar then
			    Exit Sub
			  end if
			  ProgressBar( r ).Maximum = maxv
			End Sub
		#tag EndMethod

		#tag Method, Flags = &h1
			Protected Function Progressbar_value(Name As String) As Integer
			  dim r As RectControl = mRectControls.Lookup( Name, Nil )
			  Const errNo = 0
			  if not r isa ProgressBar then
			    Return errNo
			  end if
			  Return ProgressBar( r ).Value
			End Function
		#tag EndMethod

		#tag Method, Flags = &h1
			Protected Sub Progressbar_value(Name As String, assigns valu As Integer)
			  dim r As RectControl = mRectControls.Lookup( Name, Nil )
			  if not r isa ProgressBar then
			    Exit Sub
			  end if
			  ProgressBar( r ).Value = valu
			End Sub
		#tag EndMethod


		#tag Property, Flags = &h21
			Private mRectControls As Dictionary
		#tag EndProperty


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
