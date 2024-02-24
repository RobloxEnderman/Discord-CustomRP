; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CustomRP"
#ifndef MyAppVersion
  #define MyAppVersion "1.99"
#endif
#define MyAppPublisher "maximmax42"
#define MyAppURL "https://www.customrp.xyz"
#define MyAppSupportURL "https://github.com/maximmax42/Discord-CustomRP/issues"
#define MyAppUpdatesURL "https://github.com/maximmax42/Discord-CustomRP/releases"
#define MyAppExeName "CustomRP.exe"
#define CurrentYear GetDateTimeString("yyyy", "", "")

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6B1949CF-3AC6-43B8-95BF-5517797E2CEA}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppSupportURL}
AppUpdatesURL={#MyAppUpdatesURL}
; AppMutex=CustomRP
DefaultDirName={userappdata}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
VersionInfoVersion=1
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=commandline
OutputDir=Artifacts
OutputBaseFilename=CustomRP {#MyAppVersion}
SetupIconFile=..\Resources\favicon.ico
WizardImageFile=wizimg.bmp
WizardSmallImageFile=wizsmallimg.bmp

UninstallDisplayIcon={app}\{#MyAppExeName}
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=classic
CloseApplications=force
AppCopyright=Copyright (C) 2018-{#CurrentYear} maximmax42
LicenseFile=License.txt
ChangesAssociations=yes

; No German (CH), Welsh (cy), Filipino, Kannada, Panjabi, Malayalam, Burmese (my), Tamil
[Languages]
Name: "ar";     MessagesFile: "compiler:Languages\Arabic.isl"
Name: "be";     MessagesFile: "compiler:Languages\Belarusian.isl"
Name: "bg";     MessagesFile: "compiler:Languages\Bulgarian.isl"
Name: "bn";     MessagesFile: "compiler:Languages\Bengali.islu"
Name: "bs";     MessagesFile: "compiler:Languages\Bosnian.isl"
Name: "ca";     MessagesFile: "compiler:Languages\Catalan.isl"
Name: "cs";     MessagesFile: "compiler:Languages\Czech.isl"
Name: "da";     MessagesFile: "compiler:Languages\Danish.isl"
Name: "de";     MessagesFile: "compiler:Languages\German.isl"
Name: "el";     MessagesFile: "compiler:Languages\Greek.isl"
Name: "en";     MessagesFile: "compiler:Default.isl"
Name: "es";     MessagesFile: "compiler:Languages\Spanish.isl"
Name: "et";     MessagesFile: "compiler:Languages\Estonian.isl"
Name: "fa";     MessagesFile: "compiler:Languages\Farsi.isl"
Name: "fi";     MessagesFile: "compiler:Languages\Finnish.isl"
Name: "fr";     MessagesFile: "compiler:Languages\French.isl"
Name: "gl";     MessagesFile: "compiler:Languages\Galician.isl"
Name: "he";     MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hi";     MessagesFile: "compiler:Languages\Hindi.islu"
Name: "hr";     MessagesFile: "compiler:Languages\Croatian.isl"
Name: "hu";     MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "hy";     MessagesFile: "compiler:Languages\Armenian.isl"
Name: "id";     MessagesFile: "compiler:Languages\Indonesian.isl"
Name: "is";     MessagesFile: "compiler:Languages\Icelandic.isl"
Name: "it";     MessagesFile: "compiler:Languages\Italian.isl"
Name: "ja";     MessagesFile: "compiler:Languages\Japanese.isl"
Name: "ka";     MessagesFile: "compiler:Languages\Georgian.isl"
Name: "ko";     MessagesFile: "compiler:Languages\Korean.isl"
Name: "ku";     MessagesFile: "compiler:Languages\Kurdish.isl"
Name: "lt";     MessagesFile: "compiler:Languages\Lithuanian.isl"
Name: "lv";     MessagesFile: "compiler:Languages\Latvian.isl"
Name: "mk";     MessagesFile: "compiler:Languages\Macedonian.isl"
Name: "mn";     MessagesFile: "compiler:Languages\Mongolian.isl"
Name: "nl";     MessagesFile: "compiler:Languages\Dutch.isl"
Name: "no";     MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "pl";     MessagesFile: "compiler:Languages\Polish.isl"
Name: "pt";     MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "ptBR";   MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "ro";     MessagesFile: "compiler:Languages\Romanian.isl"
Name: "ru";     MessagesFile: "compiler:Languages\Russian.isl"
Name: "sk";     MessagesFile: "compiler:Languages\Slovak.isl"
Name: "sl";     MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "sr";     MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "sv";     MessagesFile: "compiler:Languages\Swedish.isl"
Name: "th";     MessagesFile: "compiler:Languages\Thai.isl"
Name: "tr";     MessagesFile: "compiler:Languages\Turkish.isl"
Name: "uk";     MessagesFile: "compiler:Languages\Ukrainian.isl"
Name: "ur";     MessagesFile: "compiler:Languages\Urdu.isl"
Name: "vi";     MessagesFile: "compiler:Languages\Vietnamese.isl"
Name: "zhHans"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"
Name: "zhHant"; MessagesFile: "compiler:Languages\ChineseTraditional.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
; Source: "Release\CustomRP.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Excludes: "*.pdb,*.xml,*.log*,\logs\"
Source: "Windows 7\*"; DestDir: "{app}"; Flags: ignoreversion; OnlyBelowVersion: 6.2
Source: "ndp48-web.exe"; DestDir: "{tmp}";
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Registry]
Root: HKA; Subkey: "Software\Classes\.crp\OpenWithProgids"; ValueType: string; ValueName: "CustomRP.crp"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\CustomRP.crp"; ValueType: string; ValueName: ""; ValueData: {#MyAppName} Preset; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\CustomRP.crp\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},1"
Root: HKA; Subkey: "Software\Classes\CustomRP.crp\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\CustomRP.exe\SupportedTypes"; ValueType: string; ValueName: ".crp"; ValueData: ""

[Code]
function NeedToInstallDotNet(): Boolean;
begin
  Result := not IsDotNetInstalled(net48, 0);
end;

[Run]
;Filename: "taskkill"; Parameters: "/f /im CustomRP.exe"; Flags: shellexec runhidden 
Filename: "{tmp}\ndp48-web.exe"; StatusMsg: "Installing .NET Framework 4.8..."; Parameters: "/NoRestart /Passive /ShowFinalError /ShowRmui"; Check: NeedToInstallDotNet
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall 

[UninstallRun]
Filename: "taskkill"; Parameters: "/f /im CustomRP.exe"; Flags: shellexec runhidden waituntilterminated