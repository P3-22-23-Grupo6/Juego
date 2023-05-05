; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "G6_Juego_de_autos"
#define MyAppVersion "1.0"
#define MyAppPublisher "Grupo 6"
#define MyAppExeName "LM_Main.exe"
#define MyAppAssocName MyAppName + " File"
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt
#define MyAppRoot "C:\Users\chema\Documents\3_Carrera\P3\Juego\Juego_de_autos\Motor\Bin"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8A3EC769-61AF-404F-9C07-D513C1F0F54A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=G6Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#MyAppRoot}\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\g6Img.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\Codec_STBI.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\fmod.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\Juego_de_autos.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\LocoMotor.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\Lua.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\ogre.cfg"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\OgreMain.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\OgreOverlay.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\OgreRTShaderSystem.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\Plugin_ParticleFX.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\plugins.cfg"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\RenderSystem_Direct3D11.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\RenderSystem_GL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\resources.cfg"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\SDL2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\zlib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\Assets\*"; DestDir: "{app}\Assets"; Flags: ignoreversion recursesubdirs 
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; 
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
