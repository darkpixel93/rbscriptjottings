	#tag Class
	Protected Class RBScontextDates
	Inherits RBSbasicMod.RBScontextBasic
		#tag Method, Flags = &h1
			Protected Function DateDouble(Totalsecs As Double, ofset As Double, Type As String) As Double
			  Const errval = -9.9
			  dim d As new date
			  d.GMTOffset = ofset
			  d.TotalSeconds = Totalsecs
			  
			  select case Type
			  case"TotalSeconds"
			    Return d.TotalSeconds
			  case"GMToffset"
			    Return d.GMTOffset
			  end select
			  
			  Return errval
			End Function
		#tag EndMethod

		#tag Method, Flags = &h1
			Protected Function DateDouble(Totalsecs As Double, ofset As Double, Type As String, Valu As Double) As Double()
			  dim retVal(1) As Double
			  
			  dim d As new date
			  d.GMTOffset = ofset
			  d.TotalSeconds = Totalsecs
			  
			  select case Type
			  case"Totalseconds"
			    d.TotalSeconds = valu
			  case"GMTOffset"
			    d.GMTOffset = valu
			  end select
			  
			  retval(0) = d.TotalSeconds
			  retval(1) = d.GMTOffset
			  Return retval
			End Function
		#tag EndMethod

		#tag Method, Flags = &h1
			Protected Function DateHereAndNow() As Double()
			  dim d As new date
			  dim retval(1) As Double
			  retval(0) = d.TotalSeconds
			  retval(1) = d.GMTOffset
			  Return retval
			End Function
		#tag EndMethod

		#tag Method, Flags = &h1
			Protected Function DateInteger(Totalsecs As Double, ofset As Double, Type As String) As Integer
			  Const errval = -9
			  dim d As new date
			  d.GMTOffset = ofset
			  d.TotalSeconds = Totalsecs
			  
			  select case Type
			  case"Day"
			    Return d.Day
			  case "DayOfWeek"
			    Return d.DayOfWeek
			  case "DayOfYear"
			    Return d.DayOfYear
			  case "Hour"
			    Return d.Hour
			  case "Minute"
			    Return d.Minute
			  case "Month"
			    Return d.Month
			  case "Second"
			    Return d.Second
			  case "WeekOfYear"
			    Return d.WeekOfYear
			  case "Year"
			    Return d.Year
			  end select
			  
			  Return errval
			End Function
		#tag EndMethod

		#tag Method, Flags = &h1
			Protected Function DateInteger(Totalsecs As Double, ofset As Double, Type As String, Valu As Integer) As Double()
			  dim retVal(1) As Double
			  
			  dim d As new date
			  d.GMTOffset = ofset
			  d.TotalSeconds = Totalsecs
			  
			  select case Type
			  case"Day"
			    d.Day = valu
			  case "Hour"
			    d.Hour = valu
			  case "Minute"
			    d.Minute = valu
			  case "Month"
			    d.Month = valu
			  case "Second"
			    d.Second = valu
			  case "Year"
			    d.Year = valu
			  end select
			  
			  retval(0) = d.TotalSeconds
			  retval(1) = d.GMTOffset
			  Return retval
			End Function
		#tag EndMethod

		#tag Method, Flags = &h1
			Protected Function DateString(Totalsecs As Double, ofset As Double, Type As String) As String
			  Const errval = "???"
			  dim d As new date
			  d.GMTOffset = ofset
			  d.TotalSeconds = Totalsecs
			  
			  select case Type
			  case"AbbreviatedDate"
			    Return d.AbbreviatedDate
			  case "LongDate"
			    Return d.LongDate
			  case "LongTime"
			    Return d.LongTime
			  case "ShortDate"
			    Return d.ShortDate
			  case "ShortTime"
			    Return d.ShortTime
			  case "SQLDate"
			    Return d.SQLDate
			  case "SQLDateTime"
			    Return d.SQLDateTime
			  end select
			  
			  Return errval
			End Function
		#tag EndMethod

		#tag Method, Flags = &h1
			Protected Function DateString(Totalsecs As Double, ofset As Double, Type As String, valu As String) As Double()
			  dim retval(1) As Double
			  dim d As new date
			  d.GMTOffset = ofset
			  d.TotalSeconds = Totalsecs
			  
			  select case Type
			  case "SQLDate"
			    d.SQLDate = valu
			  case "SQLDateTime"
			    d.SQLDateTime = valu
			  end select
			  
			  retval(0) = d.TotalSeconds
			  retval(1) = d.GMTOffset
			  Return retval
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
