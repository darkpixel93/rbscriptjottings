#tag Module
Protected Module RBSdates
	#tag Constant, Name = kClassDateDef, Type = String, Dynamic = False, Default = \"Class Date\rPrivate mTotalSeconds As Double\rPrivate mGMToffset As Double\r\rSub Constructor()\r dim arr() as Double\r arr \x3D DateHereAndNow\r mTotalSeconds \x3D arr(0)\r mGMToffset \x3D arr(1)\rEnd Sub\r\rFunction AbbreviatedDate() As String\r  Return DateString( mTotalSeconds\x2C mGmtOffset\x2C \"AbbreviatedDate\" )\rEnd Function\rFunction LongDate() As String\r  Return DateString( mTotalSeconds\x2C mGmtOffset\x2C \"LongDate\" )\rEnd Function\rFunction LongTime() As String\r  Return DateString( mTotalSeconds\x2C mGmtOffset\x2C \"LongTime\" )\rEnd Function\rFunction ShortDate() As String\r  Return DateString( mTotalSeconds\x2C mGmtOffset\x2C \"ShortDatee\" )\rEnd Function\rFunction ShortTime() As String\r  Return DateString( mTotalSeconds\x2C mGmtOffset\x2C \"ShortTime\" )\rEnd Function\rFunction SQLDate() As String\r  Return DateString( mTotalSeconds\x2C mGmtOffset\x2C \"SQLDate\" )\rEnd Function\rFunction SQLDateTime() As String\r  Return DateString( mTotalSeconds\x2C mGmtOffset\x2C \"SQLDateTime\" )\rEnd Function\r\r\rFunction Day() As Integer\r  Return DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"Day\" )\rEnd Function\rFunction DayofWeek() As Integer\r  Return DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"DayofWeek\" )\rEnd Function\rFunction DayofYear() As Integer\r  Return DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"DayofYear\" )\rEnd Function\rFunction Hour() As Integer\r  Return DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"Hour\" )\rEnd Function\rFunction Minute() As Integer\r  Return DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"Minute\" )\rEnd Function\rFunction Month() As Integer\r  Return DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"Month\" )\rEnd Function\rFunction Second() As Integer\r  Return DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"Second\" )\rEnd Function\rFunction WeekOfYear() As Integer\r  Return DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"WeekofYear\" )\rEnd Function\rFunction Year() As Integer\r  Return DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"Year\" )\rEnd Function\r\rSub SQLDate(Assigns valu as String)\r dim arr(2) as Double\r arr \x3D DateString( mTotalSeconds\x2C mGmtOffset\x2C \"SQLDate\"\x2C valu )\r mTotalSeconds \x3D arr(0)\r mGMToffset \x3D arr(1)\rEnd Sub\rSub SQLDateTime(Assigns valu as String)\r dim arr(2) as Double\r arr \x3D DateString( mTotalSeconds\x2C mGmtOffset\x2C \"SQLDateTime\"\x2C valu )\r mTotalSeconds \x3D arr(0)\r mGMToffset \x3D arr(1)\rEnd Sub\r\rSub Day(Assigns valu as Integer)\r dim arr(2) as Double\r arr \x3D DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"Day\"\x2C valu )\r mTotalSeconds \x3D arr(0)\r mGMToffset \x3D arr(1)\rEnd Sub\rSub Hour(Assigns valu as Integer)\r dim arr(2) as Double\r arr \x3D DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"Hour\"\x2C valu )\r mTotalSeconds \x3D arr(0)\r mGMToffset \x3D arr(1)\rEnd Sub\rSub Minute(Assigns valu as Integer)\r dim arr(2) as Double\r arr \x3D DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"Minute\"\x2C valu )\r mTotalSeconds \x3D arr(0)\r mGMToffset \x3D arr(1)\rEnd Sub\rSub Month(Assigns valu as Integer)\r dim arr(2) as Double\r arr \x3D DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"Month\"\x2C valu )\r mTotalSeconds \x3D arr(0)\r mGMToffset \x3D arr(1)\rEnd Sub\rSub Second(Assigns valu as Integer)\r dim arr(2) as Double\r arr \x3D DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"Second\"\x2C valu )\r mTotalSeconds \x3D arr(0)\r mGMToffset \x3D arr(1)\rEnd Sub\rSub Year(Assigns valu as Integer)\r dim arr(2) as Double\r arr \x3D DateInteger( mTotalSeconds\x2C mGmtOffset\x2C \"Year\"\x2C valu )\r mTotalSeconds \x3D arr(0)\r mGMToffset \x3D arr(1)\rEnd Sub\r\rEnd Class\r", Scope = Protected
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
