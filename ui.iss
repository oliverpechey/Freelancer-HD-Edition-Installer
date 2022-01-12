[Code]
var
  // Custom Pages
  DataDirPage: TInputDirWizardPage;
  CallSign: TInputOptionWizardPage;
  PageHdFreelancerIntro: TWizardPage;
  PageSinglePlayer: TWizardPage;
  StartupRes: TInputOptionWizardPage;
  LogoRes: TInputOptionWizardPage;
  SmallText: TInputOptionWizardPage;
  PageWidescreenHud: TWizardPage;
  PageDarkHUD: TWizardPage;
  PagePlanetScape: TWizardPage;
  PageGraphicsApi: TWizardPage;
  PageEffects: TWizardPage;
  PageDrawDistances: TInputOptionWizardPage;
  PageSkips: TWizardPage;
  PageSinglePlayerConsole: TWizardPage;
  DownloadPage: TDownloadWizardPage;

  // Optional pages
  DxWrapperPage: TWizardPage;
  DxWrapperPage2: TWizardPage;
  DgVoodooPage: TWizardPage;
  DgVoodooPage2: TWizardPage;

  // HD Freelancer Intro
  lblHdFreelancerIntro: TLabel;
  HdFreelancerIntro: TCheckBox;
  descHdFreelancerIntro: TNewStaticText;
  lblTextStringRevision: TLabel;
  TextStringRevision: TCheckBox;
  descTextStringRevision: TNewStaticText;

  // Single Player mode
  lblStoryMode: TLabel;
  lblOspNormal: TLabel;
  lblOspPirate: TLabel;
  StoryMode: TRadioButton;
  OspNormal: TRadioButton;
  OspPirate: TRadioButton;
  descSinglePlayerMode: TNewStaticText;

  // New save folder
  lblNewSaveFolder: TLabel;
  NewSaveFolder: TCheckBox;
  descNewSaveFolder: TNewStaticText;

  // Advanced Widescreen HUD
  lblWidescreenHud: TLabel;
  WidescreenHud: TCheckBox;
  descWidescreenHud: TNewStaticText;

  // Weapon Groups
  lblWeaponGroups: TLabel;
  WeaponGroups: TCheckBox;
  descWeaponGroups: TNewStaticText;

  // Dark HUD
  lblDarkHud: TLabel;
  DarkHud: TCheckBox;
  descDarkHud: TNewStaticText;

  // Flat Icons
  lblFlatIcons: TLabel;
  FlatIcons: TCheckBox;
  descFlatIcons: TNewStaticText;

  // Fix clipping with 16:9 resolution planetscapes
  lblPlanetScape: TLabel;
  PlanetScape: TCheckBox;
  descPlanetScape: TNewStaticText;

  // Graphics API
  lblDxWrapperGraphicsApi: TLabel;
  lblDgVoodooGraphicsApi: TLabel;
  lblVanillaGraphicsApi: TLabel;
  lblLightingFixGraphicsApi: TLabel;
  DxWrapperGraphicsApi: TRadioButton;
  DgVoodooGraphicsApi: TRadioButton;
  VanillaGraphicsApi: TRadioButton;
  LightingFixGraphicsApi: TRadioButton;
  descDxWrapperGraphicsApi: TNewStaticText;
  descDgVoodooGraphicsApi: TNewStaticText;
  descVanillaGraphicsApi: TNewStaticText;
  descLightingFixGraphicsApi: TNewStaticText;
  descGraphicsApi: TNewStaticText;

  // DxWrapper
  lblDxWrapperAf: TLabel;
  lblDxWrapperAa: TLabel;
  DxWrapperAf: TComboBox;
  DxWrapperAa: TComboBox;
  descDxWrapperAf: TNewStaticText;
  descDxWrapperAa: TNewStaticText;

  // DxWrapper #2
  lblDxWrapperReShade: TLabel;
  lblDxWrapperSaturation: TLabel;
  lblDxWrapperHdr: TLabel;
  lblDxWrapperBloom: TLabel;
  DxWrapperReShade: TCheckBox;
  DxWrapperSaturation: TCheckBox;
  DxWrapperHdr: TCheckBox;
  DxWrapperBloom: TCheckBox;
  descDxWrapperReShade: TNewStaticText;
  descDxWrapperSaturation: TNewStaticText;
  descDxWrapperHdr: TNewStaticText;
  descDxWrapperBloom: TNewStaticText;

  // dgVoodoo
  lblDgVoodooAf: TLabel;
  lblDgVoodooAa: TLabel;
  lblDgVoodooRefreshRate: TLabel;
  lblDgVoodooRefreshRateHz: TLabel;
  DgVoodooAf: TComboBox;
  DgVoodooAa: TComboBox;
  DgVoodooRefreshRate: TNewEdit;
  descDgVoodooAf: TNewStaticText;
  descDgVoodooAa: TNewStaticText;
  descDgVoodooRefreshRate: TNewStaticText;

  // dgVoodoo #2
  lblDgVoodooReShade: TLabel;
  lblDgVoodooSaturation: TLabel;
  lblDgVoodooHdr: TLabel;
  lblDgVoodooBloom: TLabel;
  DgVoodooReShade: TCheckBox;
  DgVoodooSaturation: TCheckBox;
  DgVoodooHdr: TCheckBox;
  DgVoodooBloom: TCheckBox;
  descDgVoodooReShade: TNewStaticText;
  descDgVoodooSaturation: TNewStaticText;
  descDgVoodooHdr: TNewStaticText;
  descDgVoodooBloom: TNewStaticText;

  // Add improved reflections
  lblVanillaReflections: TLabel;
  lblShinyReflections: TLabel;
  lblShiniestReflections: TLabel;
  VanillaReflections: TRadioButton;
  ShinyReflections: TRadioButton;
  ShiniestReflections: TRadioButton;
  descReflections: TNewStaticText;

  // Add new missile effects
  lblMissleEffects: TLabel;
  MissileEffects: TCheckBox;
  descMissileEffects: TNewStaticText;

  // Add player ship engine trails
  lblEngineTrails: TLabel;
  EngineTrails: TCheckBox;
  descEngineTrails: TNewStaticText;

  // Skip intros
  lblSkipIntros: TLabel;
  SkipIntros: TCheckBox;
  descSkipIntros: TNewStaticText;

  // Jump tunnel duration
  lblJumpTunnel10Sec: TLabel;
  lblJumpTunnel5Sec: TLabel;
  lblJumpTunnel2Sec: TLabel;
  lblJumpTunnelSkip: TLabel;
  JumpTunnel10Sec: TRadioButton;
  JumpTunnel5Sec: TRadioButton;
  JumpTunnel2Sec: TRadioButton;
  JumpTunnelSkip: TRadioButton;
  descJumpTunnelDuration: TNewStaticText;

  // Single Player Command Console
  lblSinglePlayer: TLabel;
  SinglePlayer: TCheckBox;
  descSinglePlayer: TNewStaticText;

// Report on download progress
function OnDownloadProgress(const Url, FileName: String; const Progress, ProgressMax: Int64): Boolean;
begin
  DownloadPage.SetText('Downloading mod',(IntToStr(Progress/1048576)) + 'MB / ' + DownloadSize + 'MB');
  if Progress = ProgressMax then
    Log(Format('Successfully downloaded file to {tmp}: %s', [FileName]));
  Result := True;
end;

// Update progress of installer bar
procedure UpdateProgress(Position: Integer);
begin
  WizardForm.ProgressGauge.Position :=
    Position * WizardForm.ProgressGauge.Max div 100;
