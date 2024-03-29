
Import transcc

Import android
Import flash
Import glfw
Import html5
Import ios
Import psm
Import stdcpp
Import win8
Import xna
Import xamarin

Function Builders:StringMap<Builder>( tcc:TransCC )
	Local builders:=New StringMap<Builder>

	builders.Set "android",New AndroidBuilder( tcc )
	builders.Set "glfw",New GlfwBuilder( tcc )
	builders.Set "html5",New Html5Builder( tcc )
	builders.Set "ios",New IosBuilder( tcc )
	builders.Set "flash",New FlashBuilder( tcc )
	builders.Set "psm",New PsmBuilder( tcc )
	builders.Set "stdcpp",New StdcppBuilder( tcc )
	builders.Set "win8",New Win8Builder( tcc )
	builders.Set "xna",New XnaBuilder( tcc )
	builders.Set "xamarin", New XamarinBuilder( tcc )
	
	Return builders
End
