; SisFarma Windows Installer
; Version 1.2.7

#define MyAppName "Sistema Farmácia"
#define MyAppVersion "1.2.7"
#define MyAppPublisher "SisFarma"
#define MyAppExeName "sistfarma.exe"

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
ArchitecturesInstallIn64BitMode=x64
WizardStyle=modern
UninstallDisplayIcon={app}\{#MyAppExeName}

[Files]
Source: "..\app\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Executar {#MyAppName}"; Flags: nowait postinstall skipifsilent
