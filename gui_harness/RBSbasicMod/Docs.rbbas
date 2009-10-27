#tag Class
Protected Class Docs
	#tag Note, Name = Licence
		
		The MIT License
		
		Copyright (c) <2009> <Stephen J Garman>
		
		Permission is hereby granted, free of charge, to any person obtaining a copy
		of this software and associated documentation files (the "Software"), to deal
		in the Software without restriction, including without limitation the rights
		to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
		copies of the Software, and to permit persons to whom the Software is
		furnished to do so, subject to the following conditions:
		
		The above copyright notice and this permission notice shall be included in
		all copies or substantial portions of the Software.
		
		THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
		IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
		FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
		AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
		LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
		OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
		THE SOFTWARE.
	#tag EndNote

	#tag Note, Name = Readme
		
		This open-source project was started by Steve Garman
		and is intended to provide a framework in which those 
		who use RBScript can share the stuff they find out with 
		the RB community.
		
		At the time of writing, this consists of one project with
		a couple of windows.
		
		Each mini-project consists of an rbscript subclass 
		(preferably with the ultimate parent
		RBSbasicMod.RBSbasic), a context class 
		(preferably with the ultimate parent 
		RBSbasicMod.RBSbasic) and a window with (at a
		minimum) an EditField or TextArea for script source
		and a "run" button. This is basically a demo setup.
		
		The module can also contain constants
		which are useful RBScript code snippets and/or
		class definitions etc.
		
		The idea is that a contributor can either help to 
		complete an existing mini-project (such as 
		RBScontrols or start a new mini-project and add
		a button to winMainMenu to call her demo window.
		
		To get the idea, download the source and see what is 
		there so far.
	#tag EndNote


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