end;

// Handles key presses for an integer field
procedure DigitFieldKeyPress(Sender: TObject; var Key: Char);
begin
  if not ((Key = #8) or { Tab key }
          (Key = #3) or (Key = #22) or (Key = #24) or { Ctrl+C, Ctrl+V, Ctrl+X }
          IsDigit(Key)) then
  begin
    Key := #0;
  end;
end;        

// Ensures the DxWrapper or dgVoodoo pages are skipped if they haven't been checked in the Graphics API menu
function PageHandler_ShouldSkipPage(Page: TWizardPage): Boolean;
begin
  Result := False;
   
  if (Page.Id = DxWrapperPage.Id) or (Page.Id = DxWrapperPage2.Id) then
    Result := not DxWrapperGraphicsApi.Checked
  else if (Page.Id = DgVoodooPage.Id) or (Page.Id = DgVoodooPage2.Id) then
    Result := not DgVoodooGraphicsApi.Checked
end;

procedure DxWrapperReShadeCheckBoxClick(Sender: TObject);
begin
  DxWrapperSaturation.Enabled := DxWrapperReShade.Checked;
  DxWrapperHdr.Enabled := DxWrapperReShade.Checked;
  DxWrapperBloom.Enabled := DxWrapperReShade.Checked;
end;

procedure DgVoodooReShadeCheckBoxClick(Sender: TObject);
begin
  DgVoodooSaturation.Enabled := DgVoodooReShade.Checked;
  DgVoodooHdr.Enabled := DgVoodooReShade.Checked;
  DgVoodooBloom.Enabled := DgVoodooReShade.Checked;
end;

procedure InitializeUi();
var dir : string;
begin
  // Read download size
  DownloadSize := IntToStr(StrToInt64(ExpandConstant('{#SizeZip}'))/1048576);

  // Initialize DownloadPage
  DownloadPage := CreateDownloadPage(SetupMessage(msgWizardPreparing), SetupMessage(msgPreparingDesc), @OnDownloadProgress);

  // Initialize DataDirPage and add content
  DataDirPage := CreateInputDirPage(wpInfoBefore,
  'Select Freelancer installation', 'Where is Freelancer installed?',
  'Select the folder in which a fresh and completely unmodded copy of Freelancer is installed. This is usually C:\Program Files (x86)\Microsoft Games\Freelancer.'  + #13#10 +
  'The folder you select here will be copied without modification.',
  False, '');
  DataDirPage.Add('');
  
  if RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\Microsoft\Microsoft Games\Freelancer\1.0',
  'AppPath', dir) then
  begin
  // If the Reg key exists, populate the folder location box
    DataDirPage.Values[0] := dir
  end;
  
  // Initialize CallSign page and add content
  CallSign := CreateInputOptionPage(DataDirPage.ID,
  'Single Player ID Code', 'Tired of being called Freelancer Alpha 1-1?',
  'You know when each time an NPC talks to you in-game, they call you Freelancer Alpha 1-1? This mod gives you the ability to change that ID code in Single Player! Just select any option you like and the NPCs will call you by that.',
  True, False);
  CallSign.Add('Freelancer Alpha 1-1 (Default)');
  CallSign.Add('Navy Beta 2-5');
  CallSign.Add('Bretonia Police Iota 3-4');
  CallSign.Add('Military Epsilon 11-6');
  CallSign.Add('Naval Forces Matsu 4-9');
  CallSign.Add('IMG Red 18-6');
  CallSign.Add('Kishiro Yanagi 7-3');
  CallSign.Add('Outcasts Lambda 9-12');
  CallSign.Add('Dragons Green 16-13');
  CallSign.Add('Spa and Cruise Omega 8-0');
  CallSign.Add('Daumann Zeta 11-17');
  CallSign.Add('Bowex Gamma 5-7');
  CallSign.Add('Order Omicron 0-0');
  CallSign.Add('LSF Delta 6-9');
  CallSign.Add('Hacker Kappa 4-20');
  CallSign.Values[0] := True;

  // Initialize HdFreelancerIntro page and add content
  PageHdFreelancerIntro := CreateCustomPage(CallSign.ID,
  'Localization', 'Customize these options to your liking');

  lblHdFreelancerIntro := TLabel.Create(PageHdFreelancerIntro);
  lblHdFreelancerIntro.Parent := PageHdFreelancerIntro.Surface;
  lblHdFreelancerIntro.Caption := 'Add English HD Freelancer Intro';
  lblHdFreelancerIntro.Left := ScaleX(20);
  
  descHdFreelancerIntro := TNewStaticText.Create(PageHdFreelancerIntro);
  descHdFreelancerIntro.Parent := PageHdFreelancerIntro.Surface;
  descHdFreelancerIntro.WordWrap := True;
  descHdFreelancerIntro.Top := ScaleY(20);
  descHdFreelancerIntro.Width := PageHdFreelancerIntro.SurfaceWidth;
  descHdFreelancerIntro.Caption := 'The default Freelancer startup movie only has a resolution of 720x480. This option adds a higher quality version of this intro with a resolution if 1440x960. However, this HD intro is only available in English. If you''d like to view the Freelancer intro your game''s original language other than English, disable this option.';

  HdFreelancerIntro := TCheckBox.Create(PageHdFreelancerIntro);
  HdFreelancerIntro.Parent := PageHdFreelancerIntro.Surface;
  HdFreelancerIntro.Checked := True;

  lblTextStringRevision := TLabel.Create(PageHdFreelancerIntro);
  lblTextStringRevision.Parent := PageHdFreelancerIntro.Surface;
  lblTextStringRevision.Caption := 'Apply English Text String Revision patch';
  lblTextStringRevision.Left := ScaleX(20);
  lblTextStringRevision.Top := ScaleY(90);
  
  descTextStringRevision := TNewStaticText.Create(PageHdFreelancerIntro);
  descTextStringRevision.Parent := PageHdFreelancerIntro.Surface;
  descTextStringRevision.WordWrap := True;
  descTextStringRevision.Top := ScaleY(110);
  descTextStringRevision.Width := PageHdFreelancerIntro.SurfaceWidth;
  descTextStringRevision.Caption := 'This option fixes many typos, grammar mistakes, inconsistencies, and more, in the English Freelancer text resources. NOTE: This option will set all of Freelancer''s text to English. Disable this option if your intention is to play Freelancer in a different language like German, French, or Russian.';

  TextStringRevision := TCheckBox.Create(PageHdFreelancerIntro);
  TextStringRevision.Parent := PageHdFreelancerIntro.Surface;
  TextStringRevision.Checked := True;
  TextStringRevision.Top := ScaleY(90);


  // Initialize Single Player page and add content
  PageSinglePlayer := CreateCustomPage(PageHdFreelancerIntro.ID, 
  'Single Player options', 'Choose how you''d like to play Single Player');

  lblStoryMode := TLabel.Create(PageSinglePlayer);
  lblStoryMode.Parent := PageSinglePlayer.Surface;
  lblStoryMode.Caption := 'Story Mode (default)';
  lblStoryMode.Left := ScaleX(20);
  
  StoryMode := TRadioButton.Create(PageSinglePlayer);
  StoryMode.Parent := PageSinglePlayer.Surface;
  StoryMode.Checked := True;
  
  lblOspNormal := TLabel.Create(PageSinglePlayer);
  lblOspNormal.Parent := PageSinglePlayer.Surface;
  lblOspNormal.Caption := 'Open Single Player (Normal)';
  lblOspNormal.Left := ScaleX(20);
  lblOspNormal.Top := ScaleY(20);
  
  OspNormal := TRadioButton.Create(PageSinglePlayer);
  OspNormal.Parent := PageSinglePlayer.Surface;
  OspNormal.Top := ScaleY(20);
  
  lblOspPirate := TLabel.Create(PageSinglePlayer);
  lblOspPirate.Parent := PageSinglePlayer.Surface;
  lblOspPirate.Caption := 'Open Single Player (Pirate)';
  lblOspPirate.Left := ScaleX(20);
  lblOspPirate.Top := ScaleY(40);
  
  OspPirate := TRadioButton.Create(PageSinglePlayer);
  OspPirate.Parent := PageSinglePlayer.Surface;
  OspPirate.Top := ScaleY(40);
  
  descSinglePlayerMode := TNewStaticText.Create(PageSinglePlayer);
  descSinglePlayerMode.Parent := PageSinglePlayer.Surface;
  descSinglePlayerMode.WordWrap := True;
  descSinglePlayerMode.Width := PageSinglePlayer.SurfaceWidth;
  descSinglePlayerMode.Caption := 'This option allows you to choose the Single Player mode. Story Mode simply lets you play through the entire storyline, as usual. Both Open Single Player options skip the entire storyline and allow you to freely roam the universe right away. With OSP (Normal), you start in Manhattan with a basic loadout and a default reputation. The OSP (Pirate) option on the other hand, spawns you at Rochester with a similar loadout and an inverted reputation. NOTE: Both OSP options may cause existing storyline saves to not work correctly.';
  descSinglePlayerMode.Top := ScaleY(60);
  
  // Add new missile effects
  lblNewSaveFolder := TLabel.Create(PageSinglePlayer);
  lblNewSaveFolder.Parent := PageSinglePlayer.Surface;
  lblNewSaveFolder.Caption := 'Store save game files in a different folder';
  lblNewSaveFolder.Top := ScaleY(160);
  lblNewSaveFolder.Left := ScaleX(20);
  
  descNewSaveFolder := TNewStaticText.Create(PageSinglePlayer);
  descNewSaveFolder.Parent := PageSinglePlayer.Surface;
  descNewSaveFolder.WordWrap := True;
  descNewSaveFolder.Top := ScaleY(180);
  descNewSaveFolder.Width := PageSinglePlayer.SurfaceWidth;
  descNewSaveFolder.Caption := 'Normally Freelancer save games are stored in "Documents/My Games/Freelancer". This option ensures save games will be stored in "Documents/My Games/FreelancerHD" instead, which may help avoid conflicts when having multiple mods installed simultaneously.';
  
  NewSaveFolder := TCheckBox.Create(PageSinglePlayer);
  NewSaveFolder.Parent := PageSinglePlayer.Surface;
  NewSaveFolder.Top := ScaleY(160);


  // Initialize StartupRes page and add content
  StartupRes := CreateInputOptionPage(PageSinglePlayer.ID,
  'Startup Screen Resolution', 'Choose your native resolution',
  'By default, the "Freelancer" splash screen you see when you start the game has a resolution of 1280x960. This makes it appear stretched and a bit blurry on HD 16:9 resolutions. ' +
  'We recommend setting this option to your monitor''s native resolution. ' +
  'Please note that a higher resolution option may negatively impact the game''s start-up speed.',
  True, False);
  StartupRes.Add('Remove Startup Screen');
  StartupRes.Add('720p 16:9 - 1280x720');
  StartupRes.Add('960p 4:3 - 1280x960 (Vanilla)');
  StartupRes.Add('1080p 4:3 - 1440x1080');
  StartupRes.Add('1080p 16:9 - 1920x1080');
  StartupRes.Add('1440p 4:3 - 1920x1440');
  StartupRes.Add('1440p 16:9 - 2560x1440');
  StartupRes.Add('4K 4:3 - 2880x2160');
  StartupRes.Add('4K 16:9 - 3840x2160');
  StartupRes.Values[4] := True;
  
  // Initialize LogoRes page and add content
  LogoRes := CreateInputOptionPage(StartupRes.ID,
  'Freelancer Logo Resolution', 'In the game''s main menu',
  'This logo has a resolution of 800x600 by default, which makes it look stretched and pixelated/blurry on HD 16:9 monitors. ' +
  'Setting this to a higher resolution with the correct aspect ratio makes the logo look nice and sharp and not stretched-out. Hence we recommend setting this option to your monitor''s native resolution. ' +
  'Please note that a higher resolution option may negatively impact the game''s start-up speed.',
  True, False);
  LogoRes.Add('Remove Logo');
  LogoRes.Add('600p 4:3 - 800x600 (Vanilla)');
  LogoRes.Add('720p 4:3 - 960x720');
  LogoRes.Add('720p 16:9 - 1280x720');
  LogoRes.Add('1080p 4:3 - 1440x1080');
  LogoRes.Add('1080p 16:9 - 1920x1080');
  LogoRes.Add('1440p 4:3 - 1920x1440');
  LogoRes.Add('1440p 16:9 - 2560x1440');
  LogoRes.Add('4K 4:3 - 2880x2160');
  LogoRes.Add('4K 16:9 - 3840x2160');
  LogoRes.Values[5] := True;
  
  // Fix Small Text on 1440p/4K resolutions
  SmallText := CreateInputOptionPage(LogoRes.ID,
  'Fix small text on 1440p/4K resolutions', 'In the game''s main menu',
  'Many high-resolution Freelancer players have reported missing HUD text and misaligned buttons in menus. In 4K, the nav map text is too small and there are many missing text elements in the HUD. For 1440p screens, the only apparent issue is the small nav map text.' + #13#10 + #13#10 +
  'Select the option corresponding to the resolution you''re going to play Freelancer in. If you play in 1920x1080 or lower, the "No" option is fine as the elements are configured correctly already.',
  True, False);
  SmallText.Add('No');
  SmallText.Add('Yes, apply fix for 2560x1440 screens');
  SmallText.Add('Yes, apply fix for 3840x2160 screens');
  SmallText.Values[0] := True;
  
  // Initialize HUD page and add content
  PageWidescreenHud := CreateCustomPage(
    SmallText.ID,
    'Advanced Widescreen HUD',
    'Check to install'
  );
  
  lblWidescreenHud := TLabel.Create(PageWidescreenHud);
  lblWidescreenHud.Parent := PageWidescreenHud.Surface;
  lblWidescreenHud.Caption := 'Enable Advanced Widescreen HUD';
  lblWidescreenHud.Left := ScaleX(20);
  
  descWidescreenHud := TNewStaticText.Create(PageWidescreenHud);
  descWidescreenHud.Parent := PageWidescreenHud.Surface;
  descWidescreenHud.WordWrap := True;
  descWidescreenHud.Top := ScaleY(20);
  descWidescreenHud.Width := PageWidescreenHud.SurfaceWidth;
  descWidescreenHud.Caption := 'This option adds two new useful widgets to your HUD. Next to your contact list, you will have a wireframe representation of your selected target. Next to your weapons list, you will have a wireframe of your own ship. Disable this option if you play in 4:3.' + #13#10 + #13#10 +
  'If you choose to enable this option, go to the Controls settings in-game and under "User Interface", disable Target View (Alt + T). This key binding has become obsolete as both the target view and contact list are visible simultaneously.';
  
  WidescreenHud := TCheckBox.Create(PageWidescreenHud);
  WidescreenHud.Parent := PageWidescreenHud.Surface;
  WidescreenHud.Checked := True;

  lblWeaponGroups := TLabel.Create(PageWidescreenHud);
  lblWeaponGroups.Parent := PageWidescreenHud.Surface;
  lblWeaponGroups.Caption := 'Add Weapon Group buttons';
  lblWeaponGroups.Left := ScaleX(20);
  lblWeaponGroups.Top := ScaleY(130);
  
  descWeaponGroups := TNewStaticText.Create(PageWidescreenHud);
  descWeaponGroups.Parent := PageWidescreenHud.Surface;
  descWeaponGroups.WordWrap := True;
  descWeaponGroups.Top := ScaleY(150);
  descWeaponGroups.Width := PageWidescreenHud.SurfaceWidth;
  descWeaponGroups.Caption := 'This option adds buttons for selecting 3 different weapon groups in your ship info panel. NOTE: These buttons may not be positioned correctly on aspect ratios other than 16:9.';
  
  WeaponGroups := TCheckBox.Create(PageWidescreenHud);
  WeaponGroups.Parent := PageWidescreenHud.Surface;
  WeaponGroups.Checked := True;
  WeaponGroups.Top := ScaleY(130);

  // Initialize Dark HUD page and add content
  PageDarkHud := CreateCustomPage(
    PageWidescreenHud.ID,
    'Custom HUD and icons',
    'Check to install'
  );
  
  lblDarkHud := TLabel.Create(PageDarkHud);
  lblDarkHud.Parent := PageDarkHud.Surface;
  lblDarkHud.Caption := 'Enable Dark HUD';
  lblDarkHud.Left := ScaleX(20);
  
  descDarkHud := TNewStaticText.Create(PageDarkHud);
  descDarkHud.Parent := PageDarkHud.Surface;
  descDarkHud.WordWrap := True;
  descDarkHud.Top := ScaleY(20);
  descDarkHud.Width := PageDarkHud.SurfaceWidth;
  descDarkHud.Caption := 'This option replaces the default Freelancer HUD with a more darker-themed HUD. If this option is disabled, you''ll get the HD default HUD instead.';
  
  DarkHud := TCheckBox.Create(PageDarkHud);
  DarkHud.Parent := PageDarkHud.Surface;

  lblFlatIcons := TLabel.Create(PageDarkHud);
  lblFlatIcons.Parent := PageDarkHud.Surface;
  lblFlatIcons.Caption := 'Enable Custom Flat Icons';
  lblFlatIcons.Left := ScaleX(20);
  lblFlatIcons.Top := ScaleY(70);
  
  descFlatIcons := TNewStaticText.Create(PageDarkHud);
  descFlatIcons.Parent := PageDarkHud.Surface;
  descFlatIcons.WordWrap := True;
  descFlatIcons.Top := ScaleY(90);
  descFlatIcons.Width := PageWidescreenHud.SurfaceWidth;
  descFlatIcons.Caption := 'This option replaces Freelancer''s default icon set with new simpler flat-looking icons. If this option is disabled, you''ll get the HD vanilla icons instead.';
  
  FlatIcons := TCheckBox.Create(PageDarkHud);
  FlatIcons.Parent := PageDarkHud.Surface;
  FlatIcons.Top := ScaleY(70);

  
  // Fix clipping with 16:9 resolution planetscapes
  PagePlanetScape := CreateCustomPage(
    PageDarkHud.ID,
    'Fix clipping with 16:9 resolution planetscapes',
    'Check to install'
  );
  
  lblPlanetScape := TLabel.Create(PagePlanetScape);
  lblPlanetScape.Parent := PagePlanetScape.Surface;
  lblPlanetScape.Caption := 'Fix clipping with 16:9 resolution planetscapes';
  lblPlanetScape.Left := ScaleX(20);
  
  descPlanetScape := TNewStaticText.Create(PagePlanetScape);
  descPlanetScape.Parent := PagePlanetScape.Surface;
  descPlanetScape.WordWrap := True;
  descPlanetScape.Top := ScaleY(20);
  descPlanetScape.Width := PagePlanetScape.SurfaceWidth;
  descPlanetScape.Caption := 'Since Freelancer was never optimized for 16:9 resolutions, there are several inconsistencies with planetscapes that occur while viewing them in 16:9, such as clipping and geometry issues.' + #13#10 + #13#10 +
  'This mod gives you the option of fixing this, as it adjusts the camera values in the planetscapes so the issues are no longer visible in 16:9 resolutions.' + #13#10 + #13#10 +
  'Disable this option if you play in 4:3. Also please note that this option may yield strange results when using it with an ultrawide resolution.'
  
  PlanetScape := TCheckBox.Create(PagePlanetScape);
  PlanetScape.Parent := PagePlanetScape.Surface;
  PlanetScape.Checked := True;
  
  // Choose Graphics API
  PageGraphicsApi := CreateCustomPage(
    PagePlanetScape.ID,
    'Graphics API',
    'Choose the one that suits your needs'
  );

  descGraphicsApi := TNewStaticText.Create(PageGraphicsApi);
  descGraphicsApi.Parent := PageGraphicsApi.Surface;
  descGraphicsApi.WordWrap := True;
  descGraphicsApi.Width := PageGraphicsApi.SurfaceWidth;
  descGraphicsApi.Caption := 'This page allows you to choose the graphics API. If you have no idea what this means, just go with either the first or second option, since those offer additional graphics enhancements. If they are causing issues for you, go with the 3rd or 4th option.';
  
  lblDxWrapperGraphicsApi := TLabel.Create(PageGraphicsApi);
  lblDxWrapperGraphicsApi.Parent := PageGraphicsApi.Surface;
  lblDxWrapperGraphicsApi.Caption := 'DxWrapper + d3d8to9 (DirectX 9, recommended)';
  lblDxWrapperGraphicsApi.Left := ScaleX(20);
  lblDxWrapperGraphicsApi.Top := ScaleY(50);

  DxWrapperGraphicsApi := TRadioButton.Create(PageGraphicsApi);
  DxWrapperGraphicsApi.Parent := PageGraphicsApi.Surface;
  DxWrapperGraphicsApi.Checked := True;
  DxWrapperGraphicsApi.Top := ScaleY(50);

  descDxWrapperGraphicsApi := TNewStaticText.Create(PageGraphicsApi);
  descDxWrapperGraphicsApi.Parent := PageGraphicsApi.Surface;
  descDxWrapperGraphicsApi.WordWrap := True;
  descDxWrapperGraphicsApi.Top := ScaleY(65);
  descDxWrapperGraphicsApi.Width := PageGraphicsApi.SurfaceWidth;
  descDxWrapperGraphicsApi.Caption := 'Supports native Anti-Aliasing, Anisotropic Filtering, and ReShade.';

  lblDgVoodooGraphicsApi := TLabel.Create(PageGraphicsApi);
  lblDgVoodooGraphicsApi.Parent := PageGraphicsApi.Surface;
  lblDgVoodooGraphicsApi.Caption := 'dgVoodoo (DirectX 11, recommended)';
  lblDgVoodooGraphicsApi.Left := ScaleX(20);
  lblDgVoodooGraphicsApi.Top := ScaleY(90);

  DgVoodooGraphicsApi := TRadioButton.Create(PageGraphicsApi);
  DgVoodooGraphicsApi.Parent := PageGraphicsApi.Surface;
  DgVoodooGraphicsApi.Top := ScaleY(90);

  descDgVoodooGraphicsApi := TNewStaticText.Create(PageGraphicsApi);
  descDgVoodooGraphicsApi.Parent := PageGraphicsApi.Surface;
  descDgVoodooGraphicsApi.WordWrap := True;
  descDgVoodooGraphicsApi.Top := ScaleY(105);
  descDgVoodooGraphicsApi.Width := PageGraphicsApi.SurfaceWidth;
  descDgVoodooGraphicsApi.Caption := 'Fixes both lighting bugs on Win 10 and 11. Supports native Anti-Aliasing, Anisotropic Filtering, and ReShade. Not 100% stable, and requires manual refresh rate input.';

  lblVanillaGraphicsApi := TLabel.Create(PageGraphicsApi);
  lblVanillaGraphicsApi.Parent := PageGraphicsApi.Surface;
  lblVanillaGraphicsApi.Caption := 'Vanilla Freelancer (DirectX 8)';
  lblVanillaGraphicsApi.Left := ScaleX(20);
  lblVanillaGraphicsApi.Top := ScaleY(140);

  VanillaGraphicsApi := TRadioButton.Create(PageGraphicsApi);
  VanillaGraphicsApi.Parent := PageGraphicsApi.Surface;
  VanillaGraphicsApi.Top := ScaleY(140);

  descVanillaGraphicsApi := TNewStaticText.Create(PageGraphicsApi);
  descVanillaGraphicsApi.Parent := PageGraphicsApi.Surface;
  descVanillaGraphicsApi.WordWrap := True;
  descVanillaGraphicsApi.Top := ScaleY(155);
  descVanillaGraphicsApi.Width := PageGraphicsApi.SurfaceWidth;
  descVanillaGraphicsApi.Caption := 'Uses your PC''s default DirectX 8 API for Freelancer. You may experience compatibility issues (lighting bugs, micro stutters) when using it.';

  lblLightingFixGraphicsApi := TLabel.Create(PageGraphicsApi);
  lblLightingFixGraphicsApi.Parent := PageGraphicsApi.Surface;
  lblLightingFixGraphicsApi.Caption := 'Vanilla Freelancer + Lighting Bug Fix (DirectX 8)';
  lblLightingFixGraphicsApi.Left := ScaleX(20);
  lblLightingFixGraphicsApi.Top := ScaleY(190);

  LightingFixGraphicsApi := TRadioButton.Create(PageGraphicsApi);
  LightingFixGraphicsApi.Parent := PageGraphicsApi.Surface;
  LightingFixGraphicsApi.Top := ScaleY(190);

  descLightingFixGraphicsApi := TNewStaticText.Create(PageGraphicsApi);
  descLightingFixGraphicsApi.Parent := PageGraphicsApi.Surface;
  descLightingFixGraphicsApi.WordWrap := True;
  descLightingFixGraphicsApi.Top := ScaleY(205);
  descLightingFixGraphicsApi.Width := PageGraphicsApi.SurfaceWidth;
  descLightingFixGraphicsApi.Caption := 'About the same as the Vanilla Freelancer option but fixes the known major lighting bug. NOTE: This option only works on Windows 10 and 11!';
  
  // DxWrapper options
  DxWrapperPage := CreateCustomPage(
    PageGraphicsApi.ID,
    'DxWrapper options',
    'Choose additional graphics enhancements'
  );

  lblDxWrapperAa := TLabel.Create(DxWrapperPage);
  lblDxWrapperAa.Parent := DxWrapperPage.Surface;
  lblDxWrapperAa.Caption := 'Anti-Aliasing';
  
  DxWrapperAa := TComboBox.Create(DxWrapperPage);
  DxWrapperAa.Parent := DxWrapperPage.Surface;
  DxWrapperAa.Style := csDropDownList;
  DxWrapperAa.Items.Add('Off');
  DxWrapperAa.Items.Add('On (recommended)');
  DxWrapperAa.ItemIndex := 1;
  DxWrapperAa.Top := ScaleY(20);

  descDxWrapperAa := TNewStaticText.Create(DxWrapperPage);
  descDxWrapperAa.Parent := DxWrapperPage.Surface;
  descDxWrapperAa.WordWrap := True;
  descDxWrapperAa.Width := DxWrapperPage.SurfaceWidth;
  descDxWrapperAa.Caption := 'Anti-Aliasing removes jagged edges in-game, effectively making them appear smoother at a performance cost.';
  descDxWrapperAa.Top := ScaleY(45);

  lblDxWrapperAf := TLabel.Create(DxWrapperPage);
  lblDxWrapperAf.Parent := DxWrapperPage.Surface;
  lblDxWrapperAf.Caption := 'Anisotropic Filtering';
  lblDxWrapperAf.Top := ScaleY(95);
  
  DxWrapperAf := TComboBox.Create(DxWrapperPage);
  DxWrapperAf.Parent := DxWrapperPage.Surface;
  DxWrapperAf.Style := csDropDownList;
  DxWrapperAf.Items.Add('Off');
  DxWrapperAf.Items.Add('2x');
  DxWrapperAf.Items.Add('4x');
  DxWrapperAf.Items.Add('8x');
  DxWrapperAf.Items.Add('16x');
  DxWrapperAf.Items.Add('Auto (recommended)');
  DxWrapperAf.ItemIndex := 5;
  DxWrapperAf.Top := ScaleY(115);

  descDxWrapperAf := TNewStaticText.Create(DxWrapperPage);
  descDxWrapperAf.Parent := DxWrapperPage.Surface;
  descDxWrapperAf.WordWrap := True;
  descDxWrapperAf.Width := DxWrapperPage.SurfaceWidth;
  descDxWrapperAf.Caption := 'Anisotropic Filtering improves the quality of textures when viewing them from the side, with minimal performance overhead. "Auto" will automatically use the highest option your graphics card supports.';
  descDxWrapperAf.Top := ScaleY(140);

  // dgVoodoo options
  DgVoodooPage := CreateCustomPage(
    DxWrapperPage.ID,
    'dgVoodoo options',
    'Choose additional graphics enhancements'
  );

  lblDgVoodooAa := TLabel.Create(DgVoodooPage);
  lblDgVoodooAa.Parent := DgVoodooPage.Surface;
  lblDgVoodooAa.Caption := 'Anti-Aliasing';
  
  DgVoodooAa := TComboBox.Create(DgVoodooPage);
  DgVoodooAa.Parent := DgVoodooPage.Surface;
  DgVoodooAa.Style := csDropDownList;
  DgVoodooAa.Items.Add('Off');
  DgVoodooAa.Items.Add('2x');
  DgVoodooAa.Items.Add('4x');
  DgVoodooAa.Items.Add('8x (recommended)');;
  DgVoodooAa.ItemIndex := 3;
  DgVoodooAa.Top := ScaleY(20);

  descDgVoodooAa := TNewStaticText.Create(DgVoodooPage);
  descDgVoodooAa.Parent := DgVoodooPage.Surface;
  descDgVoodooAa.WordWrap := True;
  descDgVoodooAa.Width := DgVoodooPage.SurfaceWidth;
  descDgVoodooAa.Caption := 'Anti-Aliasing removes jagged edges in-game, effectively making them appear smoother at a performance cost.';
  descDgVoodooAa.Top := ScaleY(45);

  lblDgVoodooAf := TLabel.Create(DgVoodooPage);
  lblDgVoodooAf.Parent := DgVoodooPage.Surface;
  lblDgVoodooAf.Caption := 'Anisotropic Filtering';
  lblDgVoodooAf.Top := ScaleY(85);
  
  DgVoodooAf := TComboBox.Create(DgVoodooPage);
  DgVoodooAf.Parent := DgVoodooPage.Surface;
  DgVoodooAf.Style := csDropDownList;
  DgVoodooAf.Items.Add('Off');
  DgVoodooAf.Items.Add('2x');
  DgVoodooAf.Items.Add('4x');
  DgVoodooAf.Items.Add('8x');
  DgVoodooAf.Items.Add('16x (recommended)');
  DgVoodooAf.ItemIndex := 4;
  DgVoodooAf.Top := ScaleY(105);

  descDgVoodooAf := TNewStaticText.Create(DgVoodooPage);
  descDgVoodooAf.Parent := DgVoodooPage.Surface;
  descDgVoodooAf.WordWrap := True;
  descDgVoodooAf.Width := DgVoodooPage.SurfaceWidth;
  descDgVoodooAf.Caption := 'Anisotropic Filtering improves the quality of textures when viewing them from the side, with minimal performance overhead.';
  descDgVoodooAf.Top := ScaleY(130);

  lblDgVoodooRefreshRate := TLabel.Create(DgVoodooPage);
  lblDgVoodooRefreshRate.Parent := DgVoodooPage.Surface;
  lblDgVoodooRefreshRate.Caption := 'Refresh Rate';
  lblDgVoodooRefreshRate.Top := ScaleY(170);

  lblDgVoodooRefreshRateHz := TLabel.Create(DgVoodooPage);
  lblDgVoodooRefreshRateHz.Parent := DgVoodooPage.Surface;
  lblDgVoodooRefreshRateHz.Caption := 'Hz';
  lblDgVoodooRefreshRateHz.Top := ScaleY(193);
  lblDgVoodooRefreshRateHz.Left := ScaleX(125);
  
  DgVoodooRefreshRate := TNewEdit.Create(DgVoodooPage);
  DgVoodooRefreshRate.Parent := DgVoodooPage.Surface;;
  DgVoodooRefreshRate.Top := ScaleY(190);
  DgVoodooRefreshRate.Text := '60'; // TODO: Get user refresh rate automatically through Win api
  DgVoodooRefreshRate.OnKeyPress := @DigitFieldKeyPress;

  descDgVoodooRefreshRate := TNewStaticText.Create(DgVoodooPage);
  descDgVoodooRefreshRate.Parent := DgVoodooPage.Surface;
  descDgVoodooRefreshRate.WordWrap := True;
  descDgVoodooRefreshRate.Width := DgVoodooPage.SurfaceWidth;
  descDgVoodooRefreshRate.Caption := 'Enter your monitor''s refresh rate here. Freelancer will run at this refresh rate.';
  descDgVoodooRefreshRate.Top := ScaleY(215);

  // DxWrapper options #2
  DxWrapperPage2 := CreateCustomPage(
    DgVoodooPage.ID,
    'DxWrapper options #2',
    'Choose additional graphics enhancements'
  );

  lblDxWrapperReShade := TLabel.Create(DxWrapperPage2);
  lblDxWrapperReShade.Parent := DxWrapperPage2.Surface;
  lblDxWrapperReShade.Caption := 'Enable ReShade';
  lblDxWrapperReShade.Left := ScaleX(20);
  
  descDxWrapperReShade := TNewStaticText.Create(DxWrapperPage2);
  descDxWrapperReShade.Parent := DxWrapperPage2.Surface;
  descDxWrapperReShade.WordWrap := True;
  descDxWrapperReShade.Top := ScaleY(20);
  descDxWrapperReShade.Width := DxWrapperPage2.SurfaceWidth;
  descDxWrapperReShade.Caption := 'This option enables ReShade, which allows for the use of various post-processing effects to improve the game''s appearance. If it has been enabled, the configuration below can always be adjusted by pressing the ''Home'' key in-game.'
  
  DxWrapperReShade := TCheckBox.Create(DxWrapperPage2);
  DxWrapperReShade.Parent := DxWrapperPage2.Surface;
  DxWrapperReShade.Checked := True;

  lblDxWrapperSaturation := TLabel.Create(DxWrapperPage2);
  lblDxWrapperSaturation.Parent := DxWrapperPage2.Surface;
  lblDxWrapperSaturation.Caption := 'Add increased saturation';
  lblDxWrapperSaturation.Left := ScaleX(20);
  lblDxWrapperSaturation.Top := ScaleY(90);
  
  descDxWrapperSaturation := TNewStaticText.Create(DxWrapperPage2);
  descDxWrapperSaturation.Parent := DxWrapperPage2.Surface;
  descDxWrapperSaturation.WordWrap := True;
  descDxWrapperSaturation.Top := ScaleY(110);
  descDxWrapperSaturation.Width := DxWrapperPage2.SurfaceWidth;
  descDxWrapperSaturation.Caption := 'Simply gives Freelancer a slightly more-saturated look.'
  
  DxWrapperSaturation := TCheckBox.Create(DxWrapperPage2);
  DxWrapperSaturation.Parent := DxWrapperPage2.Surface;
  DxWrapperSaturation.Checked := True;
  DxWrapperSaturation.Top := ScaleY(90);

  lblDxWrapperHdr := TLabel.Create(DxWrapperPage2);
  lblDxWrapperHdr.Parent := DxWrapperPage2.Surface;
  lblDxWrapperHdr.Caption := 'Add Fake HDR (High Dynamic Range)';
  lblDxWrapperHdr.Left := ScaleX(20);
  lblDxWrapperHdr.Top := ScaleY(140);
  
  descDxWrapperHdr := TNewStaticText.Create(DxWrapperPage2);
  descDxWrapperHdr.Parent := DxWrapperPage2.Surface;
  descDxWrapperHdr.WordWrap := True;
  descDxWrapperHdr.Top := ScaleY(160);
  descDxWrapperHdr.Width := DxWrapperPage2.SurfaceWidth;
  descDxWrapperHdr.Caption := 'Makes darker areas a bit darker, and brighter areas a bit brighter.'
  
  DxWrapperHdr := TCheckBox.Create(DxWrapperPage2);
  DxWrapperHdr.Parent := DxWrapperPage2.Surface;
  DxWrapperHdr.Top := ScaleY(140);

  lblDxWrapperBloom := TLabel.Create(DxWrapperPage2);
  lblDxWrapperBloom.Parent := DxWrapperPage2.Surface;
  lblDxWrapperBloom.Caption := 'Add Bloom';
  lblDxWrapperBloom.Left := ScaleX(20);
  lblDxWrapperBloom.Top := ScaleY(190);
  
  descDxWrapperBloom := TNewStaticText.Create(DxWrapperPage2);
  descDxWrapperBloom.Parent := DxWrapperPage2.Surface;
  descDxWrapperBloom.WordWrap := True;
  descDxWrapperBloom.Top := ScaleY(210);
  descDxWrapperBloom.Width := DxWrapperPage2.SurfaceWidth;
  descDxWrapperBloom.Caption := 'Adds glow to brighter areas. May reduce detail.'
  
  DxWrapperBloom := TCheckBox.Create(DxWrapperPage2);
  DxWrapperBloom.Parent := DxWrapperPage2.Surface;
  DxWrapperBloom.Top := ScaleY(190);

  // dgVoodoo options #2
  DgVoodooPage2 := CreateCustomPage(
    DxWrapperPage2.ID,
    'dgVoodoo options #2',
    'Choose additional graphics enhancements'
  );

  lblDgVoodooReShade := TLabel.Create(DgVoodooPage2);
  lblDgVoodooReShade.Parent := DgVoodooPage2.Surface;
  lblDgVoodooReShade.Caption := 'Enable ReShade';
  lblDgVoodooReShade.Left := ScaleX(20);
  
  descDgVoodooReShade := TNewStaticText.Create(DgVoodooPage2);
  descDgVoodooReShade.Parent := DgVoodooPage2.Surface;
  descDgVoodooReShade.WordWrap := True;
  descDgVoodooReShade.Top := ScaleY(20);
  descDgVoodooReShade.Width := DxWrapperPage2.SurfaceWidth;
  descDgVoodooReShade.Caption := 'This option enables ReShade, which allows for the use of various post-processing effects to improve the game''s appearance. If it has been enabled, the configuration below can always be adjusted by pressing the ''Home'' key in-game.'
  
  DgVoodooReShade := TCheckBox.Create(DgVoodooPage2);
  DgVoodooReShade.Parent := DgVoodooPage2.Surface;
  DgVoodooReShade.Checked := True;

  lblDgVoodooSaturation := TLabel.Create(DgVoodooPage2);
  lblDgVoodooSaturation.Parent := DgVoodooPage2.Surface;
  lblDgVoodooSaturation.Caption := 'Add increased saturation';
  lblDgVoodooSaturation.Left := ScaleX(20);
  lblDgVoodooSaturation.Top := ScaleY(90);
  
  descDgVoodooSaturation := TNewStaticText.Create(DgVoodooPage2);
  descDgVoodooSaturation.Parent := DgVoodooPage2.Surface;
  descDgVoodooSaturation.WordWrap := True;
  descDgVoodooSaturation.Top := ScaleY(110);
  descDgVoodooSaturation.Width := DgVoodooPage2.SurfaceWidth;
  descDgVoodooSaturation.Caption := 'Simply gives Freelancer a slightly more-saturated look.'
  
  DgVoodooSaturation := TCheckBox.Create(DgVoodooPage2);
  DgVoodooSaturation.Parent := DgVoodooPage2.Surface;
  DgVoodooSaturation.Checked := True;
  DgVoodooSaturation.Top := ScaleY(90);

  lblDgVoodooHdr := TLabel.Create(DgVoodooPage2);
  lblDgVoodooHdr.Parent := DgVoodooPage2.Surface;
  lblDgVoodooHdr.Caption := 'Add Fake HDR (High Dynamic Range)';
  lblDgVoodooHdr.Left := ScaleX(20);
  lblDgVoodooHdr.Top := ScaleY(140);
  
  descDgVoodooHdr := TNewStaticText.Create(DgVoodooPage2);
  descDgVoodooHdr.Parent := DgVoodooPage2.Surface;
  descDgVoodooHdr.WordWrap := True;
  descDgVoodooHdr.Top := ScaleY(160);
  descDgVoodooHdr.Width := DgVoodooPage2.SurfaceWidth;
  descDgVoodooHdr.Caption := 'Makes darker areas a bit darker, and brighter areas a bit brighter.'
  
  DgVoodooHdr := TCheckBox.Create(DgVoodooPage2);
  DgVoodooHdr.Parent := DgVoodooPage2.Surface;
  DgVoodooHdr.Top := ScaleY(140);

  lblDgVoodooBloom := TLabel.Create(DgVoodooPage2);
  lblDgVoodooBloom.Parent := DgVoodooPage2.Surface;
  lblDgVoodooBloom.Caption := 'Add Bloom';
  lblDgVoodooBloom.Left := ScaleX(20);
  lblDgVoodooBloom.Top := ScaleY(190);
  
  descDgVoodooBloom := TNewStaticText.Create(DgVoodooPage2);
  descDgVoodooBloom.Parent := DgVoodooPage2.Surface;
  descDgVoodooBloom.WordWrap := True;
  descDgVoodooBloom.Top := ScaleY(210);
  descDgVoodooBloom.Width := DxWrapperPage2.SurfaceWidth;
  descDgVoodooBloom.Caption := 'Adds glow to brighter areas. May reduce detail.'
  
  DgVoodooBloom := TCheckBox.Create(DgVoodooPage2);
  DgVoodooBloom.Parent := DgVoodooPage2.Surface;
  DgVoodooBloom.Top := ScaleY(190);

  // Add improved reflections
  PageEffects := CreateCustomPage(
    DgVoodooPage2.ID,
    'Add improved effects',
    'Check to install'
  );
  
  lblVanillaReflections := TLabel.Create(PageEffects);
  lblVanillaReflections.Parent := PageEffects.Surface;
  lblVanillaReflections.Caption := 'Use vanilla reflections';
  lblVanillaReflections.Left := ScaleX(20);
  
  VanillaReflections := TRadioButton.Create(PageEffects);
  VanillaReflections.Parent := PageEffects.Surface;
  
  lblShinyReflections := TLabel.Create(PageEffects);
  lblShinyReflections.Parent := PageEffects.Surface;
  lblShinyReflections.Caption := 'Use shiny reflections (recommended)';
  lblShinyReflections.Left := ScaleX(20);
  lblShinyReflections.Top := ScaleY(20);
  
  ShinyReflections := TRadioButton.Create(PageEffects);
  ShinyReflections.Parent := PageEffects.Surface;
  ShinyReflections.Top := ScaleY(20);
  ShinyReflections.Checked := True;
  
  lblShiniestReflections := TLabel.Create(PageEffects);
  lblShiniestReflections.Parent := PageEffects.Surface;
  lblShiniestReflections.Caption := 'Use shiniest reflections';
  lblShiniestReflections.Left := ScaleX(20);
  lblShiniestReflections.Top := ScaleY(40);
  
  ShiniestReflections := TRadioButton.Create(PageEffects);
  ShiniestReflections.Parent := PageEffects.Surface;
  ShiniestReflections.Top := ScaleY(40);
  
  descReflections := TNewStaticText.Create(PageEffects);
  descReflections.Parent := PageEffects.Surface;
  descReflections.WordWrap := True;
  descReflections.Width := PageEffects.SurfaceWidth;
  descReflections.Caption := 'This option changes the way light reflects off ships, bases, etc. The shiny option is recommended since vanilla looks quite dull. Shiniest on the other hand makes all surfaces very reflective, which most users may not like.';
  descReflections.Top := ScaleY(60);
  
  // Add new missile effects
  lblMissleEffects := TLabel.Create(PageEffects);
  lblMissleEffects.Parent := PageEffects.Surface;
  lblMissleEffects.Caption := 'Add alternative missile and torpedo effects';
  lblMissleEffects.Top := ScaleY(120);
  lblMissleEffects.Left := ScaleX(20);
  
  descMissileEffects := TNewStaticText.Create(PageEffects);
  descMissileEffects.Parent := PageEffects.Surface;
  descMissileEffects.WordWrap := True;
  descMissileEffects.Top := ScaleY(140);
  descMissileEffects.Width := PageEffects.SurfaceWidth;
  descMissileEffects.Caption := 'This option adds custom missile and torpedo effects. They''re not necessarily higher quality, just alternatives. This option also make torpedoes look massive.';
  
  MissileEffects := TCheckBox.Create(PageEffects);
  MissileEffects.Parent := PageEffects.Surface;
  MissileEffects.Top := ScaleY(120);
  
  // Add player ship engine trails
  lblEngineTrails := TLabel.Create(PageEffects);
  lblEngineTrails.Parent := PageEffects.Surface;
  lblEngineTrails.Caption := 'Add player ship engine trails';
  lblEngineTrails.Top := ScaleY(180);
  lblEngineTrails.Left := ScaleX(20);
  
  descEngineTrails := TNewStaticText.Create(PageEffects);
  descEngineTrails.Parent := PageEffects.Surface;
  descEngineTrails.WordWrap := True;
  descEngineTrails.Top := ScaleY(200);
  descEngineTrails.Width := PageEffects.SurfaceWidth;
  descEngineTrails.Caption := 'In vanilla Freelancer, NPC ships have engine trials while player ships don''t. This option adds engine trails to all player ships.';
  
  EngineTrails := TCheckBox.Create(PageEffects);
  EngineTrails.Parent := PageEffects.Surface;
  EngineTrails.Top := ScaleY(180);
  EngineTrails.Checked := True;

  // Draw distances
  PageDrawDistances := CreateInputOptionPage(PageEffects.ID,
  'Set Draw Distances', 'Check to install',
  'This option sets the draw distances scale; changing it to a higher value allows you to see things in space from further away. 1x will give you the same draw distances as vanilla Freelancer. Every option after that scales the vanilla values by a multiplier (2x, 3x, etc). The Maximized option sets all draw distances to the highest possible values, which includes the jump hole visibility distances.',
  True, False);
  PageDrawDistances.Add('1x (Vanilla)');
  PageDrawDistances.Add('2x');
  PageDrawDistances.Add('3x');
  PageDrawDistances.Add('4x');
  PageDrawDistances.Add('5x');
  PageDrawDistances.Add('6x');
  PageDrawDistances.Add('7x');
  PageDrawDistances.Add('8x');
  PageDrawDistances.Add('Maximized (recommended)');
  PageDrawDistances.Values[8] := True;

  // Skips
  PageSkips := CreateCustomPage(
    PageDrawDistances.ID,
    'Skippable options',
    'Want to save time?'
  );

  // Skip intros
  lblJumpTunnel10Sec := TLabel.Create(PageSkips);
  lblJumpTunnel10Sec.Parent := PageSkips.Surface;
  lblJumpTunnel10Sec.Caption := '10 second jump tunnels (Vanilla)';
  lblJumpTunnel10Sec.Left := ScaleX(20);
  
  JumpTunnel10Sec := TRadioButton.Create(PageSkips);
  JumpTunnel10Sec.Parent := PageSkips.Surface;
  
  lblJumpTunnel5Sec := TLabel.Create(PageSkips);
  lblJumpTunnel5Sec.Parent := PageSkips.Surface;
  lblJumpTunnel5Sec.Caption := '5 second jump tunnels';
  lblJumpTunnel5Sec.Left := ScaleX(20);
  lblJumpTunnel5Sec.Top := ScaleY(20);
  
  JumpTunnel5Sec := TRadioButton.Create(PageSkips);
  JumpTunnel5Sec.Parent := PageSkips.Surface;
  JumpTunnel5Sec.Top := ScaleY(20);
  JumpTunnel5Sec.Checked := True;
  
  lblJumpTunnel2Sec := TLabel.Create(PageSkips);
  lblJumpTunnel2Sec.Parent := PageSkips.Surface;
  lblJumpTunnel2Sec.Caption := '2.5 second jump tunnels';
  lblJumpTunnel2Sec.Left := ScaleX(20);
  lblJumpTunnel2Sec.Top := ScaleY(40);
  
  JumpTunnel2Sec := TRadioButton.Create(PageSkips);
  JumpTunnel2Sec.Parent := PageSkips.Surface;
  JumpTunnel2Sec.Top := ScaleY(40);

  lblJumpTunnelSkip := TLabel.Create(PageSkips);
  lblJumpTunnelSkip.Parent := PageSkips.Surface;
  lblJumpTunnelSkip.Caption := '0 second jump tunnels (skip them entirely)';
  lblJumpTunnelSkip.Left := ScaleX(20);
  lblJumpTunnelSkip.Top := ScaleY(60);
  
  JumpTunnelSkip := TRadioButton.Create(PageSkips);
  JumpTunnelSkip.Parent := PageSkips.Surface;
  JumpTunnelSkip.Top := ScaleY(60)
  
  descJumpTunnelDuration := TNewStaticText.Create(PageSkips);
  descJumpTunnelDuration.Parent := PageSkips.Surface;
  descJumpTunnelDuration.WordWrap := True;
  descJumpTunnelDuration.Width := PageSkips.SurfaceWidth;
  descJumpTunnelDuration.Caption := 'This option allows you to change the duration of the jump tunnels which you go through when using any jump hole or jump gate.';
  descJumpTunnelDuration.Top := ScaleY(80);
  
  // Jump tunnel duration
  lblSkipIntros := TLabel.Create(PageSkips);
  lblSkipIntros.Parent := PageSkips.Surface;
  lblSkipIntros.Caption := 'Skip startup intros';
  lblSkipIntros.Top := ScaleY(160);
  lblSkipIntros.Left := ScaleX(20);
  
  descSkipIntros := TNewStaticText.Create(PageSkips);
  descSkipIntros.Parent := PageSkips.Surface;
  descSkipIntros.WordWrap := True;
  descSkipIntros.Top := ScaleY(180);
  descSkipIntros.Width := PageSkips.SurfaceWidth;
  descSkipIntros.Caption := 'This option skips the 3 movies that play when the game starts, which include the Microsoft logo, Digital Anvil logo, and Freelancer intro.';
  
  SkipIntros := TCheckBox.Create(PageSkips);
  SkipIntros.Parent := PageSkips.Surface;
  SkipIntros.Top := ScaleY(160);
  SkipIntros.Checked := True;
  
  // Single Player Command Console
  PageSinglePlayerConsole := CreateCustomPage(
    PageSkips.ID,
    'Single Player Command Console',
    'Check to install'
  );
  
  lblSinglePlayer := TLabel.Create(PageSinglePlayerConsole);
  lblSinglePlayer.Parent := PageSinglePlayerConsole.Surface;
  lblSinglePlayer.Caption := 'Single Player Command Console';
  lblSinglePlayer.Left := ScaleX(20);
  
  descSinglePlayer := TNewStaticText.Create(PageSinglePlayerConsole);
  descSinglePlayer.Parent := PageSinglePlayerConsole.Surface;
  descSinglePlayer.WordWrap := True;
  descSinglePlayer.Top := ScaleY(20);
  descSinglePlayer.Width := PageSinglePlayerConsole.SurfaceWidth;
  descSinglePlayer.Caption := 'This option provides various console commands in Single Player to directly manipulate the environment. It also allows players to own more than one ship. To use it, press Enter while in-game and type "help" for a list of available commands.';
  
  SinglePlayer := TCheckBox.Create(PageSinglePlayerConsole);
  SinglePlayer.Parent := PageSinglePlayerConsole.Surface;
  SinglePlayer.Checked := True;

  with DxWrapperPage do
  begin
    OnShouldSkipPage := @PageHandler_ShouldSkipPage;
  end;

  with DgVoodooPage do
  begin
    OnShouldSkipPage := @PageHandler_ShouldSkipPage;
  end;

  with DxWrapperPage2 do
  begin
    OnShouldSkipPage := @PageHandler_ShouldSkipPage;
  end;

  with DgVoodooPage2 do
  begin
    OnShouldSkipPage := @PageHandler_ShouldSkipPage;
  end;

  with DxWrapperReShade do
  begin
    OnClick := @DxWrapperReShadeCheckBoxClick;
  end;

  with DgVoodooReShade do
  begin
    OnClick := @DgVoodooReShadeCheckBoxClick;
  end;
end;
