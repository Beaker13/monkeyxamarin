
Import builder

Class XamarinBuilder Extends Builder

	Method New( tcc:TransCC )
		Super.New( tcc )
	End
	
	Method Config:String()
		Local config:=New StringStack
		For Local kv:=Eachin _cfgVars
			config.Push "public const String "+kv.Key+"="+Enquote( kv.Value,"cs" )+";"
		Next
		Return config.Join( "~n" )
	End
	
	Method Content:String()
		Local cont:=New StringStack
		cont.Push "  <ItemGroup>"
		
		For Local kv:=Eachin dataFiles
		
			Local p:=kv.Key
			Local r:=kv.Value
			Local f:=StripDir( r )
			Local t:=("data/"+r).Replace( "/","\" )
			
			Local ext:=ExtractExt( r ).ToLower()
			
			If MatchPath( r,TEXT_FILES )
					cont.Push "    <Content Include=~q"+t+"~q />"
			Else If MatchPath( r,IMAGE_FILES )
				Select ext
				Case "bmp","dds","dib","hdr","jpg","pfm","png","ppm","tga"
					cont.Push "    <Content Include=~q"+t+"~q />"
				Default
					Die "Invalid image file type"
				End
			Else If MatchPath( r,SOUND_FILES )
				Select ext
				Case "wav","mp3","wma"
					cont.Push "    <Content Include=~q"+t+"~q />"
				Default
					Die "Invalid sound file type"
				End
			Else If MatchPath( r,MUSIC_FILES )
				Select ext
				Case "wav","mp3","wma"
					cont.Push "    <Content Include=~q"+t+"~q />"
				Default
					Die "Invalid music file type"
				End
			Else If MatchPath( r,BINARY_FILES )
					cont.Push "    <Content Include=~q"+t+"~q />"
			Else If MatchPath( r,VIDEO_FILES )
				Select ext
				Case "m4v","mov"
					cont.Push "    <Content Include=~q"+t+"~q />"
				Default
					Die "Invalid video file type"
				End
			Endif
		Next
		cont.Push "  </ItemGroup>"
		
		Return cont.Join( "~n" )
	
	End

	Method IsValid:Bool()
		Return True
		
		Select HostOS
		Case "winnt"
			If tcc.MSBUILD_PATH Return True
		End
		Return False
	End

	Method Begin:Void()
		ENV_LANG="cs"
		_trans=New CsTranslator
	End

	Method MakeTarget:Void()
	

		CreateDataDir "MonkeyApp/data"

		'app data
		Local contproj:=LoadString( "MonkeyApp/MonkeyApp.csproj" )
		
		While contproj.Contains("~t<!-- ${")
			contproj = contproj.Replace("~t<!-- ${", "<!-- ${")
		End
		
		While contproj.Contains(" <!-- ${")
			contproj = contproj.Replace(" <!-- ${", "<!-- ${")
		End
		
		
		contproj=ReplaceBlock( contproj,"CONTENT",Content(),"~n<!-- " )
'		contproj=ReplaceBlock( contproj,"CONTENT",Content()," <!-- " )
		SaveString contproj,"MonkeyApp/MonkeyApp.csproj"
		
		
		'app code
		Local main:=LoadString( "MonkeyApp/AppDelegate.cs" )
		
		main=ReplaceBlock( main,"TRANSCODE",transCode )
		main=ReplaceBlock( main,"CONFIG",Config() )
		
		SaveString main,"MonkeyApp/AppDelegate.cs"
			
'		If tcc.opt_build
		
'			Execute tcc.MSBUILD_PATH+" /t:MonkeyGame /p:Configuration="+casedConfig+" MonkeyGame.sln"

'			If tcc.opt_run
'				ChangeDir "MonkeyGame/MonkeyGame/bin/x86/"+casedConfig
'				Execute "MonkeyGame",False
'			Endif
'		Endif
		
	End

End
