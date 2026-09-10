; SisFarma Windows Installer
; Version 1.2.7

#define MyAppName "Sistema Farmácia"
#define MyAppVersion "1.2.7"
#define MyAppPublisher "SisFarma"

[Setup]
AppId={{8A9E6B7D-6E5D-4F1B-9B17-7B6F3C2A1277}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\SisFarma
DefaultGroupName={#MyAppName}
OutputDir=output
OutputBaseFilename=SisFarma_Setup_{#MyAppVersion}
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Files]
Source: "Arquivos_do_Programa\Gerente_Farmacia.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Arquivos_do_Programa\Cliente_Farmacia.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{autodesktop}\Gerente Farmácia"; Filename: "{app}\Gerente_Farmacia.exe"
Name: "{autodesktop}\Cliente Farmácia"; Filename: "{app}\Cliente_Farmacia.exe"
Name: "{group}\Gerente Farmácia"; Filename: "{app}\Gerente_Farmacia.exe"
Name: "{group}\Cliente Farmácia"; Filename: "{app}\Cliente_Farmacia.exe"

[Run]
Filename: "{app}\Gerente_Farmacia.exe"; Description: "Executar Gerente Farmácia"; Flags: nowait postinstall skipifsilent unchecked
